package org.apache.mina.filter.executor;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.mina.core.session.AttributeKey;
import org.apache.mina.core.session.DummySession;
import org.apache.mina.core.session.IoEvent;
import org.apache.mina.core.session.IoSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/* loaded from: classes2.dex */
public class OrderedThreadPoolExecutor extends ThreadPoolExecutor {
    private static final int DEFAULT_INITIAL_THREAD_POOL_SIZE = 0;
    private static final int DEFAULT_KEEP_ALIVE = 30;
    private static final int DEFAULT_MAX_THREAD_POOL = 16;
    private final AttributeKey TASKS_QUEUE;
    private long completedTaskCount;
    private final IoEventQueueHandler eventQueueHandler;
    private final AtomicInteger idleWorkers;
    private volatile int largestPoolSize;
    private volatile boolean shutdown;
    private final BlockingQueue<IoSession> waitingSessions;
    private final Set<Worker> workers;
    private static final Logger LOGGER = LoggerFactory.getLogger(OrderedThreadPoolExecutor.class);
    private static final IoSession EXIT_SIGNAL = new DummySession();

    public OrderedThreadPoolExecutor() {
        this(0, 16, 30L, TimeUnit.SECONDS, Executors.defaultThreadFactory(), null);
    }

    public OrderedThreadPoolExecutor(int maximumPoolSize) {
        this(0, maximumPoolSize, 30L, TimeUnit.SECONDS, Executors.defaultThreadFactory(), null);
    }

    public OrderedThreadPoolExecutor(int corePoolSize, int maximumPoolSize) {
        this(corePoolSize, maximumPoolSize, 30L, TimeUnit.SECONDS, Executors.defaultThreadFactory(), null);
    }

    public OrderedThreadPoolExecutor(int corePoolSize, int maximumPoolSize, long keepAliveTime, TimeUnit unit) {
        this(corePoolSize, maximumPoolSize, keepAliveTime, unit, Executors.defaultThreadFactory(), null);
    }

    public OrderedThreadPoolExecutor(int corePoolSize, int maximumPoolSize, long keepAliveTime, TimeUnit unit, IoEventQueueHandler eventQueueHandler) {
        this(corePoolSize, maximumPoolSize, keepAliveTime, unit, Executors.defaultThreadFactory(), eventQueueHandler);
    }

    public OrderedThreadPoolExecutor(int corePoolSize, int maximumPoolSize, long keepAliveTime, TimeUnit unit, ThreadFactory threadFactory) {
        this(corePoolSize, maximumPoolSize, keepAliveTime, unit, threadFactory, null);
    }

    public OrderedThreadPoolExecutor(int corePoolSize, int maximumPoolSize, long keepAliveTime, TimeUnit unit, ThreadFactory threadFactory, IoEventQueueHandler eventQueueHandler) {
        super(0, 1, keepAliveTime, unit, new SynchronousQueue(), threadFactory, new ThreadPoolExecutor.AbortPolicy());
        this.TASKS_QUEUE = new AttributeKey(getClass(), "tasksQueue");
        this.waitingSessions = new LinkedBlockingQueue();
        this.workers = new HashSet();
        this.idleWorkers = new AtomicInteger();
        if (corePoolSize < 0) {
            throw new IllegalArgumentException("corePoolSize: " + corePoolSize);
        }
        if (maximumPoolSize == 0 || maximumPoolSize < corePoolSize) {
            throw new IllegalArgumentException("maximumPoolSize: " + maximumPoolSize);
        }
        super.setCorePoolSize(corePoolSize);
        super.setMaximumPoolSize(maximumPoolSize);
        if (eventQueueHandler == null) {
            this.eventQueueHandler = IoEventQueueHandler.NOOP;
        } else {
            this.eventQueueHandler = eventQueueHandler;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SessionTasksQueue getSessionTasksQueue(IoSession session) {
        SessionTasksQueue queue = (SessionTasksQueue) session.getAttribute(this.TASKS_QUEUE);
        if (queue == null) {
            SessionTasksQueue queue2 = new SessionTasksQueue();
            SessionTasksQueue oldQueue = (SessionTasksQueue) session.setAttributeIfAbsent(this.TASKS_QUEUE, queue2);
            if (oldQueue != null) {
                return oldQueue;
            }
            return queue2;
        }
        return queue;
    }

    public IoEventQueueHandler getQueueHandler() {
        return this.eventQueueHandler;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void setRejectedExecutionHandler(RejectedExecutionHandler handler) {
    }

    private void addWorker() {
        synchronized (this.workers) {
            if (this.workers.size() < super.getMaximumPoolSize()) {
                Worker worker = new Worker();
                Thread thread = getThreadFactory().newThread(worker);
                this.idleWorkers.incrementAndGet();
                thread.start();
                this.workers.add(worker);
                if (this.workers.size() > this.largestPoolSize) {
                    this.largestPoolSize = this.workers.size();
                }
            }
        }
    }

    private void addWorkerIfNecessary() {
        if (this.idleWorkers.get() == 0) {
            synchronized (this.workers) {
                if (this.workers.isEmpty() || this.idleWorkers.get() == 0) {
                    addWorker();
                }
            }
        }
    }

    private void removeWorker() {
        synchronized (this.workers) {
            if (this.workers.size() > super.getCorePoolSize()) {
                this.waitingSessions.offer(EXIT_SIGNAL);
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public int getMaximumPoolSize() {
        return super.getMaximumPoolSize();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void setMaximumPoolSize(int maximumPoolSize) {
        if (maximumPoolSize <= 0 || maximumPoolSize < super.getCorePoolSize()) {
            throw new IllegalArgumentException("maximumPoolSize: " + maximumPoolSize);
        }
        synchronized (this.workers) {
            super.setMaximumPoolSize(maximumPoolSize);
            for (int difference = this.workers.size() - maximumPoolSize; difference > 0; difference--) {
                removeWorker();
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public boolean awaitTermination(long timeout, TimeUnit unit) throws InterruptedException {
        long deadline = System.currentTimeMillis() + unit.toMillis(timeout);
        synchronized (this.workers) {
            while (!isTerminated()) {
                long waitTime = deadline - System.currentTimeMillis();
                if (waitTime <= 0) {
                    break;
                }
                this.workers.wait(waitTime);
            }
        }
        return isTerminated();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.shutdown;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        boolean isEmpty;
        if (!this.shutdown) {
            return false;
        }
        synchronized (this.workers) {
            isEmpty = this.workers.isEmpty();
        }
        return isEmpty;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public void shutdown() {
        if (!this.shutdown) {
            this.shutdown = true;
            synchronized (this.workers) {
                for (int i = this.workers.size(); i > 0; i--) {
                    this.waitingSessions.offer(EXIT_SIGNAL);
                }
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        shutdown();
        List<Runnable> answer = new ArrayList<>();
        while (true) {
            IoSession session = this.waitingSessions.poll();
            if (session != null) {
                if (session == EXIT_SIGNAL) {
                    this.waitingSessions.offer(EXIT_SIGNAL);
                    Thread.yield();
                } else {
                    SessionTasksQueue sessionTasksQueue = (SessionTasksQueue) session.getAttribute(this.TASKS_QUEUE);
                    synchronized (sessionTasksQueue.tasksQueue) {
                        for (Runnable task : sessionTasksQueue.tasksQueue) {
                            getQueueHandler().polled(this, (IoEvent) task);
                            answer.add(task);
                        }
                        sessionTasksQueue.tasksQueue.clear();
                    }
                }
            } else {
                return answer;
            }
        }
    }

    private void print(Queue<Runnable> queue, IoEvent event) {
        StringBuilder sb = new StringBuilder();
        sb.append("Adding event ").append(event.getType()).append(" to session ").append(event.getSession().getId());
        boolean first = true;
        sb.append("\nQueue : [");
        for (Runnable elem : queue) {
            if (first) {
                first = false;
            } else {
                sb.append(", ");
            }
            sb.append(((IoEvent) elem).getType()).append(", ");
        }
        sb.append("]\n");
        LOGGER.debug(sb.toString());
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable task) {
        boolean offerSession;
        if (this.shutdown) {
            rejectTask(task);
        }
        checkTaskType(task);
        IoEvent event = (IoEvent) task;
        IoSession session = event.getSession();
        SessionTasksQueue sessionTasksQueue = getSessionTasksQueue(session);
        Queue<Runnable> tasksQueue = sessionTasksQueue.tasksQueue;
        boolean offerEvent = this.eventQueueHandler.accept(this, event);
        if (offerEvent) {
            synchronized (tasksQueue) {
                tasksQueue.offer(event);
                if (!sessionTasksQueue.processingCompleted) {
                    offerSession = false;
                } else {
                    sessionTasksQueue.processingCompleted = false;
                    offerSession = true;
                }
                if (LOGGER.isDebugEnabled()) {
                    print(tasksQueue, event);
                }
            }
        } else {
            offerSession = false;
        }
        if (offerSession) {
            this.waitingSessions.offer(session);
        }
        addWorkerIfNecessary();
        if (offerEvent) {
            this.eventQueueHandler.offered(this, event);
        }
    }

    private void rejectTask(Runnable task) {
        getRejectedExecutionHandler().rejectedExecution(task, this);
    }

    private void checkTaskType(Runnable task) {
        if (!(task instanceof IoEvent)) {
            throw new IllegalArgumentException("task must be an IoEvent or its subclass.");
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public int getActiveCount() {
        int size;
        synchronized (this.workers) {
            size = this.workers.size() - this.idleWorkers.get();
        }
        return size;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public long getCompletedTaskCount() {
        long answer;
        synchronized (this.workers) {
            answer = this.completedTaskCount;
            for (Worker w : this.workers) {
                answer += w.completedTaskCount.get();
            }
        }
        return answer;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public int getLargestPoolSize() {
        return this.largestPoolSize;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public int getPoolSize() {
        int size;
        synchronized (this.workers) {
            size = this.workers.size();
        }
        return size;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public long getTaskCount() {
        return getCompletedTaskCount();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public boolean isTerminating() {
        boolean z;
        synchronized (this.workers) {
            z = isShutdown() && !isTerminated();
        }
        return z;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public int prestartAllCoreThreads() {
        int answer = 0;
        synchronized (this.workers) {
            for (int i = super.getCorePoolSize() - this.workers.size(); i > 0; i--) {
                addWorker();
                answer++;
            }
        }
        return answer;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public boolean prestartCoreThread() {
        boolean z;
        synchronized (this.workers) {
            if (this.workers.size() < super.getCorePoolSize()) {
                addWorker();
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public BlockingQueue<Runnable> getQueue() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void purge() {
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public boolean remove(Runnable task) {
        boolean removed;
        checkTaskType(task);
        IoEvent event = (IoEvent) task;
        IoSession session = event.getSession();
        SessionTasksQueue sessionTasksQueue = (SessionTasksQueue) session.getAttribute(this.TASKS_QUEUE);
        if (sessionTasksQueue == null) {
            return false;
        }
        Queue<Runnable> tasksQueue = sessionTasksQueue.tasksQueue;
        synchronized (tasksQueue) {
            removed = tasksQueue.remove(task);
        }
        if (removed) {
            getQueueHandler().polled(this, event);
            return removed;
        }
        return removed;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public int getCorePoolSize() {
        return super.getCorePoolSize();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void setCorePoolSize(int corePoolSize) {
        if (corePoolSize < 0) {
            throw new IllegalArgumentException("corePoolSize: " + corePoolSize);
        }
        if (corePoolSize > super.getMaximumPoolSize()) {
            throw new IllegalArgumentException("corePoolSize exceeds maximumPoolSize");
        }
        synchronized (this.workers) {
            if (super.getCorePoolSize() > corePoolSize) {
                for (int i = super.getCorePoolSize() - corePoolSize; i > 0; i--) {
                    removeWorker();
                }
            }
            super.setCorePoolSize(corePoolSize);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class Worker implements Runnable {
        private AtomicLong completedTaskCount;
        private Thread thread;

        private Worker() {
            this.completedTaskCount = new AtomicLong(0L);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
            r8.this$0.workers.remove(r8);
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            this.thread = Thread.currentThread();
            while (true) {
                try {
                    IoSession session = fetchSession();
                    OrderedThreadPoolExecutor.this.idleWorkers.decrementAndGet();
                    if (session == null) {
                        synchronized (OrderedThreadPoolExecutor.this.workers) {
                            if (OrderedThreadPoolExecutor.this.workers.size() > OrderedThreadPoolExecutor.this.getCorePoolSize()) {
                                break;
                            }
                        }
                    }
                    if (session == OrderedThreadPoolExecutor.EXIT_SIGNAL) {
                        break;
                    }
                    if (session != null) {
                        runTasks(OrderedThreadPoolExecutor.this.getSessionTasksQueue(session));
                    }
                    OrderedThreadPoolExecutor.this.idleWorkers.incrementAndGet();
                } catch (Throwable th) {
                    synchronized (OrderedThreadPoolExecutor.this.workers) {
                        OrderedThreadPoolExecutor.this.workers.remove(this);
                        OrderedThreadPoolExecutor.this.completedTaskCount += this.completedTaskCount.get();
                        OrderedThreadPoolExecutor.this.workers.notifyAll();
                        throw th;
                    }
                }
            }
            synchronized (OrderedThreadPoolExecutor.this.workers) {
                OrderedThreadPoolExecutor.this.workers.remove(this);
                OrderedThreadPoolExecutor.this.completedTaskCount += this.completedTaskCount.get();
                OrderedThreadPoolExecutor.this.workers.notifyAll();
            }
        }

        private IoSession fetchSession() {
            IoSession session = null;
            long currentTime = System.currentTimeMillis();
            long deadline = currentTime + OrderedThreadPoolExecutor.this.getKeepAliveTime(TimeUnit.MILLISECONDS);
            while (true) {
                long waitTime = deadline - currentTime;
                if (waitTime <= 0) {
                    break;
                }
                try {
                    session = (IoSession) OrderedThreadPoolExecutor.this.waitingSessions.poll(waitTime, TimeUnit.MILLISECONDS);
                    if (session != null) {
                        break;
                    }
                    currentTime = System.currentTimeMillis();
                    break;
                } catch (InterruptedException e) {
                }
            }
            return session;
        }

        private void runTasks(SessionTasksQueue sessionTasksQueue) {
            Runnable task;
            while (true) {
                Queue<Runnable> tasksQueue = sessionTasksQueue.tasksQueue;
                synchronized (tasksQueue) {
                    task = tasksQueue.poll();
                    if (task == null) {
                        sessionTasksQueue.processingCompleted = true;
                        return;
                    }
                }
                OrderedThreadPoolExecutor.this.eventQueueHandler.polled(OrderedThreadPoolExecutor.this, (IoEvent) task);
                runTask(task);
            }
        }

        private void runTask(Runnable task) {
            OrderedThreadPoolExecutor.this.beforeExecute(this.thread, task);
            boolean ran = false;
            try {
                task.run();
                ran = true;
                OrderedThreadPoolExecutor.this.afterExecute(task, null);
                this.completedTaskCount.incrementAndGet();
            } catch (RuntimeException e) {
                if (!ran) {
                    OrderedThreadPoolExecutor.this.afterExecute(task, e);
                }
                throw e;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class SessionTasksQueue {
        private boolean processingCompleted;
        private final Queue<Runnable> tasksQueue;

        private SessionTasksQueue() {
            this.tasksQueue = new ConcurrentLinkedQueue();
            this.processingCompleted = true;
        }
    }
}
