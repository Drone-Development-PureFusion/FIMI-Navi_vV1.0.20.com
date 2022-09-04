package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.functions.Func1;
import p021rx.functions.Func2;
import p021rx.internal.util.UtilityFunctions;
/* renamed from: rx.internal.operators.OperatorSequenceEqual */
/* loaded from: classes2.dex */
public final class OperatorSequenceEqual {
    static final Object LOCAL_ONCOMPLETED = new Object();

    private OperatorSequenceEqual() {
        throw new IllegalStateException("No instances!");
    }

    static <T> Observable<Object> materializeLite(Observable<T> source) {
        return Observable.concat(source.map((Func1<T, Object>) new Func1<T, Object>() { // from class: rx.internal.operators.OperatorSequenceEqual.1
            @Override // p021rx.functions.Func1
            /* renamed from: call */
            public Object mo1999call(T t1) {
                return t1;
            }
        }), Observable.just(LOCAL_ONCOMPLETED));
    }

    public static <T> Observable<Boolean> sequenceEqual(Observable<? extends T> first, Observable<? extends T> second, final Func2<? super T, ? super T, Boolean> equality) {
        Observable<Object> firstObservable = materializeLite(first);
        Observable<Object> secondObservable = materializeLite(second);
        return Observable.zip(firstObservable, secondObservable, new Func2<Object, Object, Boolean>() { // from class: rx.internal.operators.OperatorSequenceEqual.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // p021rx.functions.Func2
            /* renamed from: call */
            public Boolean mo1993call(Object t1, Object t2) {
                boolean c1 = t1 == OperatorSequenceEqual.LOCAL_ONCOMPLETED;
                boolean c2 = t2 == OperatorSequenceEqual.LOCAL_ONCOMPLETED;
                if (c1 && c2) {
                    return true;
                }
                if (c1 || c2) {
                    return false;
                }
                return (Boolean) Func2.this.mo1993call(t1, t2);
            }
        }).all(UtilityFunctions.identity());
    }
}
