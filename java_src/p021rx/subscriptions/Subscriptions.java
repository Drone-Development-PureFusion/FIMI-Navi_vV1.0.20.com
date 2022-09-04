package p021rx.subscriptions;

import java.util.concurrent.Future;
import p021rx.Subscription;
import p021rx.functions.Action0;
/* renamed from: rx.subscriptions.Subscriptions */
/* loaded from: classes2.dex */
public final class Subscriptions {
    private static final Unsubscribed UNSUBSCRIBED = new Unsubscribed();

    private Subscriptions() {
        throw new IllegalStateException("No instances!");
    }

    public static Subscription empty() {
        return BooleanSubscription.create();
    }

    public static Subscription unsubscribed() {
        return UNSUBSCRIBED;
    }

    public static Subscription create(Action0 unsubscribe) {
        return BooleanSubscription.create(unsubscribe);
    }

    public static Subscription from(Future<?> f) {
        return new FutureSubscription(f);
    }

    /* renamed from: rx.subscriptions.Subscriptions$FutureSubscription */
    /* loaded from: classes2.dex */
    private static final class FutureSubscription implements Subscription {

        /* renamed from: f */
        final Future<?> f1574f;

        public FutureSubscription(Future<?> f) {
            this.f1574f = f;
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            this.f1574f.cancel(true);
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return this.f1574f.isCancelled();
        }
    }

    public static CompositeSubscription from(Subscription... subscriptions) {
        return new CompositeSubscription(subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.subscriptions.Subscriptions$Unsubscribed */
    /* loaded from: classes2.dex */
    public static final class Unsubscribed implements Subscription {
        Unsubscribed() {
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return true;
        }
    }
}
