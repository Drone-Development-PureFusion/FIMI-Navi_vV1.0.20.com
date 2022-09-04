package p021rx.subscriptions;

import java.util.concurrent.atomic.AtomicReference;
import p021rx.Subscription;
import p021rx.functions.Action0;
/* renamed from: rx.subscriptions.BooleanSubscription */
/* loaded from: classes2.dex */
public final class BooleanSubscription implements Subscription {
    static final Action0 EMPTY_ACTION = new Action0() { // from class: rx.subscriptions.BooleanSubscription.1
        @Override // p021rx.functions.Action0
        public void call() {
        }
    };
    final AtomicReference<Action0> actionRef;

    public BooleanSubscription() {
        this.actionRef = new AtomicReference<>();
    }

    private BooleanSubscription(Action0 action) {
        this.actionRef = new AtomicReference<>(action);
    }

    public static BooleanSubscription create() {
        return new BooleanSubscription();
    }

    public static BooleanSubscription create(Action0 onUnsubscribe) {
        return new BooleanSubscription(onUnsubscribe);
    }

    @Override // p021rx.Subscription
    public boolean isUnsubscribed() {
        return this.actionRef.get() == EMPTY_ACTION;
    }

    @Override // p021rx.Subscription
    public final void unsubscribe() {
        Action0 action = this.actionRef.get();
        if (action != EMPTY_ACTION) {
            Action0 action2 = this.actionRef.getAndSet(EMPTY_ACTION);
            Action0 action3 = action2;
            if (action3 != null && action3 != EMPTY_ACTION) {
                action3.call();
            }
        }
    }
}
