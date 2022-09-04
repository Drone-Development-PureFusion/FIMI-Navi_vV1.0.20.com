package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.observers.SerializedSubscriber;
/* renamed from: rx.internal.operators.OperatorSerialize */
/* loaded from: classes2.dex */
public final class OperatorSerialize<T> implements Observable.Operator<T, T> {
    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorSerialize$Holder */
    /* loaded from: classes2.dex */
    public static final class Holder {
        static final OperatorSerialize<Object> INSTANCE = new OperatorSerialize<>();

        private Holder() {
        }
    }

    public static <T> OperatorSerialize<T> instance() {
        return (OperatorSerialize<T>) Holder.INSTANCE;
    }

    OperatorSerialize() {
    }

    public Subscriber<? super T> call(final Subscriber<? super T> s) {
        return new SerializedSubscriber(new Subscriber<T>(s) { // from class: rx.internal.operators.OperatorSerialize.1
            @Override // p021rx.Observer
            public void onCompleted() {
                s.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                s.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                s.onNext(t);
            }
        });
    }
}
