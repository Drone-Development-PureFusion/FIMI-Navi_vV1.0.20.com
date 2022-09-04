package p021rx.internal.producers;

import java.util.concurrent.atomic.AtomicBoolean;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
/* renamed from: rx.internal.producers.SingleProducer */
/* loaded from: classes2.dex */
public final class SingleProducer<T> extends AtomicBoolean implements Producer {
    private static final long serialVersionUID = -3353584923995471404L;
    final Subscriber<? super T> child;
    final T value;

    public SingleProducer(Subscriber<? super T> child, T value) {
        this.child = child;
        this.value = value;
    }

    @Override // p021rx.Producer
    public void request(long n) {
        if (n < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        }
        if (n != 0 && compareAndSet(false, true)) {
            Subscriber<? super T> c = this.child;
            Object obj = (T) this.value;
            if (!c.isUnsubscribed()) {
                try {
                    c.onNext(obj);
                    if (!c.isUnsubscribed()) {
                        c.onCompleted();
                    }
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, c, obj);
                }
            }
        }
    }
}
