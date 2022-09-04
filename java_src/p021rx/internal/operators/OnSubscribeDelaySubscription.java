package p021rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.functions.Action0;
import p021rx.observers.Subscribers;
/* renamed from: rx.internal.operators.OnSubscribeDelaySubscription */
/* loaded from: classes2.dex */
public final class OnSubscribeDelaySubscription<T> implements Observable.OnSubscribe<T> {
    final Scheduler scheduler;
    final Observable<? extends T> source;
    final long time;
    final TimeUnit unit;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((Subscriber) ((Subscriber) x0));
    }

    public OnSubscribeDelaySubscription(Observable<? extends T> source, long time, TimeUnit unit, Scheduler scheduler) {
        this.source = source;
        this.time = time;
        this.unit = unit;
        this.scheduler = scheduler;
    }

    public void call(final Subscriber<? super T> s) {
        Scheduler.Worker worker = this.scheduler.createWorker();
        s.add(worker);
        worker.schedule(new Action0() { // from class: rx.internal.operators.OnSubscribeDelaySubscription.1
            @Override // p021rx.functions.Action0
            public void call() {
                if (!s.isUnsubscribed()) {
                    OnSubscribeDelaySubscription.this.source.unsafeSubscribe(Subscribers.wrap(s));
                }
            }
        }, this.time, this.unit);
    }
}
