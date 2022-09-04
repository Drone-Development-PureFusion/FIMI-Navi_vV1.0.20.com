package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.observers.SerializedSubscriber;
/* renamed from: rx.internal.operators.OperatorSkipUntil */
/* loaded from: classes2.dex */
public final class OperatorSkipUntil<T, U> implements Observable.Operator<T, T> {
    final Observable<U> other;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorSkipUntil(Observable<U> other) {
        this.other = other;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        final SerializedSubscriber<T> s = new SerializedSubscriber<>(child);
        final AtomicBoolean gate = new AtomicBoolean();
        Subscriber<U> u = new Subscriber<U>() { // from class: rx.internal.operators.OperatorSkipUntil.1
            @Override // p021rx.Observer
            public void onNext(U t) {
                gate.set(true);
                unsubscribe();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                s.onError(e);
                s.unsubscribe();
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                unsubscribe();
            }
        };
        child.add(u);
        this.other.unsafeSubscribe(u);
        return (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorSkipUntil.2
            @Override // p021rx.Observer
            public void onNext(T t) {
                if (gate.get()) {
                    s.onNext(t);
                } else {
                    request(1L);
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                s.onError(e);
                unsubscribe();
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                s.onCompleted();
                unsubscribe();
            }
        };
    }
}
