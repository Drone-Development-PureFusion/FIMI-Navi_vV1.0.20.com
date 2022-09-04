package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.functions.Action0;
import p021rx.functions.Func2;
import p021rx.internal.producers.ProducerArbiter;
import p021rx.schedulers.Schedulers;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.OperatorRetryWithPredicate */
/* loaded from: classes2.dex */
public final class OperatorRetryWithPredicate<T> implements Observable.Operator<T, Observable<T>> {
    final Func2<Integer, Throwable, Boolean> predicate;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorRetryWithPredicate(Func2<Integer, Throwable, Boolean> predicate) {
        this.predicate = predicate;
    }

    public Subscriber<? super Observable<T>> call(Subscriber<? super T> child) {
        Scheduler.Worker inner = Schedulers.trampoline().createWorker();
        child.add(inner);
        SerialSubscription serialSubscription = new SerialSubscription();
        child.add(serialSubscription);
        ProducerArbiter pa = new ProducerArbiter();
        child.setProducer(pa);
        return new SourceSubscriber(child, this.predicate, inner, serialSubscription, pa);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorRetryWithPredicate$SourceSubscriber */
    /* loaded from: classes2.dex */
    public static final class SourceSubscriber<T> extends Subscriber<Observable<T>> {
        final AtomicInteger attempts = new AtomicInteger();
        final Subscriber<? super T> child;
        final Scheduler.Worker inner;

        /* renamed from: pa */
        final ProducerArbiter f1530pa;
        final Func2<Integer, Throwable, Boolean> predicate;
        final SerialSubscription serialSubscription;

        @Override // p021rx.Observer
        public /* bridge */ /* synthetic */ void onNext(Object x0) {
            onNext((Observable) ((Observable) x0));
        }

        public SourceSubscriber(Subscriber<? super T> child, Func2<Integer, Throwable, Boolean> predicate, Scheduler.Worker inner, SerialSubscription serialSubscription, ProducerArbiter pa) {
            this.child = child;
            this.predicate = predicate;
            this.inner = inner;
            this.serialSubscription = serialSubscription;
            this.f1530pa = pa;
        }

        @Override // p021rx.Observer
        public void onCompleted() {
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.child.onError(e);
        }

        public void onNext(final Observable<T> o) {
            this.inner.schedule(new Action0() { // from class: rx.internal.operators.OperatorRetryWithPredicate.SourceSubscriber.1
                @Override // p021rx.functions.Action0
                public void call() {
                    SourceSubscriber.this.attempts.incrementAndGet();
                    Subscriber<T> subscriber = new Subscriber<T>() { // from class: rx.internal.operators.OperatorRetryWithPredicate.SourceSubscriber.1.1
                        boolean done;

                        @Override // p021rx.Observer
                        public void onCompleted() {
                            if (!this.done) {
                                this.done = true;
                                SourceSubscriber.this.child.onCompleted();
                            }
                        }

                        @Override // p021rx.Observer
                        public void onError(Throwable e) {
                            if (!this.done) {
                                this.done = true;
                                if (SourceSubscriber.this.predicate.mo1993call(Integer.valueOf(SourceSubscriber.this.attempts.get()), e).booleanValue() && !SourceSubscriber.this.inner.isUnsubscribed()) {
                                    SourceSubscriber.this.inner.schedule(this);
                                } else {
                                    SourceSubscriber.this.child.onError(e);
                                }
                            }
                        }

                        @Override // p021rx.Observer
                        public void onNext(T v) {
                            if (!this.done) {
                                SourceSubscriber.this.child.onNext(v);
                                SourceSubscriber.this.f1530pa.produced(1L);
                            }
                        }

                        @Override // p021rx.Subscriber
                        public void setProducer(Producer p) {
                            SourceSubscriber.this.f1530pa.setProducer(p);
                        }
                    };
                    SourceSubscriber.this.serialSubscription.set(subscriber);
                    o.unsafeSubscribe(subscriber);
                }
            });
        }
    }
}
