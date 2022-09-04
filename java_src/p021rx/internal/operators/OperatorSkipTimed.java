package p021rx.internal.operators;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.functions.Action0;
/* renamed from: rx.internal.operators.OperatorSkipTimed */
/* loaded from: classes2.dex */
public final class OperatorSkipTimed<T> implements Observable.Operator<T, T> {
    final Scheduler scheduler;
    final long time;
    final TimeUnit unit;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorSkipTimed(long time, TimeUnit unit, Scheduler scheduler) {
        this.time = time;
        this.unit = unit;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> child) {
        Scheduler.Worker worker = this.scheduler.createWorker();
        child.add(worker);
        final AtomicBoolean gate = new AtomicBoolean();
        worker.schedule(new Action0() { // from class: rx.internal.operators.OperatorSkipTimed.1
            @Override // p021rx.functions.Action0
            public void call() {
                gate.set(true);
            }
        }, this.time, this.unit);
        return (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorSkipTimed.2
            @Override // p021rx.Observer
            public void onNext(T t) {
                if (gate.get()) {
                    child.onNext(t);
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                try {
                    child.onError(e);
                } finally {
                    unsubscribe();
                }
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                try {
                    child.onCompleted();
                } finally {
                    unsubscribe();
                }
            }
        };
    }
}
