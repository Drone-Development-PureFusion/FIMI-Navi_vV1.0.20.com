package p021rx.observables;

import p021rx.Observable;
import p021rx.Subscription;
import p021rx.annotations.Beta;
import p021rx.functions.Action1;
import p021rx.functions.Actions;
import p021rx.internal.operators.OnSubscribeAutoConnect;
import p021rx.internal.operators.OnSubscribeRefCount;
/* renamed from: rx.observables.ConnectableObservable */
/* loaded from: classes2.dex */
public abstract class ConnectableObservable<T> extends Observable<T> {
    public abstract void connect(Action1<? super Subscription> action1);

    /* JADX INFO: Access modifiers changed from: protected */
    public ConnectableObservable(Observable.OnSubscribe<T> onSubscribe) {
        super(onSubscribe);
    }

    public final Subscription connect() {
        final Subscription[] out = new Subscription[1];
        connect(new Action1<Subscription>() { // from class: rx.observables.ConnectableObservable.1
            @Override // p021rx.functions.Action1
            public void call(Subscription t1) {
                out[0] = t1;
            }
        });
        return out[0];
    }

    public Observable<T> refCount() {
        return create(new OnSubscribeRefCount(this));
    }

    @Beta
    public Observable<T> autoConnect() {
        return autoConnect(1);
    }

    @Beta
    public Observable<T> autoConnect(int numberOfSubscribers) {
        return autoConnect(numberOfSubscribers, Actions.empty());
    }

    @Beta
    public Observable<T> autoConnect(int numberOfSubscribers, Action1<? super Subscription> connection) {
        if (numberOfSubscribers <= 0) {
            connect(connection);
            return this;
        }
        return create(new OnSubscribeAutoConnect(this, numberOfSubscribers, connection));
    }
}
