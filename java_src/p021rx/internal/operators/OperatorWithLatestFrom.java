package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicReference;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func2;
import p021rx.observers.SerializedSubscriber;
/* renamed from: rx.internal.operators.OperatorWithLatestFrom */
/* loaded from: classes2.dex */
public final class OperatorWithLatestFrom<T, U, R> implements Observable.Operator<R, T> {
    static final Object EMPTY = new Object();
    final Observable<? extends U> other;
    final Func2<? super T, ? super U, ? extends R> resultSelector;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorWithLatestFrom(Observable<? extends U> other, Func2<? super T, ? super U, ? extends R> resultSelector) {
        this.other = other;
        this.resultSelector = resultSelector;
    }

    public Subscriber<? super T> call(Subscriber<? super R> child) {
        final SerializedSubscriber<R> s = new SerializedSubscriber<>(child, false);
        child.add(s);
        final AtomicReference<Object> current = new AtomicReference<>(EMPTY);
        Subscriber subscriber = (Subscriber<T>) new Subscriber<T>(s, true) { // from class: rx.internal.operators.OperatorWithLatestFrom.1
            @Override // p021rx.Observer
            public void onNext(T t) {
                Object o = current.get();
                if (o != OperatorWithLatestFrom.EMPTY) {
                    try {
                        R result = OperatorWithLatestFrom.this.resultSelector.mo1993call(t, o);
                        s.onNext(result);
                    } catch (Throwable e) {
                        Exceptions.throwOrReport(e, this);
                    }
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                s.onError(e);
                s.unsubscribe();
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                s.onCompleted();
                s.unsubscribe();
            }
        };
        Subscriber<U> otherSubscriber = new Subscriber<U>() { // from class: rx.internal.operators.OperatorWithLatestFrom.2
            @Override // p021rx.Observer
            public void onNext(U t) {
                current.set(t);
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                s.onError(e);
                s.unsubscribe();
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                if (current.get() == OperatorWithLatestFrom.EMPTY) {
                    s.onCompleted();
                    s.unsubscribe();
                }
            }
        };
        s.add(subscriber);
        s.add(otherSubscriber);
        this.other.unsafeSubscribe(otherSubscriber);
        return subscriber;
    }
}
