package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
import p021rx.internal.producers.SingleDelayedProducer;
/* renamed from: rx.internal.operators.OperatorAll */
/* loaded from: classes2.dex */
public final class OperatorAll<T> implements Observable.Operator<Boolean, T> {
    final Func1<? super T, Boolean> predicate;

    public OperatorAll(Func1<? super T, Boolean> predicate) {
        this.predicate = predicate;
    }

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public Subscriber<? super T> mo1999call(final Subscriber<? super Boolean> child) {
        final SingleDelayedProducer<Boolean> producer = new SingleDelayedProducer<>(child);
        Subscriber subscriber = (Subscriber<T>) new Subscriber<T>() { // from class: rx.internal.operators.OperatorAll.1
            boolean done;

            @Override // p021rx.Observer
            public void onNext(T t) {
                try {
                    Boolean result = OperatorAll.this.predicate.mo1999call(t);
                    if (!result.booleanValue() && !this.done) {
                        this.done = true;
                        producer.setValue(false);
                        unsubscribe();
                    }
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, this, t);
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                child.onError(e);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                if (!this.done) {
                    this.done = true;
                    producer.setValue(true);
                }
            }
        };
        child.add(subscriber);
        child.setProducer(producer);
        return subscriber;
    }
}
