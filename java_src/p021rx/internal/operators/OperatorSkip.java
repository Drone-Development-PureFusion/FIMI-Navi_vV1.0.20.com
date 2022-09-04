package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OperatorSkip */
/* loaded from: classes2.dex */
public final class OperatorSkip<T> implements Observable.Operator<T, T> {
    final int toSkip;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorSkip(int n) {
        if (n < 0) {
            throw new IllegalArgumentException("n >= 0 required but it was " + n);
        }
        this.toSkip = n;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> child) {
        return (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorSkip.1
            int skipped = 0;

            @Override // p021rx.Observer
            public void onCompleted() {
                child.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                child.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                if (this.skipped >= OperatorSkip.this.toSkip) {
                    child.onNext(t);
                } else {
                    this.skipped++;
                }
            }

            @Override // p021rx.Subscriber
            public void setProducer(Producer producer) {
                child.setProducer(producer);
                producer.request(OperatorSkip.this.toSkip);
            }
        };
    }
}
