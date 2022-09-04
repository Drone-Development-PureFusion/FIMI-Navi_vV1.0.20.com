package p021rx;

import p021rx.annotations.Beta;
import p021rx.internal.util.SubscriptionList;
@Beta
/* renamed from: rx.SingleSubscriber */
/* loaded from: classes2.dex */
public abstract class SingleSubscriber<T> implements Subscription {

    /* renamed from: cs */
    private final SubscriptionList f1497cs = new SubscriptionList();

    public abstract void onError(Throwable th);

    public abstract void onSuccess(T t);

    public final void add(Subscription s) {
        this.f1497cs.add(s);
    }

    @Override // p021rx.Subscription
    public final void unsubscribe() {
        this.f1497cs.unsubscribe();
    }

    @Override // p021rx.Subscription
    public final boolean isUnsubscribed() {
        return this.f1497cs.isUnsubscribed();
    }
}
