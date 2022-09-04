package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OperatorIgnoreElements */
/* loaded from: classes2.dex */
public class OperatorIgnoreElements<T> implements Observable.Operator<T, T> {
    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorIgnoreElements$Holder */
    /* loaded from: classes2.dex */
    public static class Holder {
        static final OperatorIgnoreElements<?> INSTANCE = new OperatorIgnoreElements<>();

        private Holder() {
        }
    }

    public static <T> OperatorIgnoreElements<T> instance() {
        return (OperatorIgnoreElements<T>) Holder.INSTANCE;
    }

    OperatorIgnoreElements() {
    }

    public Subscriber<? super T> call(final Subscriber<? super T> child) {
        Subscriber subscriber = (Subscriber<T>) new Subscriber<T>() { // from class: rx.internal.operators.OperatorIgnoreElements.1
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
            }
        };
        child.add(subscriber);
        return subscriber;
    }
}
