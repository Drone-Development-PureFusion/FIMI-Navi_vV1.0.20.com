package p021rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Scheduler;
import p021rx.Subscription;
import p021rx.functions.Action0;
import p021rx.internal.util.RxThreadFactory;
import p021rx.internal.util.SubscriptionList;
import p021rx.subscriptions.CompositeSubscription;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.schedulers.EventLoopsScheduler */
/* loaded from: classes2.dex */
public class EventLoopsScheduler extends Scheduler implements SchedulerLifecycle {
    static final String KEY_MAX_THREADS = "rx.scheduler.max-computation-threads";
    static final int MAX_THREADS;
    static final FixedSchedulerPool NONE;
    static final PoolWorker SHUTDOWN_WORKER;
    final AtomicReference<FixedSchedulerPool> pool = new AtomicReference<>(NONE);
    private static final String THREAD_NAME_PREFIX = "RxComputationThreadPool-";
    static final RxThreadFactory THREAD_FACTORY = new RxThreadFactory(THREAD_NAME_PREFIX);

    static {
        int max;
        int maxThreads = Integer.getInteger(KEY_MAX_THREADS, 0).intValue();
        int ncpu = Runtime.getRuntime().availableProcessors();
        if (maxThreads <= 0 || maxThreads > ncpu) {
            max = ncpu;
        } else {
            max = maxThreads;
        }
        MAX_THREADS = max;
        SHUTDOWN_WORKER = new PoolWorker(new RxThreadFactory("RxComputationShutdown-"));
        SHUTDOWN_WORKER.unsubscribe();
        NONE = new FixedSchedulerPool(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.schedulers.EventLoopsScheduler$FixedSchedulerPool */
    /* loaded from: classes2.dex */
    public static final class FixedSchedulerPool {
        final int cores;
        final PoolWorker[] eventLoops;

        /* renamed from: n */
        long f1538n;

        FixedSchedulerPool(int maxThreads) {
            this.cores = maxThreads;
            this.eventLoops = new PoolWorker[maxThreads];
            for (int i = 0; i < maxThreads; i++) {
                this.eventLoops[i] = new PoolWorker(EventLoopsScheduler.THREAD_FACTORY);
            }
        }

        public PoolWorker getEventLoop() {
            int c = this.cores;
            if (c == 0) {
                return EventLoopsScheduler.SHUTDOWN_WORKER;
            }
            PoolWorker[] poolWorkerArr = this.eventLoops;
            long j = this.f1538n;
            this.f1538n = 1 + j;
            return poolWorkerArr[(int) (j % c)];
        }

        public void shutdown() {
            PoolWorker[] arr$ = this.eventLoops;
            for (PoolWorker w : arr$) {
                w.unsubscribe();
            }
        }
    }

    public EventLoopsScheduler() {
        start();
    }

    @Override // p021rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new EventLoopWorker(this.pool.get().getEventLoop());
    }

    @Override // p021rx.internal.schedulers.SchedulerLifecycle
    public void start() {
        FixedSchedulerPool update = new FixedSchedulerPool(MAX_THREADS);
        if (!this.pool.compareAndSet(NONE, update)) {
            update.shutdown();
        }
    }

    @Override // p021rx.internal.schedulers.SchedulerLifecycle
    public void shutdown() {
        FixedSchedulerPool curr;
        do {
            curr = this.pool.get();
            if (curr == NONE) {
                return;
            }
        } while (!this.pool.compareAndSet(curr, NONE));
        curr.shutdown();
    }

    public Subscription scheduleDirect(Action0 action) {
        PoolWorker pw = this.pool.get().getEventLoop();
        return pw.scheduleActual(action, -1L, TimeUnit.NANOSECONDS);
    }

    /* renamed from: rx.internal.schedulers.EventLoopsScheduler$EventLoopWorker */
    /* loaded from: classes2.dex */
    private static class EventLoopWorker extends Scheduler.Worker {
        private final PoolWorker poolWorker;
        private final SubscriptionList serial = new SubscriptionList();
        private final CompositeSubscription timed = new CompositeSubscription();
        private final SubscriptionList both = new SubscriptionList(this.serial, this.timed);

        EventLoopWorker(PoolWorker poolWorker) {
            this.poolWorker = poolWorker;
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            this.both.unsubscribe();
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return this.both.isUnsubscribed();
        }

        @Override // p021rx.Scheduler.Worker
        public Subscription schedule(Action0 action) {
            return isUnsubscribed() ? Subscriptions.unsubscribed() : this.poolWorker.scheduleActual(action, 0L, (TimeUnit) null, this.serial);
        }

        @Override // p021rx.Scheduler.Worker
        public Subscription schedule(Action0 action, long delayTime, TimeUnit unit) {
            return isUnsubscribed() ? Subscriptions.unsubscribed() : this.poolWorker.scheduleActual(action, delayTime, unit, this.timed);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.schedulers.EventLoopsScheduler$PoolWorker */
    /* loaded from: classes2.dex */
    public static final class PoolWorker extends NewThreadWorker {
        PoolWorker(ThreadFactory threadFactory) {
            super(threadFactory);
        }
    }
}
