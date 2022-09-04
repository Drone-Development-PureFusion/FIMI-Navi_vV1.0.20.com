package p021rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.functions.Action0;
/* renamed from: rx.internal.operators.OperatorDelay */
/* loaded from: classes2.dex */
public final class OperatorDelay<T> implements Observable.Operator<T, T> {
    final long delay;
    final Scheduler scheduler;
    final TimeUnit unit;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorDelay(long delay, TimeUnit unit, Scheduler scheduler) {
        this.delay = delay;
        this.unit = unit;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        Scheduler.Worker worker = this.scheduler.createWorker();
        child.add(worker);
        return new C29291(child, worker, child);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorDelay$1 */
    /* loaded from: classes2.dex */
    public class C29291 extends Subscriber<T> {
        boolean done;
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ Scheduler.Worker val$worker;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C29291(Subscriber subscriber, Scheduler.Worker worker, Subscriber subscriber2) {
            super(subscriber);
            this.val$worker = worker;
            this.val$child = subscriber2;
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.val$worker.schedule(new Action0() { // from class: rx.internal.operators.OperatorDelay.1.1
                @Override // p021rx.functions.Action0
                public void call() {
                    if (!C29291.this.done) {
                        C29291.this.done = true;
                        C29291.this.val$child.onCompleted();
                    }
                }
            }, OperatorDelay.this.delay, OperatorDelay.this.unit);
        }

        @Override // p021rx.Observer
        public void onError(final Throwable e) {
            this.val$worker.schedule(new Action0() { // from class: rx.internal.operators.OperatorDelay.1.2
                @Override // p021rx.functions.Action0
                public void call() {
                    if (!C29291.this.done) {
                        C29291.this.done = true;
                        C29291.this.val$child.onError(e);
                        C29291.this.val$worker.unsubscribe();
                    }
                }
            });
        }

        @Override // p021rx.Observer
        public void onNext(final T t) {
            this.val$worker.schedule(new Action0() { // from class: rx.internal.operators.OperatorDelay.1.3
                /* JADX WARN: Multi-variable type inference failed */
                @Override // p021rx.functions.Action0
                public void call() {
                    if (!C29291.this.done) {
                        C29291.this.val$child.onNext(t);
                    }
                }
            }, OperatorDelay.this.delay, OperatorDelay.this.unit);
        }
    }
}
