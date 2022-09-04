package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.functions.Action0;
import p021rx.observers.Subscribers;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.OperatorDoOnUnsubscribe */
/* loaded from: classes2.dex */
public class OperatorDoOnUnsubscribe<T> implements Observable.Operator<T, T> {
    private final Action0 unsubscribe;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorDoOnUnsubscribe(Action0 unsubscribe) {
        this.unsubscribe = unsubscribe;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        child.add(Subscriptions.create(this.unsubscribe));
        return Subscribers.wrap(child);
    }
}
