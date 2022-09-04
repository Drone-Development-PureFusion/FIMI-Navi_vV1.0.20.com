package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func0;
import p021rx.functions.Func1;
import p021rx.internal.operators.OperatorTimeoutBase;
import p021rx.schedulers.Schedulers;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.OperatorTimeoutWithSelector */
/* loaded from: classes2.dex */
public class OperatorTimeoutWithSelector<T, U, V> extends OperatorTimeoutBase<T> {
    @Override // p021rx.internal.operators.OperatorTimeoutBase
    public /* bridge */ /* synthetic */ Subscriber call(Subscriber x0) {
        return super.call(x0);
    }

    public OperatorTimeoutWithSelector(final Func0<? extends Observable<U>> firstTimeoutSelector, final Func1<? super T, ? extends Observable<V>> timeoutSelector, Observable<? extends T> other) {
        super(new OperatorTimeoutBase.FirstTimeoutStub<T>() { // from class: rx.internal.operators.OperatorTimeoutWithSelector.1
            @Override // p021rx.functions.Func3
            public /* bridge */ /* synthetic */ Subscription call(Object x0, Long l, Scheduler.Worker worker) {
                return call((OperatorTimeoutBase.TimeoutSubscriber) ((OperatorTimeoutBase.TimeoutSubscriber) x0), l, worker);
            }

            public Subscription call(final OperatorTimeoutBase.TimeoutSubscriber<T> timeoutSubscriber, final Long seqId, Scheduler.Worker inner) {
                if (Func0.this != null) {
                    try {
                        Observable<U> o = (Observable) Func0.this.mo1996call();
                        return o.unsafeSubscribe(new Subscriber<U>() { // from class: rx.internal.operators.OperatorTimeoutWithSelector.1.1
                            @Override // p021rx.Observer
                            public void onCompleted() {
                                timeoutSubscriber.onTimeout(seqId.longValue());
                            }

                            @Override // p021rx.Observer
                            public void onError(Throwable e) {
                                timeoutSubscriber.onError(e);
                            }

                            @Override // p021rx.Observer
                            public void onNext(U t) {
                                timeoutSubscriber.onTimeout(seqId.longValue());
                            }
                        });
                    } catch (Throwable t) {
                        Exceptions.throwOrReport(t, timeoutSubscriber);
                        return Subscriptions.unsubscribed();
                    }
                }
                return Subscriptions.unsubscribed();
            }
        }, new OperatorTimeoutBase.TimeoutStub<T>() { // from class: rx.internal.operators.OperatorTimeoutWithSelector.2
            @Override // p021rx.functions.Func4
            public /* bridge */ /* synthetic */ Subscription call(Object x0, Long l, Object x2, Scheduler.Worker worker) {
                return call((OperatorTimeoutBase.TimeoutSubscriber<Long>) x0, l, (Long) x2, worker);
            }

            public Subscription call(final OperatorTimeoutBase.TimeoutSubscriber<T> timeoutSubscriber, final Long seqId, T value, Scheduler.Worker inner) {
                try {
                    Observable<V> o = (Observable) Func1.this.mo1999call(value);
                    return o.unsafeSubscribe(new Subscriber<V>() { // from class: rx.internal.operators.OperatorTimeoutWithSelector.2.1
                        @Override // p021rx.Observer
                        public void onCompleted() {
                            timeoutSubscriber.onTimeout(seqId.longValue());
                        }

                        @Override // p021rx.Observer
                        public void onError(Throwable e) {
                            timeoutSubscriber.onError(e);
                        }

                        @Override // p021rx.Observer
                        public void onNext(V t) {
                            timeoutSubscriber.onTimeout(seqId.longValue());
                        }
                    });
                } catch (Throwable t) {
                    Exceptions.throwOrReport(t, timeoutSubscriber);
                    return Subscriptions.unsubscribed();
                }
            }
        }, other, Schedulers.immediate());
    }
}
