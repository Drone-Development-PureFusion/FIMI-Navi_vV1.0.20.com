package p021rx.internal.util;

import java.util.concurrent.atomic.AtomicBoolean;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action0;
import p021rx.functions.Func1;
import p021rx.internal.producers.SingleProducer;
import p021rx.internal.schedulers.EventLoopsScheduler;
import p021rx.observers.Subscribers;
import p021rx.schedulers.Schedulers;
/* renamed from: rx.internal.util.ScalarSynchronousObservable */
/* loaded from: classes2.dex */
public final class ScalarSynchronousObservable<T> extends Observable<T> {
    static final Func1<Action0, Subscription> COMPUTATION_ONSCHEDULE = new Func1<Action0, Subscription>() { // from class: rx.internal.util.ScalarSynchronousObservable.1
        final EventLoopsScheduler els = (EventLoopsScheduler) Schedulers.computation();

        @Override // p021rx.functions.Func1
        /* renamed from: call  reason: avoid collision after fix types in other method */
        public Subscription mo1999call(Action0 t) {
            return this.els.scheduleDirect(t);
        }
    };
    static final boolean STRONG_MODE;

    /* renamed from: t */
    final T f1551t;

    static {
        String wp = System.getProperty("rx.just.strong-mode", "false");
        STRONG_MODE = Boolean.valueOf(wp).booleanValue();
    }

    static <T> Producer createProducer(Subscriber<? super T> s, T v) {
        return STRONG_MODE ? new SingleProducer(s, v) : new WeakSingleProducer(s, v);
    }

    public static <T> ScalarSynchronousObservable<T> create(T t) {
        return new ScalarSynchronousObservable<>(t);
    }

    protected ScalarSynchronousObservable(final T t) {
        super(new Observable.OnSubscribe<T>() { // from class: rx.internal.util.ScalarSynchronousObservable.2
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((Subscriber) ((Subscriber) x0));
            }

            public void call(Subscriber<? super T> s) {
                s.setProducer(ScalarSynchronousObservable.createProducer(s, t));
            }
        });
        this.f1551t = t;
    }

    public T get() {
        return this.f1551t;
    }

    public Observable<T> scalarScheduleOn(final Scheduler scheduler) {
        Func1<Action0, Subscription> onSchedule;
        if (scheduler instanceof EventLoopsScheduler) {
            onSchedule = COMPUTATION_ONSCHEDULE;
        } else {
            onSchedule = new Func1<Action0, Subscription>() { // from class: rx.internal.util.ScalarSynchronousObservable.3
                @Override // p021rx.functions.Func1
                /* renamed from: call  reason: avoid collision after fix types in other method */
                public Subscription mo1999call(final Action0 a) {
                    final Scheduler.Worker w = scheduler.createWorker();
                    w.schedule(new Action0() { // from class: rx.internal.util.ScalarSynchronousObservable.3.1
                        @Override // p021rx.functions.Action0
                        public void call() {
                            try {
                                a.call();
                            } finally {
                                w.unsubscribe();
                            }
                        }
                    });
                    return w;
                }
            };
        }
        return create((Observable.OnSubscribe) new ScalarAsyncOnSubscribe(this.f1551t, onSchedule));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.util.ScalarSynchronousObservable$ScalarAsyncOnSubscribe */
    /* loaded from: classes2.dex */
    public static final class ScalarAsyncOnSubscribe<T> implements Observable.OnSubscribe<T> {
        final Func1<Action0, Subscription> onSchedule;
        final T value;

        @Override // p021rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object x0) {
            call((Subscriber) ((Subscriber) x0));
        }

        ScalarAsyncOnSubscribe(T value, Func1<Action0, Subscription> onSchedule) {
            this.value = value;
            this.onSchedule = onSchedule;
        }

        public void call(Subscriber<? super T> s) {
            s.setProducer(new ScalarAsyncProducer(s, this.value, this.onSchedule));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.util.ScalarSynchronousObservable$ScalarAsyncProducer */
    /* loaded from: classes2.dex */
    public static final class ScalarAsyncProducer<T> extends AtomicBoolean implements Producer, Action0 {
        private static final long serialVersionUID = -2466317989629281651L;
        final Subscriber<? super T> actual;
        final Func1<Action0, Subscription> onSchedule;
        final T value;

        public ScalarAsyncProducer(Subscriber<? super T> actual, T value, Func1<Action0, Subscription> onSchedule) {
            this.actual = actual;
            this.value = value;
            this.onSchedule = onSchedule;
        }

        @Override // p021rx.Producer
        public void request(long n) {
            if (n < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + n);
            }
            if (n != 0 && compareAndSet(false, true)) {
                this.actual.add(this.onSchedule.mo1999call(this));
            }
        }

        @Override // p021rx.functions.Action0
        public void call() {
            Subscriber<? super T> a = this.actual;
            if (!a.isUnsubscribed()) {
                Object obj = (T) this.value;
                try {
                    a.onNext(obj);
                    if (!a.isUnsubscribed()) {
                        a.onCompleted();
                    }
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, a, obj);
                }
            }
        }

        @Override // java.util.concurrent.atomic.AtomicBoolean
        public String toString() {
            return "ScalarAsyncProducer[" + this.value + ", " + get() + "]";
        }
    }

    public <R> Observable<R> scalarFlatMap(final Func1<? super T, ? extends Observable<? extends R>> func) {
        return create((Observable.OnSubscribe) new Observable.OnSubscribe<R>() { // from class: rx.internal.util.ScalarSynchronousObservable.4
            @Override // p021rx.functions.Action1
            public void call(Subscriber<? super R> child) {
                Observable observable = (Observable) func.mo1999call(ScalarSynchronousObservable.this.f1551t);
                if (observable instanceof ScalarSynchronousObservable) {
                    child.setProducer(ScalarSynchronousObservable.createProducer(child, ((ScalarSynchronousObservable) observable).f1551t));
                } else {
                    observable.unsafeSubscribe(Subscribers.wrap(child));
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.util.ScalarSynchronousObservable$WeakSingleProducer */
    /* loaded from: classes2.dex */
    public static final class WeakSingleProducer<T> implements Producer {
        final Subscriber<? super T> actual;
        boolean once;
        final T value;

        public WeakSingleProducer(Subscriber<? super T> actual, T value) {
            this.actual = actual;
            this.value = value;
        }

        @Override // p021rx.Producer
        public void request(long n) {
            if (!this.once) {
                if (n < 0) {
                    throw new IllegalStateException("n >= required but it was " + n);
                }
                if (n != 0) {
                    this.once = true;
                    Subscriber<? super T> a = this.actual;
                    if (!a.isUnsubscribed()) {
                        Object obj = (T) this.value;
                        try {
                            a.onNext(obj);
                            if (!a.isUnsubscribed()) {
                                a.onCompleted();
                            }
                        } catch (Throwable e) {
                            Exceptions.throwOrReport(e, a, obj);
                        }
                    }
                }
            }
        }
    }
}
