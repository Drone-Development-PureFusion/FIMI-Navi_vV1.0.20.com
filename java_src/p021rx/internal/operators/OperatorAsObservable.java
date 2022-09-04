package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OperatorAsObservable */
/* loaded from: classes2.dex */
public final class OperatorAsObservable<T> implements Observable.Operator<T, T> {
    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorAsObservable$Holder */
    /* loaded from: classes2.dex */
    public static final class Holder {
        static final OperatorAsObservable<Object> INSTANCE = new OperatorAsObservable<>();

        private Holder() {
        }
    }

    public static <T> OperatorAsObservable<T> instance() {
        return (OperatorAsObservable<T>) Holder.INSTANCE;
    }

    OperatorAsObservable() {
    }

    public Subscriber<? super T> call(Subscriber<? super T> s) {
        return s;
    }
}
