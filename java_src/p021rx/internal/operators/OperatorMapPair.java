package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
import p021rx.functions.Func2;
/* renamed from: rx.internal.operators.OperatorMapPair */
/* loaded from: classes2.dex */
public final class OperatorMapPair<T, U, R> implements Observable.Operator<Observable<? extends R>, T> {
    final Func1<? super T, ? extends Observable<? extends U>> collectionSelector;
    final Func2<? super T, ? super U, ? extends R> resultSelector;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public static <T, U> Func1<T, Observable<U>> convertSelector(final Func1<? super T, ? extends Iterable<? extends U>> selector) {
        return new Func1<T, Observable<U>>() { // from class: rx.internal.operators.OperatorMapPair.1
            @Override // p021rx.functions.Func1
            /* renamed from: call */
            public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
                return mo1999call((C29481) x0);
            }

            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: collision with other method in class */
            public Observable<U> mo1999call(T t1) {
                return Observable.from((Iterable) Func1.this.mo1999call(t1));
            }
        };
    }

    public OperatorMapPair(Func1<? super T, ? extends Observable<? extends U>> collectionSelector, Func2<? super T, ? super U, ? extends R> resultSelector) {
        this.collectionSelector = collectionSelector;
        this.resultSelector = resultSelector;
    }

    public Subscriber<? super T> call(final Subscriber<? super Observable<? extends R>> o) {
        return (Subscriber<T>) new Subscriber<T>(o) { // from class: rx.internal.operators.OperatorMapPair.2
            @Override // p021rx.Observer
            public void onCompleted() {
                o.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                o.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(final T outer) {
                try {
                    o.onNext(OperatorMapPair.this.collectionSelector.mo1999call(outer).map(new Func1<U, R>() { // from class: rx.internal.operators.OperatorMapPair.2.1
                        @Override // p021rx.functions.Func1
                        /* renamed from: call */
                        public R mo1999call(U inner) {
                            return OperatorMapPair.this.resultSelector.mo1993call((Object) outer, inner);
                        }
                    }));
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, o, outer);
                }
            }
        };
    }
}
