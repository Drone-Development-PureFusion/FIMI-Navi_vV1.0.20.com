package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
/* renamed from: rx.internal.operators.OperatorMap */
/* loaded from: classes2.dex */
public final class OperatorMap<T, R> implements Observable.Operator<R, T> {
    final Func1<? super T, ? extends R> transformer;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorMap(Func1<? super T, ? extends R> transformer) {
        this.transformer = transformer;
    }

    public Subscriber<? super T> call(final Subscriber<? super R> o) {
        return (Subscriber<T>) new Subscriber<T>(o) { // from class: rx.internal.operators.OperatorMap.1
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
                    o.onNext(OperatorMap.this.transformer.mo1999call(t));
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, this, t);
                }
            }
        };
    }
}
