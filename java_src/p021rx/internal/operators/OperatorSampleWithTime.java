package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action0;
import p021rx.observers.SerializedSubscriber;
/* renamed from: rx.internal.operators.OperatorSampleWithTime */
/* loaded from: classes2.dex */
public final class OperatorSampleWithTime<T> implements Observable.Operator<T, T> {
    final Scheduler scheduler;
    final long time;
    final TimeUnit unit;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorSampleWithTime(long time, TimeUnit unit, Scheduler scheduler) {
        this.time = time;
        this.unit = unit;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        SerializedSubscriber<T> s = new SerializedSubscriber<>(child);
        Scheduler.Worker worker = this.scheduler.createWorker();
        child.add(worker);
        SamplerSubscriber<T> sampler = new SamplerSubscriber<>(s);
        child.add(sampler);
        worker.schedulePeriodically(sampler, this.time, this.time, this.unit);
        return sampler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorSampleWithTime$SamplerSubscriber */
    /* loaded from: classes2.dex */
    public static final class SamplerSubscriber<T> extends Subscriber<T> implements Action0 {
        private static final Object EMPTY_TOKEN = new Object();
        private final Subscriber<? super T> subscriber;
        final AtomicReference<Object> value = new AtomicReference<>(EMPTY_TOKEN);

        public SamplerSubscriber(Subscriber<? super T> subscriber) {
            this.subscriber = subscriber;
        }

        @Override // p021rx.Subscriber
        public void onStart() {
            request(Clock.MAX_TIME);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.value.set(t);
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.subscriber.onError(e);
            unsubscribe();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.subscriber.onCompleted();
            unsubscribe();
        }

        @Override // p021rx.functions.Action0
        public void call() {
            Object localValue = this.value.getAndSet(EMPTY_TOKEN);
            if (localValue != EMPTY_TOKEN) {
                try {
                    this.subscriber.onNext(localValue);
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, this);
                }
            }
        }
    }
}
