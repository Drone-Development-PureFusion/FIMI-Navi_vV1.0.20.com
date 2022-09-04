package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.schedulers.TimeInterval;
/* renamed from: rx.internal.operators.OperatorTimeInterval */
/* loaded from: classes2.dex */
public final class OperatorTimeInterval<T> implements Observable.Operator<TimeInterval<T>, T> {
    final Scheduler scheduler;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorTimeInterval(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(final Subscriber<? super TimeInterval<T>> subscriber) {
        return (Subscriber<T>) new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorTimeInterval.1
            private long lastTimestamp;

            {
                this.lastTimestamp = OperatorTimeInterval.this.scheduler.now();
            }

            @Override // p021rx.Observer
            public void onNext(T args) {
                long nowTimestamp = OperatorTimeInterval.this.scheduler.now();
                subscriber.onNext(new TimeInterval(nowTimestamp - this.lastTimestamp, args));
                this.lastTimestamp = nowTimestamp;
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                subscriber.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                subscriber.onError(e);
            }
        };
    }
}
