package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
/* renamed from: rx.internal.operators.OperatorCast */
/* loaded from: classes2.dex */
public class OperatorCast<T, R> implements Observable.Operator<R, T> {
    final Class<R> castClass;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorCast(Class<R> castClass) {
        this.castClass = castClass;
    }

    public Subscriber<? super T> call(final Subscriber<? super R> o) {
        return (Subscriber<T>) new Subscriber<T>(o) { // from class: rx.internal.operators.OperatorCast.1
            @Override // p021rx.Observer
            public void onCompleted() {
                o.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                o.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                try {
                    o.onNext(OperatorCast.this.castClass.cast(t));
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, this, t);
                }
            }
        };
    }
}
