package p021rx.internal.operators;

import java.util.concurrent.TimeUnit;
import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.functions.Action0;
import p021rx.observers.SerializedSubscriber;
/* renamed from: rx.internal.operators.OperatorTakeTimed */
/* loaded from: classes2.dex */
public final class OperatorTakeTimed<T> implements Observable.Operator<T, T> {
    final Scheduler scheduler;
    final long time;
    final TimeUnit unit;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorTakeTimed(long time, TimeUnit unit, Scheduler scheduler) {
        this.time = time;
        this.unit = unit;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        Scheduler.Worker worker = this.scheduler.createWorker();
        child.add(worker);
        TakeSubscriber<T> ts = new TakeSubscriber<>(new SerializedSubscriber(child));
        worker.schedule(ts, this.time, this.unit);
        return ts;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorTakeTimed$TakeSubscriber */
    /* loaded from: classes2.dex */
    public static final class TakeSubscriber<T> extends Subscriber<T> implements Action0 {
        final Subscriber<? super T> child;

        public TakeSubscriber(Subscriber<? super T> child) {
            super(child);
            this.child = child;
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.child.onNext(t);
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.child.onError(e);
            unsubscribe();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.child.onCompleted();
            unsubscribe();
        }

        @Override // p021rx.functions.Action0
        public void call() {
            onCompleted();
        }
    }
}
