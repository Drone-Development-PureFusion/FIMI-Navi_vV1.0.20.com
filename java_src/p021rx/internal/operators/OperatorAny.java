package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
import p021rx.internal.producers.SingleDelayedProducer;
/* renamed from: rx.internal.operators.OperatorAny */
/* loaded from: classes2.dex */
public final class OperatorAny<T> implements Observable.Operator<Boolean, T> {
    final Func1<? super T, Boolean> predicate;
    final boolean returnOnEmpty;

    public OperatorAny(Func1<? super T, Boolean> predicate, boolean returnOnEmpty) {
        this.predicate = predicate;
        this.returnOnEmpty = returnOnEmpty;
    }

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public Subscriber<? super T> mo1999call(final Subscriber<? super Boolean> child) {
        final SingleDelayedProducer<Boolean> producer = new SingleDelayedProducer<>(child);
        Subscriber subscriber = (Subscriber<T>) new Subscriber<T>() { // from class: rx.internal.operators.OperatorAny.1
            boolean done;
            boolean hasElements;

            @Override // p021rx.Observer
            public void onNext(T t) {
                this.hasElements = true;
                try {
                    boolean result = OperatorAny.this.predicate.mo1999call(t).booleanValue();
                    if (result && !this.done) {
                        this.done = true;
                        producer.setValue(Boolean.valueOf(!OperatorAny.this.returnOnEmpty));
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
                    if (this.hasElements) {
                        producer.setValue(false);
                    } else {
                        producer.setValue(Boolean.valueOf(OperatorAny.this.returnOnEmpty));
                    }
                }
            }
        };
        child.add(subscriber);
        child.setProducer(producer);
        return subscriber;
    }
}
