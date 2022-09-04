package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.observers.SerializedSubscriber;
/* renamed from: rx.internal.operators.OperatorTakeUntil */
/* loaded from: classes2.dex */
public final class OperatorTakeUntil<T, E> implements Observable.Operator<T, T> {
    private final Observable<? extends E> other;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorTakeUntil(Observable<? extends E> other) {
        this.other = other;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        final Subscriber<T> serial = new SerializedSubscriber<>(child, false);
        final Subscriber subscriber = (Subscriber<T>) new Subscriber<T>(serial, false) { // from class: rx.internal.operators.OperatorTakeUntil.1
            @Override // p021rx.Observer
            public void onNext(T t) {
                serial.onNext(t);
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                try {
                    serial.onError(e);
                } finally {
                    serial.unsubscribe();
                }
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                try {
                    serial.onCompleted();
                } finally {
                    serial.unsubscribe();
                }
            }
        };
        Subscriber<E> so = new Subscriber<E>() { // from class: rx.internal.operators.OperatorTakeUntil.2
            @Override // p021rx.Subscriber
            public void onStart() {
                request(Clock.MAX_TIME);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                subscriber.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                subscriber.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(E t) {
                onCompleted();
            }
        };
        serial.add(subscriber);
        serial.add(so);
        child.add(serial);
        this.other.unsafeSubscribe(so);
        return subscriber;
    }
}
