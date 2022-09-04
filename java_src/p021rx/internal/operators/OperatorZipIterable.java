package p021rx.internal.operators;

import java.util.Iterator;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func2;
import p021rx.observers.Subscribers;
/* renamed from: rx.internal.operators.OperatorZipIterable */
/* loaded from: classes2.dex */
public final class OperatorZipIterable<T1, T2, R> implements Observable.Operator<R, T1> {
    final Iterable<? extends T2> iterable;
    final Func2<? super T1, ? super T2, ? extends R> zipFunction;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorZipIterable(Iterable<? extends T2> iterable, Func2<? super T1, ? super T2, ? extends R> zipFunction) {
        this.iterable = iterable;
        this.zipFunction = zipFunction;
    }

    public Subscriber<? super T1> call(final Subscriber<? super R> subscriber) {
        final Iterator<? extends T2> iterator = this.iterable.iterator();
        try {
            if (!iterator.hasNext()) {
                subscriber.onCompleted();
                return Subscribers.empty();
            }
            return (Subscriber<T1>) new Subscriber<T1>(subscriber) { // from class: rx.internal.operators.OperatorZipIterable.1
                boolean done;

                @Override // p021rx.Observer
                public void onCompleted() {
                    if (!this.done) {
                        this.done = true;
                        subscriber.onCompleted();
                    }
                }

                @Override // p021rx.Observer
                public void onError(Throwable e) {
                    if (this.done) {
                        Exceptions.throwIfFatal(e);
                        return;
                    }
                    this.done = true;
                    subscriber.onError(e);
                }

                @Override // p021rx.Observer
                public void onNext(T1 t) {
                    if (!this.done) {
                        try {
                            subscriber.onNext(OperatorZipIterable.this.zipFunction.mo1993call(t, (Object) iterator.next()));
                            if (!iterator.hasNext()) {
                                onCompleted();
                            }
                        } catch (Throwable e) {
                            Exceptions.throwOrReport(e, this);
                        }
                    }
                }
            };
        } catch (Throwable e) {
            Exceptions.throwOrReport(e, subscriber);
            return Subscribers.empty();
        }
    }
}
