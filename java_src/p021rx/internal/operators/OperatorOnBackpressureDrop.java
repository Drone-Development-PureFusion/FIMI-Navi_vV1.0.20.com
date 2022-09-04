package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action1;
/* renamed from: rx.internal.operators.OperatorOnBackpressureDrop */
/* loaded from: classes2.dex */
public class OperatorOnBackpressureDrop<T> implements Observable.Operator<T, T> {
    final Action1<? super T> onDrop;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorOnBackpressureDrop$Holder */
    /* loaded from: classes2.dex */
    public static final class Holder {
        static final OperatorOnBackpressureDrop<Object> INSTANCE = new OperatorOnBackpressureDrop<>();

        private Holder() {
        }
    }

    public static <T> OperatorOnBackpressureDrop<T> instance() {
        return (OperatorOnBackpressureDrop<T>) Holder.INSTANCE;
    }

    OperatorOnBackpressureDrop() {
        this(null);
    }

    public OperatorOnBackpressureDrop(Action1<? super T> onDrop) {
        this.onDrop = onDrop;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> child) {
        final AtomicLong requested = new AtomicLong();
        child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorOnBackpressureDrop.1
            @Override // p021rx.Producer
            public void request(long n) {
                BackpressureUtils.getAndAddRequest(requested, n);
            }
        });
        return (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorOnBackpressureDrop.2
            @Override // p021rx.Subscriber
            public void onStart() {
                request(Clock.MAX_TIME);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                child.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                child.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                if (requested.get() > 0) {
                    child.onNext(t);
                    requested.decrementAndGet();
                } else if (OperatorOnBackpressureDrop.this.onDrop != null) {
                    try {
                        OperatorOnBackpressureDrop.this.onDrop.call(t);
                    } catch (Throwable e) {
                        Exceptions.throwOrReport(e, child, t);
                    }
                }
            }
        };
    }
}
