package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.Deque;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
/* renamed from: rx.internal.operators.TakeLastQueueProducer */
/* loaded from: classes2.dex */
final class TakeLastQueueProducer<T> extends AtomicLong implements Producer {
    private final Deque<Object> deque;
    private volatile boolean emittingStarted = false;
    private final NotificationLite<T> notification;
    private final Subscriber<? super T> subscriber;

    public TakeLastQueueProducer(NotificationLite<T> n, Deque<Object> q, Subscriber<? super T> subscriber) {
        this.notification = n;
        this.deque = q;
        this.subscriber = subscriber;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void startEmitting() {
        if (!this.emittingStarted) {
            this.emittingStarted = true;
            emit(0L);
        }
    }

    @Override // p021rx.Producer
    public void request(long n) {
        long _c;
        if (get() != Clock.MAX_TIME) {
            if (n == Clock.MAX_TIME) {
                _c = getAndSet(Clock.MAX_TIME);
            } else {
                _c = BackpressureUtils.getAndAddRequest(this, n);
            }
            if (this.emittingStarted) {
                emit(_c);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x009d, code lost:
        r10 = get();
        r6 = r10 - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ab, code lost:
        if (r10 == com.facebook.common.time.Clock.MAX_TIME) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b3, code lost:
        if (compareAndSet(r10, r6) == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b9, code lost:
        if (r6 != 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void emit(long previousRequested) {
        Object o;
        if (get() == Clock.MAX_TIME) {
            if (previousRequested == 0) {
                try {
                    for (Object value : this.deque) {
                        if (!this.subscriber.isUnsubscribed()) {
                            this.notification.accept(this.subscriber, value);
                        } else {
                            return;
                        }
                    }
                } catch (Throwable e) {
                    try {
                        Exceptions.throwOrReport(e, this.subscriber);
                    } finally {
                        this.deque.clear();
                    }
                }
            }
        } else if (previousRequested == 0) {
            while (true) {
                long numToEmit = get();
                int emitted = 0;
                while (true) {
                    numToEmit--;
                    if (numToEmit < 0 || (o = this.deque.poll()) == null) {
                        break;
                    } else if (!this.subscriber.isUnsubscribed() && !this.notification.accept(this.subscriber, o)) {
                        emitted++;
                    } else {
                        return;
                    }
                }
            }
        }
    }
}
