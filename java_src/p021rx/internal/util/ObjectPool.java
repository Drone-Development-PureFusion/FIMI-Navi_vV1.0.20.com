package p021rx.internal.util;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Scheduler;
import p021rx.functions.Action0;
import p021rx.internal.schedulers.SchedulerLifecycle;
import p021rx.internal.util.unsafe.MpmcArrayQueue;
import p021rx.internal.util.unsafe.UnsafeAccess;
import p021rx.schedulers.Schedulers;
/* renamed from: rx.internal.util.ObjectPool */
/* loaded from: classes2.dex */
public abstract class ObjectPool<T> implements SchedulerLifecycle {
    final int maxSize;
    final int minSize;
    Queue<T> pool;
    private final AtomicReference<Scheduler.Worker> schedulerWorker;
    private final long validationInterval;

    protected abstract T createObject();

    public ObjectPool() {
        this(0, 0, 67L);
    }

    private ObjectPool(int min, int max, long validationInterval) {
        this.minSize = min;
        this.maxSize = max;
        this.validationInterval = validationInterval;
        this.schedulerWorker = new AtomicReference<>();
        initialize(min);
        start();
    }

    public T borrowObject() {
        T object = this.pool.poll();
        if (object == null) {
            return createObject();
        }
        return object;
    }

    public void returnObject(T object) {
        if (object != null) {
            this.pool.offer(object);
        }
    }

    @Override // p021rx.internal.schedulers.SchedulerLifecycle
    public void shutdown() {
        Scheduler.Worker w = this.schedulerWorker.getAndSet(null);
        if (w != null) {
            w.unsubscribe();
        }
    }

    @Override // p021rx.internal.schedulers.SchedulerLifecycle
    public void start() {
        Scheduler.Worker w = Schedulers.computation().createWorker();
        if (this.schedulerWorker.compareAndSet(null, w)) {
            w.schedulePeriodically(new Action0() { // from class: rx.internal.util.ObjectPool.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // p021rx.functions.Action0
                public void call() {
                    int size = ObjectPool.this.pool.size();
                    if (size < ObjectPool.this.minSize) {
                        int sizeToBeAdded = ObjectPool.this.maxSize - size;
                        for (int i = 0; i < sizeToBeAdded; i++) {
                            ObjectPool.this.pool.add(ObjectPool.this.createObject());
                        }
                    } else if (size > ObjectPool.this.maxSize) {
                        int sizeToBeRemoved = size - ObjectPool.this.maxSize;
                        for (int i2 = 0; i2 < sizeToBeRemoved; i2++) {
                            ObjectPool.this.pool.poll();
                        }
                    }
                }
            }, this.validationInterval, this.validationInterval, TimeUnit.SECONDS);
        } else {
            w.unsubscribe();
        }
    }

    private void initialize(int min) {
        if (UnsafeAccess.isUnsafeAvailable()) {
            this.pool = new MpmcArrayQueue(Math.max(this.maxSize, 1024));
        } else {
            this.pool = new ConcurrentLinkedQueue();
        }
        for (int i = 0; i < min; i++) {
            this.pool.add(createObject());
        }
    }
}
