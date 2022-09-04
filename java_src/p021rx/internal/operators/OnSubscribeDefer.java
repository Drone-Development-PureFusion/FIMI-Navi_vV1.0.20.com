package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func0;
import p021rx.observers.Subscribers;
/* renamed from: rx.internal.operators.OnSubscribeDefer */
/* loaded from: classes2.dex */
public final class OnSubscribeDefer<T> implements Observable.OnSubscribe<T> {
    final Func0<? extends Observable<? extends T>> observableFactory;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((Subscriber) ((Subscriber) x0));
    }

    public OnSubscribeDefer(Func0<? extends Observable<? extends T>> observableFactory) {
        this.observableFactory = observableFactory;
    }

    public void call(Subscriber<? super T> s) {
        try {
            Observable<? extends T> o = this.observableFactory.mo1996call();
            o.unsafeSubscribe(Subscribers.wrap(s));
        } catch (Throwable t) {
            Exceptions.throwOrReport(t, s);
        }
    }
}
