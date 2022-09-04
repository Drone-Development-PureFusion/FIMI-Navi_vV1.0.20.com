package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Notification;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.functions.Action0;
import p021rx.functions.Func1;
import p021rx.functions.Func2;
import p021rx.internal.producers.ProducerArbiter;
import p021rx.observers.Subscribers;
import p021rx.schedulers.Schedulers;
import p021rx.subjects.BehaviorSubject;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.OnSubscribeRedo */
/* loaded from: classes2.dex */
public final class OnSubscribeRedo<T> implements Observable.OnSubscribe<T> {
    static final Func1<Observable<? extends Notification<?>>, Observable<?>> REDO_INFINITE = new Func1<Observable<? extends Notification<?>>, Observable<?>>() { // from class: rx.internal.operators.OnSubscribeRedo.1
        @Override // p021rx.functions.Func1
        /* renamed from: call  reason: avoid collision after fix types in other method */
        public Observable<?> mo1999call(Observable<? extends Notification<?>> ts) {
            return ts.map(new Func1<Notification<?>, Notification<?>>() { // from class: rx.internal.operators.OnSubscribeRedo.1.1
                @Override // p021rx.functions.Func1
                /* renamed from: call  reason: avoid collision after fix types in other method */
                public Notification<?> mo1999call(Notification<?> terminal) {
                    return Notification.createOnNext(null);
                }
            });
        }
    };
    private final Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> controlHandlerFunction;
    private final Scheduler scheduler;
    final Observable<T> source;
    final boolean stopOnComplete;
    final boolean stopOnError;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((Subscriber) ((Subscriber) x0));
    }

    /* renamed from: rx.internal.operators.OnSubscribeRedo$RedoFinite */
    /* loaded from: classes2.dex */
    public static final class RedoFinite implements Func1<Observable<? extends Notification<?>>, Observable<?>> {
        final long count;

        public RedoFinite(long count) {
            this.count = count;
        }

        @Override // p021rx.functions.Func1
        /* renamed from: call  reason: avoid collision after fix types in other method */
        public Observable<?> mo1999call(Observable<? extends Notification<?>> ts) {
            return ts.map(new Func1<Notification<?>, Notification<?>>() { // from class: rx.internal.operators.OnSubscribeRedo.RedoFinite.1
                int num = 0;

                @Override // p021rx.functions.Func1
                /* renamed from: call  reason: avoid collision after fix types in other method */
                public Notification<?> mo1999call(Notification<?> terminalNotification) {
                    if (RedoFinite.this.count != 0) {
                        this.num++;
                        if (this.num <= RedoFinite.this.count) {
                            return Notification.createOnNext(Integer.valueOf(this.num));
                        }
                        return terminalNotification;
                    }
                    return terminalNotification;
                }
            }).dematerialize();
        }
    }

    /* renamed from: rx.internal.operators.OnSubscribeRedo$RetryWithPredicate */
    /* loaded from: classes2.dex */
    public static final class RetryWithPredicate implements Func1<Observable<? extends Notification<?>>, Observable<? extends Notification<?>>> {
        final Func2<Integer, Throwable, Boolean> predicate;

        public RetryWithPredicate(Func2<Integer, Throwable, Boolean> predicate) {
            this.predicate = predicate;
        }

        @Override // p021rx.functions.Func1
        /* renamed from: call  reason: avoid collision after fix types in other method */
        public Observable<? extends Notification<?>> mo1999call(Observable<? extends Notification<?>> ts) {
            return ts.scan(Notification.createOnNext(0), new Func2<Notification<Integer>, Notification<?>, Notification<Integer>>() { // from class: rx.internal.operators.OnSubscribeRedo.RetryWithPredicate.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // p021rx.functions.Func2
                /* renamed from: call  reason: avoid collision after fix types in other method */
                public Notification<Integer> mo1993call(Notification<Integer> n, Notification<?> term) {
                    int value = n.getValue().intValue();
                    if (RetryWithPredicate.this.predicate.mo1993call(Integer.valueOf(value), term.getThrowable()).booleanValue()) {
                        return Notification.createOnNext(Integer.valueOf(value + 1));
                    }
                    return term;
                }
            });
        }
    }

    public static <T> Observable<T> retry(Observable<T> source) {
        return retry(source, REDO_INFINITE);
    }

    public static <T> Observable<T> retry(Observable<T> source, long count) {
        if (count < 0) {
            throw new IllegalArgumentException("count >= 0 expected");
        }
        return count == 0 ? source : retry(source, new RedoFinite(count));
    }

    public static <T> Observable<T> retry(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> notificationHandler) {
        return Observable.create(new OnSubscribeRedo(source, notificationHandler, true, false, Schedulers.trampoline()));
    }

    public static <T> Observable<T> retry(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> notificationHandler, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(source, notificationHandler, true, false, scheduler));
    }

    public static <T> Observable<T> repeat(Observable<T> source) {
        return repeat(source, Schedulers.trampoline());
    }

    public static <T> Observable<T> repeat(Observable<T> source, Scheduler scheduler) {
        return repeat(source, REDO_INFINITE, scheduler);
    }

    public static <T> Observable<T> repeat(Observable<T> source, long count) {
        return repeat(source, count, Schedulers.trampoline());
    }

    public static <T> Observable<T> repeat(Observable<T> source, long count, Scheduler scheduler) {
        if (count == 0) {
            return Observable.empty();
        }
        if (count < 0) {
            throw new IllegalArgumentException("count >= 0 expected");
        }
        return repeat(source, new RedoFinite(count - 1), scheduler);
    }

    public static <T> Observable<T> repeat(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> notificationHandler) {
        return Observable.create(new OnSubscribeRedo(source, notificationHandler, false, true, Schedulers.trampoline()));
    }

    public static <T> Observable<T> repeat(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> notificationHandler, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(source, notificationHandler, false, true, scheduler));
    }

    public static <T> Observable<T> redo(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> notificationHandler, Scheduler scheduler) {
        return Observable.create(new OnSubscribeRedo(source, notificationHandler, false, false, scheduler));
    }

    private OnSubscribeRedo(Observable<T> source, Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> f, boolean stopOnComplete, boolean stopOnError, Scheduler scheduler) {
        this.source = source;
        this.controlHandlerFunction = f;
        this.stopOnComplete = stopOnComplete;
        this.stopOnError = stopOnError;
        this.scheduler = scheduler;
    }

    public void call(final Subscriber<? super T> child) {
        final AtomicBoolean resumeBoundary = new AtomicBoolean(true);
        final AtomicLong consumerCapacity = new AtomicLong();
        final Scheduler.Worker worker = this.scheduler.createWorker();
        child.add(worker);
        final SerialSubscription sourceSubscriptions = new SerialSubscription();
        child.add(sourceSubscriptions);
        final BehaviorSubject<Notification<?>> terminals = BehaviorSubject.create();
        Subscriber<Notification<?>> dummySubscriber = Subscribers.empty();
        terminals.subscribe((Subscriber<? super Notification<?>>) dummySubscriber);
        final ProducerArbiter arbiter = new ProducerArbiter();
        final Action0 subscribeToSource = new Action0() { // from class: rx.internal.operators.OnSubscribeRedo.2
            @Override // p021rx.functions.Action0
            public void call() {
                if (!child.isUnsubscribed()) {
                    Subscriber<T> terminalDelegatingSubscriber = new Subscriber<T>() { // from class: rx.internal.operators.OnSubscribeRedo.2.1
                        boolean done;

                        @Override // p021rx.Observer
                        public void onCompleted() {
                            if (!this.done) {
                                this.done = true;
                                unsubscribe();
                                terminals.onNext(Notification.createOnCompleted());
                            }
                        }

                        @Override // p021rx.Observer
                        public void onError(Throwable e) {
                            if (!this.done) {
                                this.done = true;
                                unsubscribe();
                                terminals.onNext(Notification.createOnError(e));
                            }
                        }

                        @Override // p021rx.Observer
                        public void onNext(T v) {
                            if (!this.done) {
                                child.onNext(v);
                                decrementConsumerCapacity();
                                arbiter.produced(1L);
                            }
                        }

                        private void decrementConsumerCapacity() {
                            long cc;
                            do {
                                cc = consumerCapacity.get();
                                if (cc == Clock.MAX_TIME) {
                                    return;
                                }
                            } while (!consumerCapacity.compareAndSet(cc, cc - 1));
                        }

                        @Override // p021rx.Subscriber
                        public void setProducer(Producer producer) {
                            arbiter.setProducer(producer);
                        }
                    };
                    sourceSubscriptions.set(terminalDelegatingSubscriber);
                    OnSubscribeRedo.this.source.unsafeSubscribe(terminalDelegatingSubscriber);
                }
            }
        };
        final Observable<?> restarts = this.controlHandlerFunction.mo1999call(terminals.lift(new Observable.Operator<Notification<?>, Notification<?>>() { // from class: rx.internal.operators.OnSubscribeRedo.3
            @Override // p021rx.functions.Func1
            /* renamed from: call */
            public Subscriber<? super Notification<?>> mo1999call(final Subscriber<? super Notification<?>> filteredTerminals) {
                return new Subscriber<Notification<?>>(filteredTerminals) { // from class: rx.internal.operators.OnSubscribeRedo.3.1
                    @Override // p021rx.Observer
                    public void onCompleted() {
                        filteredTerminals.onCompleted();
                    }

                    @Override // p021rx.Observer
                    public void onError(Throwable e) {
                        filteredTerminals.onError(e);
                    }

                    @Override // p021rx.Observer
                    public void onNext(Notification<?> t) {
                        if (t.isOnCompleted() && OnSubscribeRedo.this.stopOnComplete) {
                            filteredTerminals.onCompleted();
                        } else if (t.isOnError() && OnSubscribeRedo.this.stopOnError) {
                            filteredTerminals.onError(t.getThrowable());
                        } else {
                            filteredTerminals.onNext(t);
                        }
                    }

                    @Override // p021rx.Subscriber
                    public void setProducer(Producer producer) {
                        producer.request(Clock.MAX_TIME);
                    }
                };
            }
        }));
        worker.schedule(new Action0() { // from class: rx.internal.operators.OnSubscribeRedo.4
            @Override // p021rx.functions.Action0
            public void call() {
                restarts.unsafeSubscribe(new Subscriber<Object>(child) { // from class: rx.internal.operators.OnSubscribeRedo.4.1
                    @Override // p021rx.Observer
                    public void onCompleted() {
                        child.onCompleted();
                    }

                    @Override // p021rx.Observer
                    public void onError(Throwable e) {
                        child.onError(e);
                    }

                    @Override // p021rx.Observer
                    public void onNext(Object t) {
                        if (!child.isUnsubscribed()) {
                            if (consumerCapacity.get() > 0) {
                                worker.schedule(subscribeToSource);
                            } else {
                                resumeBoundary.compareAndSet(false, true);
                            }
                        }
                    }

                    @Override // p021rx.Subscriber
                    public void setProducer(Producer producer) {
                        producer.request(Clock.MAX_TIME);
                    }
                });
            }
        });
        child.setProducer(new Producer() { // from class: rx.internal.operators.OnSubscribeRedo.5
            @Override // p021rx.Producer
            public void request(long n) {
                if (n > 0) {
                    BackpressureUtils.getAndAddRequest(consumerCapacity, n);
                    arbiter.request(n);
                    if (resumeBoundary.compareAndSet(true, false)) {
                        worker.schedule(subscribeToSource);
                    }
                }
            }
        });
    }
}
