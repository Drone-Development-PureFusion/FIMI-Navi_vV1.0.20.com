package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.functions.Action1;
import p021rx.observables.ConnectableObservable;
import p021rx.observers.Subscribers;
/* renamed from: rx.internal.operators.OnSubscribeAutoConnect */
/* loaded from: classes2.dex */
public final class OnSubscribeAutoConnect<T> implements Observable.OnSubscribe<T> {
    final AtomicInteger clients;
    final Action1<? super Subscription> connection;
    final int numberOfSubscribers;
    final ConnectableObservable<? extends T> source;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((Subscriber) ((Subscriber) x0));
    }

    public OnSubscribeAutoConnect(ConnectableObservable<? extends T> source, int numberOfSubscribers, Action1<? super Subscription> connection) {
        if (numberOfSubscribers <= 0) {
            throw new IllegalArgumentException("numberOfSubscribers > 0 required");
        }
        this.source = source;
        this.numberOfSubscribers = numberOfSubscribers;
        this.connection = connection;
        this.clients = new AtomicInteger();
    }

    public void call(Subscriber<? super T> child) {
        this.source.unsafeSubscribe(Subscribers.wrap(child));
        if (this.clients.incrementAndGet() == this.numberOfSubscribers) {
            this.source.connect(this.connection);
        }
    }
}
