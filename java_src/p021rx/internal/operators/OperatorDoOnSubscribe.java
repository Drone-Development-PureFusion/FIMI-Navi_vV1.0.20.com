package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.functions.Action0;
import p021rx.observers.Subscribers;
/* renamed from: rx.internal.operators.OperatorDoOnSubscribe */
/* loaded from: classes2.dex */
public class OperatorDoOnSubscribe<T> implements Observable.Operator<T, T> {
    private final Action0 subscribe;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorDoOnSubscribe(Action0 subscribe) {
        this.subscribe = subscribe;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        this.subscribe.call();
        return Subscribers.wrap(child);
    }
}
