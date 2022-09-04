package p021rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action0;
/* renamed from: rx.internal.operators.OnSubscribeTimerOnce */
/* loaded from: classes2.dex */
public final class OnSubscribeTimerOnce implements Observable.OnSubscribe<Long> {
    final Scheduler scheduler;
    final long time;
    final TimeUnit unit;

    public OnSubscribeTimerOnce(long time, TimeUnit unit, Scheduler scheduler) {
        this.time = time;
        this.unit = unit;
        this.scheduler = scheduler;
    }

    @Override // p021rx.functions.Action1
    public void call(final Subscriber<? super Long> child) {
        Scheduler.Worker worker = this.scheduler.createWorker();
        child.add(worker);
        worker.schedule(new Action0() { // from class: rx.internal.operators.OnSubscribeTimerOnce.1
            @Override // p021rx.functions.Action0
            public void call() {
                try {
                    child.onNext(0L);
                    child.onCompleted();
                } catch (Throwable t) {
                    Exceptions.throwOrReport(t, child);
                }
            }
        }, this.time, this.unit);
    }
}
