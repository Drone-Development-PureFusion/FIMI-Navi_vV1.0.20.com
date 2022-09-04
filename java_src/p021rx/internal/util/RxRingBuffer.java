package p021rx.internal.util;

import java.util.Queue;
import p021rx.Observer;
import p021rx.Subscription;
import p021rx.exceptions.MissingBackpressureException;
import p021rx.internal.operators.NotificationLite;
import p021rx.internal.util.unsafe.SpmcArrayQueue;
import p021rx.internal.util.unsafe.SpscArrayQueue;
import p021rx.internal.util.unsafe.UnsafeAccess;
/* renamed from: rx.internal.util.RxRingBuffer */
/* loaded from: classes2.dex */
public class RxRingBuffer implements Subscription {
    public static final int SIZE;
    public static ObjectPool<Queue<Object>> SPMC_POOL;
    public static ObjectPool<Queue<Object>> SPSC_POOL;
    static int _size;

    /* renamed from: on */
    private static final NotificationLite<Object> f1550on = NotificationLite.instance();
    private final ObjectPool<Queue<Object>> pool;
    private Queue<Object> queue;
    private final int size;
    public volatile Object terminalState;

    public static RxRingBuffer getSpscInstance() {
        return UnsafeAccess.isUnsafeAvailable() ? new RxRingBuffer(SPSC_POOL, SIZE) : new RxRingBuffer();
    }

    public static RxRingBuffer getSpmcInstance() {
        return UnsafeAccess.isUnsafeAvailable() ? new RxRingBuffer(SPMC_POOL, SIZE) : new RxRingBuffer();
    }

    static {
        _size = 128;
        if (PlatformDependent.isAndroid()) {
            _size = 16;
        }
        String sizeFromProperty = System.getProperty("rx.ring-buffer.size");
        if (sizeFromProperty != null) {
            try {
                _size = Integer.parseInt(sizeFromProperty);
            } catch (Exception e) {
                System.err.println("Failed to set 'rx.buffer.size' with value " + sizeFromProperty + " => " + e.getMessage());
            }
        }
        SIZE = _size;
        SPSC_POOL = new ObjectPool<Queue<Object>>() { // from class: rx.internal.util.RxRingBuffer.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // p021rx.internal.util.ObjectPool
            public Queue<Object> createObject() {
                return new SpscArrayQueue(RxRingBuffer.SIZE);
            }
        };
        SPMC_POOL = new ObjectPool<Queue<Object>>() { // from class: rx.internal.util.RxRingBuffer.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // p021rx.internal.util.ObjectPool
            public Queue<Object> createObject() {
                return new SpmcArrayQueue(RxRingBuffer.SIZE);
            }
        };
    }

    private RxRingBuffer(Queue<Object> queue, int size) {
        this.queue = queue;
        this.pool = null;
        this.size = size;
    }

    private RxRingBuffer(ObjectPool<Queue<Object>> pool, int size) {
        this.pool = pool;
        this.queue = pool.borrowObject();
        this.size = size;
    }

    public synchronized void release() {
        Queue<Object> q = this.queue;
        ObjectPool<Queue<Object>> p = this.pool;
        if (p != null && q != null) {
            q.clear();
            this.queue = null;
            p.returnObject(q);
        }
    }

    @Override // p021rx.Subscription
    public void unsubscribe() {
        release();
    }

    RxRingBuffer() {
        this(new SynchronizedQueue(SIZE), SIZE);
    }

    public void onNext(Object o) throws MissingBackpressureException {
        boolean iae = false;
        boolean mbe = false;
        synchronized (this) {
            Queue<Object> q = this.queue;
            if (q != null) {
                mbe = !q.offer(f1550on.next(o));
            } else {
                iae = true;
            }
        }
        if (iae) {
            throw new IllegalStateException("This instance has been unsubscribed and the queue is no longer usable.");
        }
        if (mbe) {
            throw new MissingBackpressureException();
        }
    }

    public void onCompleted() {
        if (this.terminalState == null) {
            this.terminalState = f1550on.completed();
        }
    }

    public void onError(Throwable t) {
        if (this.terminalState == null) {
            this.terminalState = f1550on.error(t);
        }
    }

    public int available() {
        return this.size - count();
    }

    public int capacity() {
        return this.size;
    }

    public int count() {
        Queue<Object> q = this.queue;
        if (q == null) {
            return 0;
        }
        return q.size();
    }

    public boolean isEmpty() {
        Queue<Object> q = this.queue;
        if (q == null) {
            return true;
        }
        return q.isEmpty();
    }

    public Object poll() {
        Object o = null;
        synchronized (this) {
            Queue<Object> q = this.queue;
            if (q != null) {
                o = q.poll();
                Object ts = this.terminalState;
                if (o == null && ts != null && q.peek() == null) {
                    o = ts;
                    this.terminalState = null;
                }
            }
        }
        return o;
    }

    public Object peek() {
        Object o;
        synchronized (this) {
            Queue<Object> q = this.queue;
            if (q == null) {
                o = null;
            } else {
                o = q.peek();
                Object ts = this.terminalState;
                if (o == null && ts != null && q.peek() == null) {
                    o = ts;
                }
            }
        }
        return o;
    }

    public boolean isCompleted(Object o) {
        return f1550on.isCompleted(o);
    }

    public boolean isError(Object o) {
        return f1550on.isError(o);
    }

    public Object getValue(Object o) {
        return f1550on.getValue(o);
    }

    public boolean accept(Object o, Observer child) {
        return f1550on.accept(child, o);
    }

    public Throwable asError(Object o) {
        return f1550on.getError(o);
    }

    @Override // p021rx.Subscription
    public boolean isUnsubscribed() {
        return this.queue == null;
    }
}
