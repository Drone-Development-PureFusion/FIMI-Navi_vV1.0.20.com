package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
import p021rx.internal.producers.ProducerArbiter;
import p021rx.plugins.RxJavaPlugins;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.OperatorOnErrorResumeNextViaFunction */
/* loaded from: classes2.dex */
public final class OperatorOnErrorResumeNextViaFunction<T> implements Observable.Operator<T, T> {
    final Func1<Throwable, ? extends Observable<? extends T>> resumeFunction;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public static <T> OperatorOnErrorResumeNextViaFunction<T> withSingle(final Func1<Throwable, ? extends T> resumeFunction) {
        return new OperatorOnErrorResumeNextViaFunction<>(new Func1<Throwable, Observable<? extends T>>() { // from class: rx.internal.operators.OperatorOnErrorResumeNextViaFunction.1
            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable<? extends T> mo1999call(Throwable t) {
                return Observable.just(Func1.this.mo1999call(t));
            }
        });
    }

    public static <T> OperatorOnErrorResumeNextViaFunction<T> withOther(final Observable<? extends T> other) {
        return new OperatorOnErrorResumeNextViaFunction<>(new Func1<Throwable, Observable<? extends T>>() { // from class: rx.internal.operators.OperatorOnErrorResumeNextViaFunction.2
            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable<? extends T> mo1999call(Throwable t) {
                return Observable.this;
            }
        });
    }

    public static <T> OperatorOnErrorResumeNextViaFunction<T> withException(final Observable<? extends T> other) {
        return new OperatorOnErrorResumeNextViaFunction<>(new Func1<Throwable, Observable<? extends T>>() { // from class: rx.internal.operators.OperatorOnErrorResumeNextViaFunction.3
            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable<? extends T> mo1999call(Throwable t) {
                return t instanceof Exception ? Observable.this : Observable.error(t);
            }
        });
    }

    public OperatorOnErrorResumeNextViaFunction(Func1<Throwable, ? extends Observable<? extends T>> f) {
        this.resumeFunction = f;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> child) {
        final ProducerArbiter pa = new ProducerArbiter();
        final SerialSubscription ssub = new SerialSubscription();
        Subscriber subscriber = (Subscriber<T>) new Subscriber<T>() { // from class: rx.internal.operators.OperatorOnErrorResumeNextViaFunction.4
            private boolean done;
            long produced;

            @Override // p021rx.Observer
            public void onCompleted() {
                if (!this.done) {
                    this.done = true;
                    child.onCompleted();
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                if (this.done) {
                    Exceptions.throwIfFatal(e);
                    RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
                    return;
                }
                this.done = true;
                try {
                    unsubscribe();
                    Subscriber<T> next = new Subscriber<T>() { // from class: rx.internal.operators.OperatorOnErrorResumeNextViaFunction.4.1
                        @Override // p021rx.Observer
                        public void onNext(T t) {
                            child.onNext(t);
                        }

                        @Override // p021rx.Observer
                        public void onError(Throwable e2) {
                            child.onError(e2);
                        }

                        @Override // p021rx.Observer
                        public void onCompleted() {
                            child.onCompleted();
                        }

                        @Override // p021rx.Subscriber
                        public void setProducer(Producer producer) {
                            pa.setProducer(producer);
                        }
                    };
                    ssub.set(next);
                    long p = this.produced;
                    if (p != 0) {
                        pa.produced(p);
                    }
                    Observable<? extends T> resume = OperatorOnErrorResumeNextViaFunction.this.resumeFunction.mo1999call(e);
                    resume.unsafeSubscribe(next);
                } catch (Throwable e2) {
                    Exceptions.throwOrReport(e2, child);
                }
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                if (!this.done) {
                    this.produced++;
                    child.onNext(t);
                }
            }

            @Override // p021rx.Subscriber
            public void setProducer(Producer producer) {
                pa.setProducer(producer);
            }
        };
        ssub.set(subscriber);
        child.add(ssub);
        child.setProducer(pa);
        return subscriber;
    }
}
