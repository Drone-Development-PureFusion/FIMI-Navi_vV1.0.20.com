package p021rx.internal.util;

import p021rx.Subscription;
/* renamed from: rx.internal.util.SynchronizedSubscription */
/* loaded from: classes2.dex */
public class SynchronizedSubscription implements Subscription {

    /* renamed from: s */
    private final Subscription f1553s;

    public SynchronizedSubscription(Subscription s) {
        this.f1553s = s;
    }

    @Override // p021rx.Subscription
    public synchronized void unsubscribe() {
        this.f1553s.unsubscribe();
    }

    @Override // p021rx.Subscription
    public synchronized boolean isUnsubscribed() {
        return this.f1553s.isUnsubscribed();
    }
}
