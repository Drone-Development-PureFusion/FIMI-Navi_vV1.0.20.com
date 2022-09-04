package p021rx.internal.operators;

import java.util.Arrays;
import p021rx.Observable;
import p021rx.Observer;
import p021rx.Subscriber;
import p021rx.exceptions.CompositeException;
import p021rx.exceptions.Exceptions;
/* renamed from: rx.internal.operators.OperatorDoOnEach */
/* loaded from: classes2.dex */
public class OperatorDoOnEach<T> implements Observable.Operator<T, T> {
    final Observer<? super T> doOnEachObserver;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorDoOnEach(Observer<? super T> doOnEachObserver) {
        this.doOnEachObserver = doOnEachObserver;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> observer) {
        return (Subscriber<T>) new Subscriber<T>(observer) { // from class: rx.internal.operators.OperatorDoOnEach.1
            private boolean done = false;

            @Override // p021rx.Observer
            public void onCompleted() {
                if (!this.done) {
                    try {
                        OperatorDoOnEach.this.doOnEachObserver.onCompleted();
                        this.done = true;
                        observer.onCompleted();
                    } catch (Throwable e) {
                        Exceptions.throwOrReport(e, this);
                    }
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                Exceptions.throwIfFatal(e);
                if (!this.done) {
                    this.done = true;
                    try {
                        OperatorDoOnEach.this.doOnEachObserver.onError(e);
                        observer.onError(e);
                    } catch (Throwable e2) {
                        Exceptions.throwIfFatal(e2);
                        observer.onError(new CompositeException(Arrays.asList(e, e2)));
                    }
                }
            }

            @Override // p021rx.Observer
            public void onNext(T value) {
                if (!this.done) {
                    try {
                        OperatorDoOnEach.this.doOnEachObserver.onNext(value);
                        observer.onNext(value);
                    } catch (Throwable e) {
                        Exceptions.throwOrReport(e, this, value);
                    }
                }
            }
        };
    }
}
