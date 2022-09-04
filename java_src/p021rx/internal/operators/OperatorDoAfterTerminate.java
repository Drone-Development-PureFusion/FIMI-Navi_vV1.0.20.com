package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.functions.Action0;
/* renamed from: rx.internal.operators.OperatorDoAfterTerminate */
/* loaded from: classes2.dex */
public final class OperatorDoAfterTerminate<T> implements Observable.Operator<T, T> {
    final Action0 action;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorDoAfterTerminate(Action0 action) {
        if (action == null) {
            throw new NullPointerException("Action can not be null");
        }
        this.action = action;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> child) {
        return (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorDoAfterTerminate.1
            @Override // p021rx.Observer
            public void onNext(T t) {
                child.onNext(t);
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                try {
                    child.onError(e);
                } finally {
                    OperatorDoAfterTerminate.this.action.call();
                }
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                try {
                    child.onCompleted();
                } finally {
                    OperatorDoAfterTerminate.this.action.call();
                }
            }
        };
    }
}
