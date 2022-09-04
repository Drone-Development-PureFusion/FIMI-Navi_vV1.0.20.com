package p021rx.schedulers;

import java.util.concurrent.TimeUnit;
import p021rx.Scheduler;
import p021rx.Subscription;
import p021rx.functions.Action0;
import p021rx.subscriptions.BooleanSubscription;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.schedulers.ImmediateScheduler */
/* loaded from: classes2.dex */
public final class ImmediateScheduler extends Scheduler {
    private static final ImmediateScheduler INSTANCE = new ImmediateScheduler();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImmediateScheduler instance() {
        return INSTANCE;
    }

    ImmediateScheduler() {
    }

    @Override // p021rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new InnerImmediateScheduler();
    }

    /* renamed from: rx.schedulers.ImmediateScheduler$InnerImmediateScheduler */
    /* loaded from: classes2.dex */
    private class InnerImmediateScheduler extends Scheduler.Worker implements Subscription {
        final BooleanSubscription innerSubscription = new BooleanSubscription();

        InnerImmediateScheduler() {
        }

        @Override // p021rx.Scheduler.Worker
        public Subscription schedule(Action0 action, long delayTime, TimeUnit unit) {
            long execTime = ImmediateScheduler.this.now() + unit.toMillis(delayTime);
            return schedule(new SleepingAction(action, this, execTime));
        }

        @Override // p021rx.Scheduler.Worker
        public Subscription schedule(Action0 action) {
            action.call();
            return Subscriptions.unsubscribed();
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            this.innerSubscription.unsubscribe();
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return this.innerSubscription.isUnsubscribed();
        }
    }
}
