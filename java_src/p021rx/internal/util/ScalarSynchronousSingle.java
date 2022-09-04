package p021rx.internal.util;

import p021rx.Scheduler;
import p021rx.Single;
import p021rx.SingleSubscriber;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.functions.Action0;
import p021rx.functions.Func1;
import p021rx.internal.schedulers.EventLoopsScheduler;
/* renamed from: rx.internal.util.ScalarSynchronousSingle */
/* loaded from: classes2.dex */
public final class ScalarSynchronousSingle<T> extends Single<T> {
    final T value;

    public static final <T> ScalarSynchronousSingle<T> create(T t) {
        return new ScalarSynchronousSingle<>(t);
    }

    protected ScalarSynchronousSingle(final T t) {
        super(new Single.OnSubscribe<T>() { // from class: rx.internal.util.ScalarSynchronousSingle.1
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((SingleSubscriber) ((SingleSubscriber) x0));
            }

            public void call(SingleSubscriber<? super T> te) {
                te.onSuccess((Object) t);
            }
        });
        this.value = t;
    }

    public T get() {
        return this.value;
    }

    public Single<T> scalarScheduleOn(Scheduler scheduler) {
        if (scheduler instanceof EventLoopsScheduler) {
            EventLoopsScheduler es = (EventLoopsScheduler) scheduler;
            return create((Single.OnSubscribe) new DirectScheduledEmission(es, this.value));
        }
        return create((Single.OnSubscribe) new NormalScheduledEmission(scheduler, this.value));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.util.ScalarSynchronousSingle$DirectScheduledEmission */
    /* loaded from: classes2.dex */
    public static final class DirectScheduledEmission<T> implements Single.OnSubscribe<T> {

        /* renamed from: es */
        private final EventLoopsScheduler f1552es;
        private final T value;

        @Override // p021rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object x0) {
            call((SingleSubscriber) ((SingleSubscriber) x0));
        }

        DirectScheduledEmission(EventLoopsScheduler es, T value) {
            this.f1552es = es;
            this.value = value;
        }

        public void call(SingleSubscriber<? super T> singleSubscriber) {
            singleSubscriber.add(this.f1552es.scheduleDirect(new ScalarSynchronousSingleAction(singleSubscriber, this.value)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.util.ScalarSynchronousSingle$NormalScheduledEmission */
    /* loaded from: classes2.dex */
    public static final class NormalScheduledEmission<T> implements Single.OnSubscribe<T> {
        private final Scheduler scheduler;
        private final T value;

        @Override // p021rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object x0) {
            call((SingleSubscriber) ((SingleSubscriber) x0));
        }

        NormalScheduledEmission(Scheduler scheduler, T value) {
            this.scheduler = scheduler;
            this.value = value;
        }

        public void call(SingleSubscriber<? super T> singleSubscriber) {
            Scheduler.Worker worker = this.scheduler.createWorker();
            singleSubscriber.add(worker);
            worker.schedule(new ScalarSynchronousSingleAction(singleSubscriber, this.value));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.util.ScalarSynchronousSingle$ScalarSynchronousSingleAction */
    /* loaded from: classes2.dex */
    public static final class ScalarSynchronousSingleAction<T> implements Action0 {
        private final SingleSubscriber<? super T> subscriber;
        private final T value;

        ScalarSynchronousSingleAction(SingleSubscriber<? super T> subscriber, T value) {
            this.subscriber = subscriber;
            this.value = value;
        }

        @Override // p021rx.functions.Action0
        public void call() {
            try {
                this.subscriber.onSuccess((T) this.value);
            } catch (Throwable t) {
                this.subscriber.onError(t);
            }
        }
    }

    public <R> Single<R> scalarFlatMap(final Func1<? super T, ? extends Single<? extends R>> func) {
        return create((Single.OnSubscribe) new Single.OnSubscribe<R>() { // from class: rx.internal.util.ScalarSynchronousSingle.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // p021rx.functions.Action1
            public void call(final SingleSubscriber<? super R> child) {
                Single single = (Single) func.mo1999call(ScalarSynchronousSingle.this.value);
                if (single instanceof ScalarSynchronousSingle) {
                    child.onSuccess(((ScalarSynchronousSingle) single).value);
                    return;
                }
                Subscription subscription = new Subscriber<R>() { // from class: rx.internal.util.ScalarSynchronousSingle.2.1
                    @Override // p021rx.Observer
                    public void onCompleted() {
                    }

                    @Override // p021rx.Observer
                    public void onError(Throwable e) {
                        child.onError(e);
                    }

                    @Override // p021rx.Observer
                    public void onNext(R r) {
                        child.onSuccess(r);
                    }
                };
                child.add(subscription);
                single.unsafeSubscribe(subscription);
            }
        });
    }
}
