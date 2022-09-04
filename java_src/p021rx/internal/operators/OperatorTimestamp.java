package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.schedulers.Timestamped;
/* renamed from: rx.internal.operators.OperatorTimestamp */
/* loaded from: classes2.dex */
public final class OperatorTimestamp<T> implements Observable.Operator<Timestamped<T>, T> {
    final Scheduler scheduler;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorTimestamp(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(final Subscriber<? super Timestamped<T>> o) {
        return (Subscriber<T>) new Subscriber<T>(o) { // from class: rx.internal.operators.OperatorTimestamp.1
            @Override // p021rx.Observer
            public void onCompleted() {
                o.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                o.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                o.onNext(new Timestamped(OperatorTimestamp.this.scheduler.now(), t));
            }
        };
    }
}
