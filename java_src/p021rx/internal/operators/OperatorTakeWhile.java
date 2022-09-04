package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
import p021rx.functions.Func2;
/* renamed from: rx.internal.operators.OperatorTakeWhile */
/* loaded from: classes2.dex */
public final class OperatorTakeWhile<T> implements Observable.Operator<T, T> {
    final Func2<? super T, ? super Integer, Boolean> predicate;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorTakeWhile(final Func1<? super T, Boolean> underlying) {
        this(new Func2<T, Integer, Boolean>() { // from class: rx.internal.operators.OperatorTakeWhile.1
            @Override // p021rx.functions.Func2
            /* renamed from: call */
            public /* bridge */ /* synthetic */ Boolean mo1993call(Object x0, Integer num) {
                return call2((C30101) x0, num);
            }

            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Boolean call2(T input, Integer index) {
                return (Boolean) Func1.this.mo1999call(input);
            }
        });
    }

    public OperatorTakeWhile(Func2<? super T, ? super Integer, Boolean> predicate) {
        this.predicate = predicate;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        Subscriber subscriber2 = (Subscriber<T>) new Subscriber<T>(subscriber, false) { // from class: rx.internal.operators.OperatorTakeWhile.2
            private int counter = 0;
            private boolean done = false;

            @Override // p021rx.Observer
            public void onNext(T t) {
                try {
                    Func2<? super T, ? super Integer, Boolean> func2 = OperatorTakeWhile.this.predicate;
                    int i = this.counter;
                    this.counter = i + 1;
                    boolean isSelected = func2.mo1993call(t, Integer.valueOf(i)).booleanValue();
                    if (isSelected) {
                        subscriber.onNext(t);
                        return;
                    }
                    this.done = true;
                    subscriber.onCompleted();
                    unsubscribe();
                } catch (Throwable e) {
                    this.done = true;
                    Exceptions.throwOrReport(e, subscriber, t);
                    unsubscribe();
                }
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                if (!this.done) {
                    subscriber.onCompleted();
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                if (!this.done) {
                    subscriber.onError(e);
                }
            }
        };
        subscriber.add(subscriber2);
        return subscriber2;
    }
}
