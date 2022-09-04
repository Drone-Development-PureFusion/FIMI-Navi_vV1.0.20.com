package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
import p021rx.internal.util.UtilityFunctions;
/* renamed from: rx.internal.operators.OperatorDistinctUntilChanged */
/* loaded from: classes2.dex */
public final class OperatorDistinctUntilChanged<T, U> implements Observable.Operator<T, T> {
    final Func1<? super T, ? extends U> keySelector;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorDistinctUntilChanged$Holder */
    /* loaded from: classes2.dex */
    public static class Holder {
        static final OperatorDistinctUntilChanged<?, ?> INSTANCE = new OperatorDistinctUntilChanged<>(UtilityFunctions.identity());

        private Holder() {
        }
    }

    public static <T> OperatorDistinctUntilChanged<T, T> instance() {
        return (OperatorDistinctUntilChanged<T, T>) Holder.INSTANCE;
    }

    public OperatorDistinctUntilChanged(Func1<? super T, ? extends U> keySelector) {
        this.keySelector = keySelector;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> child) {
        return (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorDistinctUntilChanged.1
            boolean hasPrevious;
            U previousKey;

            @Override // p021rx.Observer
            public void onNext(T t) {
                U currentKey = this.previousKey;
                try {
                    U key = OperatorDistinctUntilChanged.this.keySelector.mo1999call(t);
                    this.previousKey = key;
                    if (this.hasPrevious) {
                        if (currentKey != key && (key == null || !key.equals(currentKey))) {
                            child.onNext(t);
                            return;
                        } else {
                            request(1L);
                            return;
                        }
                    }
                    this.hasPrevious = true;
                    child.onNext(t);
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
}
