package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
import p021rx.functions.Func2;
/* renamed from: rx.internal.operators.OperatorSkipWhile */
/* loaded from: classes2.dex */
public final class OperatorSkipWhile<T> implements Observable.Operator<T, T> {
    final Func2<? super T, Integer, Boolean> predicate;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorSkipWhile(Func2<? super T, Integer, Boolean> predicate) {
        this.predicate = predicate;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> child) {
        return (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorSkipWhile.1
            int index;
            boolean skipping = true;

            @Override // p021rx.Observer
            public void onNext(T t) {
                if (!this.skipping) {
                    child.onNext(t);
                    return;
                }
                try {
                    Func2<? super T, Integer, Boolean> func2 = OperatorSkipWhile.this.predicate;
                    int i = this.index;
                    this.index = i + 1;
                    boolean skip = func2.mo1993call(t, Integer.valueOf(i)).booleanValue();
                    if (!skip) {
                        this.skipping = false;
                        child.onNext(t);
                        return;
                    }
                    request(1L);
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, child, t);
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                child.onError(e);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                child.onCompleted();
            }
        };
    }

    public static <T> Func2<T, Integer, Boolean> toPredicate2(final Func1<? super T, Boolean> predicate) {
        return new Func2<T, Integer, Boolean>() { // from class: rx.internal.operators.OperatorSkipWhile.2
            @Override // p021rx.functions.Func2
            /* renamed from: call */
            public /* bridge */ /* synthetic */ Boolean mo1993call(Object x0, Integer num) {
                return call2((C29962) x0, num);
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Boolean call2(T t1, Integer t2) {
                return (Boolean) Func1.this.mo1999call(t1);
            }
        };
    }
}
