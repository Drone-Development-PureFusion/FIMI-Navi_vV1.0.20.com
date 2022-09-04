package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
/* renamed from: rx.internal.operators.OperatorFilter */
/* loaded from: classes2.dex */
public final class OperatorFilter<T> implements Observable.Operator<T, T> {
    final Func1<? super T, Boolean> predicate;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorFilter(Func1<? super T, Boolean> predicate) {
        this.predicate = predicate;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> child) {
        return (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorFilter.1
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
                try {
                    if (OperatorFilter.this.predicate.mo1999call(t).booleanValue()) {
                        child.onNext(t);
                    } else {
                        request(1L);
                    }
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, child, t);
                }
            }
        };
    }
}
