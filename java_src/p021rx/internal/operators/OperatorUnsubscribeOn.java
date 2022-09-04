package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.functions.Action0;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.OperatorUnsubscribeOn */
/* loaded from: classes2.dex */
public class OperatorUnsubscribeOn<T> implements Observable.Operator<T, T> {
    final Scheduler scheduler;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorUnsubscribeOn(Scheduler scheduler) {
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        final Subscriber subscriber2 = (Subscriber<T>) new Subscriber<T>() { // from class: rx.internal.operators.OperatorUnsubscribeOn.1
            @Override // p021rx.Observer
            public void onCompleted() {
                subscriber.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                subscriber.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                subscriber.onNext(t);
            }
        };
        subscriber.add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorUnsubscribeOn.2
            @Override // p021rx.functions.Action0
            public void call() {
                final Scheduler.Worker inner = OperatorUnsubscribeOn.this.scheduler.createWorker();
                inner.schedule(new Action0() { // from class: rx.internal.operators.OperatorUnsubscribeOn.2.1
                    @Override // p021rx.functions.Action0
                    public void call() {
                        subscriber2.unsubscribe();
                        inner.unsubscribe();
                    }
                });
            }
        }));
        return subscriber2;
    }
}
