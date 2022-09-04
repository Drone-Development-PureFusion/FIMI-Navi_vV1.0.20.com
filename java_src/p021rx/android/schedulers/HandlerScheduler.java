package p021rx.android.schedulers;

import android.os.Handler;
import java.util.concurrent.TimeUnit;
import p021rx.Scheduler;
import p021rx.Subscription;
import p021rx.android.plugins.RxAndroidPlugins;
import p021rx.functions.Action0;
import p021rx.internal.schedulers.ScheduledAction;
import p021rx.subscriptions.CompositeSubscription;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.android.schedulers.HandlerScheduler */
/* loaded from: classes2.dex */
public final class HandlerScheduler extends Scheduler {
    private final Handler handler;

    public static HandlerScheduler from(Handler handler) {
        if (handler == null) {
            throw new NullPointerException("handler == null");
        }
        return new HandlerScheduler(handler);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HandlerScheduler(Handler handler) {
        this.handler = handler;
    }

    @Override // p021rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new HandlerWorker(this.handler);
    }

    /* renamed from: rx.android.schedulers.HandlerScheduler$HandlerWorker */
    /* loaded from: classes2.dex */
    static class HandlerWorker extends Scheduler.Worker {
        private final CompositeSubscription compositeSubscription = new CompositeSubscription();
        private final Handler handler;

        HandlerWorker(Handler handler) {
            this.handler = handler;
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            this.compositeSubscription.unsubscribe();
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return this.compositeSubscription.isUnsubscribed();
        }

        @Override // p021rx.Scheduler.Worker
        public Subscription schedule(Action0 action, long delayTime, TimeUnit unit) {
            if (this.compositeSubscription.isUnsubscribed()) {
                return Subscriptions.unsubscribed();
            }
            final ScheduledAction scheduledAction = new ScheduledAction(RxAndroidPlugins.getInstance().getSchedulersHook().onSchedule(action));
            scheduledAction.addParent(this.compositeSubscription);
            this.compositeSubscription.add(scheduledAction);
            this.handler.postDelayed(scheduledAction, unit.toMillis(delayTime));
            scheduledAction.add(Subscriptions.create(new Action0() { // from class: rx.android.schedulers.HandlerScheduler.HandlerWorker.1
                @Override // p021rx.functions.Action0
                public void call() {
                    HandlerWorker.this.handler.removeCallbacks(scheduledAction);
                }
            }));
            return scheduledAction;
        }

        @Override // p021rx.Scheduler.Worker
        public Subscription schedule(Action0 action) {
            return schedule(action, 0L, TimeUnit.MILLISECONDS);
        }
    }
}
