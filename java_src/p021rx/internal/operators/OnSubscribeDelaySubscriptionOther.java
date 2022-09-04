package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.observers.Subscribers;
import p021rx.plugins.RxJavaPlugins;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.OnSubscribeDelaySubscriptionOther */
/* loaded from: classes2.dex */
public final class OnSubscribeDelaySubscriptionOther<T, U> implements Observable.OnSubscribe<T> {
    final Observable<? extends T> main;
    final Observable<U> other;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((Subscriber) ((Subscriber) x0));
    }

    public OnSubscribeDelaySubscriptionOther(Observable<? extends T> main, Observable<U> other) {
        this.main = main;
        this.other = other;
    }

    public void call(Subscriber<? super T> t) {
        final Subscriber<T> child = Subscribers.wrap(t);
        final SerialSubscription serial = new SerialSubscription();
        Subscriber<U> otherSubscriber = new Subscriber<U>() { // from class: rx.internal.operators.OnSubscribeDelaySubscriptionOther.1
            boolean done;

            @Override // p021rx.Observer
            public void onNext(U t2) {
                onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                if (this.done) {
                    RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
                    return;
                }
                this.done = true;
                child.onError(e);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                if (!this.done) {
                    this.done = true;
                    serial.set(child);
                    OnSubscribeDelaySubscriptionOther.this.main.unsafeSubscribe(child);
                }
            }
        };
        serial.set(otherSubscriber);
        this.other.unsafeSubscribe(otherSubscriber);
    }
}
