package p021rx.internal.producers;

import com.facebook.common.time.Clock;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.internal.operators.BackpressureUtils;
import p021rx.internal.util.atomic.SpscLinkedAtomicQueue;
import p021rx.internal.util.unsafe.SpscLinkedQueue;
import p021rx.internal.util.unsafe.UnsafeAccess;
/* renamed from: rx.internal.producers.QueuedValueProducer */
/* loaded from: classes2.dex */
public final class QueuedValueProducer<T> extends AtomicLong implements Producer {
    static final Object NULL_SENTINEL = new Object();
    private static final long serialVersionUID = 7277121710709137047L;
    final Subscriber<? super T> child;
    final Queue<Object> queue;
    final AtomicInteger wip;

    public QueuedValueProducer(Subscriber<? super T> child) {
        this(child, UnsafeAccess.isUnsafeAvailable() ? new SpscLinkedQueue() : new SpscLinkedAtomicQueue());
    }

    public QueuedValueProducer(Subscriber<? super T> child, Queue<Object> queue) {
        this.child = child;
        this.queue = queue;
        this.wip = new AtomicInteger();
    }

    @Override // p021rx.Producer
    public void request(long n) {
        if (n < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        }
        if (n > 0) {
            BackpressureUtils.getAndAddRequest(this, n);
            drain();
        }
    }

    public boolean offer(T value) {
        if (value == null) {
            if (!this.queue.offer(NULL_SENTINEL)) {
                return false;
            }
        } else if (!this.queue.offer(value)) {
            return false;
        }
        drain();
        return true;
    }

    private void drain() {
        Object v;
        if (this.wip.getAndIncrement() == 0) {
            Subscriber<? super T> c = this.child;
            Queue<Object> q = this.queue;
            while (!c.isUnsubscribed()) {
                this.wip.lazySet(1);
                long r = get();
                long e = 0;
                while (r != 0 && (v = q.poll()) != null) {
                    try {
                        if (v == NULL_SENTINEL) {
                            c.onNext(null);
                        } else {
                            c.onNext(v);
                        }
                        if (!c.isUnsubscribed()) {
                            r--;
                            e++;
                        } else {
                            return;
                        }
                    } catch (Throwable ex) {
                        if (v == NULL_SENTINEL) {
                            v = null;
                        }
                        Exceptions.throwOrReport(ex, c, v);
                        return;
                    }
                }
                if (e != 0 && get() != Clock.MAX_TIME) {
                    addAndGet(-e);
                }
                if (this.wip.decrementAndGet() == 0) {
                    return;
                }
            }
        }
    }
}
