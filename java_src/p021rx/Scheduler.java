package p021rx;

import java.util.concurrent.TimeUnit;
import p021rx.functions.Action0;
import p021rx.subscriptions.MultipleAssignmentSubscription;
/* renamed from: rx.Scheduler */
/* loaded from: classes2.dex */
public abstract class Scheduler {
    static final long CLOCK_DRIFT_TOLERANCE_NANOS = TimeUnit.MINUTES.toNanos(Long.getLong("rx.scheduler.drift-tolerance", 15).longValue());

    public abstract Worker createWorker();

    /* renamed from: rx.Scheduler$Worker */
    /* loaded from: classes2.dex */
    public static abstract class Worker implements Subscription {
        public abstract Subscription schedule(Action0 action0);

        public abstract Subscription schedule(Action0 action0, long j, TimeUnit timeUnit);

        public Subscription schedulePeriodically(final Action0 action, long initialDelay, long period, TimeUnit unit) {
            final long periodInNanos = unit.toNanos(period);
            final long firstNowNanos = TimeUnit.MILLISECONDS.toNanos(now());
            final long firstStartInNanos = firstNowNanos + unit.toNanos(initialDelay);
            final MultipleAssignmentSubscription mas = new MultipleAssignmentSubscription();
            Action0 recursiveAction = new Action0() { // from class: rx.Scheduler.Worker.1
                long count;
                long lastNowNanos;
                long startInNanos;

                {
                    this.lastNowNanos = firstNowNanos;
                    this.startInNanos = firstStartInNanos;
                }

                @Override // p021rx.functions.Action0
                public void call() {
                    long nextTick;
                    if (!mas.isUnsubscribed()) {
                        action.call();
                        long nowNanos = TimeUnit.MILLISECONDS.toNanos(Worker.this.now());
                        if (Scheduler.CLOCK_DRIFT_TOLERANCE_NANOS + nowNanos < this.lastNowNanos || nowNanos >= this.lastNowNanos + periodInNanos + Scheduler.CLOCK_DRIFT_TOLERANCE_NANOS) {
                            nextTick = nowNanos + periodInNanos;
                            long j = periodInNanos;
                            long j2 = this.count + 1;
                            this.count = j2;
                            this.startInNanos = nextTick - (j * j2);
                        } else {
                            long j3 = this.startInNanos;
                            long j4 = this.count + 1;
                            this.count = j4;
                            nextTick = j3 + (j4 * periodInNanos);
                        }
                        this.lastNowNanos = nowNanos;
                        long delay = nextTick - nowNanos;
                        mas.set(Worker.this.schedule(this, delay, TimeUnit.NANOSECONDS));
                    }
                }
            };
            MultipleAssignmentSubscription s = new MultipleAssignmentSubscription();
            mas.set(s);
            s.set(schedule(recursiveAction, initialDelay, unit));
            return mas;
        }

        public long now() {
            return System.currentTimeMillis();
        }
    }

    public long now() {
        return System.currentTimeMillis();
    }
}
