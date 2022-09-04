package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
import p021rx.observers.SerializedSubscriber;
import p021rx.observers.Subscribers;
import p021rx.subjects.PublishSubject;
/* renamed from: rx.internal.operators.OperatorDelayWithSelector */
/* loaded from: classes2.dex */
public final class OperatorDelayWithSelector<T, V> implements Observable.Operator<T, T> {
    final Func1<? super T, ? extends Observable<V>> itemDelay;
    final Observable<? extends T> source;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorDelayWithSelector(Observable<? extends T> source, Func1<? super T, ? extends Observable<V>> itemDelay) {
        this.source = source;
        this.itemDelay = itemDelay;
    }

    public Subscriber<? super T> call(Subscriber<? super T> _child) {
        final SerializedSubscriber<T> child = new SerializedSubscriber<>(_child);
        final PublishSubject<Observable<T>> delayedEmissions = PublishSubject.create();
        _child.add(Observable.merge(delayedEmissions).unsafeSubscribe(Subscribers.from(child)));
        return (Subscriber<T>) new Subscriber<T>(_child) { // from class: rx.internal.operators.OperatorDelayWithSelector.1
            @Override // p021rx.Observer
            public void onCompleted() {
                delayedEmissions.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                child.onError(e);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // p021rx.Observer
            public void onNext(final T t) {
                try {
                    delayedEmissions.onNext(OperatorDelayWithSelector.this.itemDelay.mo1999call(t).take(1).defaultIfEmpty(null).map((Func1<V, T>) new Func1<V, T>() { // from class: rx.internal.operators.OperatorDelayWithSelector.1.1
                        @Override // p021rx.functions.Func1
                        /* renamed from: call */
                        public T mo1999call(V v) {
                            return (T) t;
                        }
                    }));
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, this);
                }
            }
        };
    }
}
