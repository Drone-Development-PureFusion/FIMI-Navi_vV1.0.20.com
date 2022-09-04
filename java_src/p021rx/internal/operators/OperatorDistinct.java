package p021rx.internal.operators;

import java.util.HashSet;
import java.util.Set;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.functions.Func1;
import p021rx.internal.util.UtilityFunctions;
/* renamed from: rx.internal.operators.OperatorDistinct */
/* loaded from: classes2.dex */
public final class OperatorDistinct<T, U> implements Observable.Operator<T, T> {
    final Func1<? super T, ? extends U> keySelector;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorDistinct$Holder */
    /* loaded from: classes2.dex */
    public static class Holder {
        static final OperatorDistinct<?, ?> INSTANCE = new OperatorDistinct<>(UtilityFunctions.identity());

        private Holder() {
        }
    }

    public static <T> OperatorDistinct<T, T> instance() {
        return (OperatorDistinct<T, T>) Holder.INSTANCE;
    }

    public OperatorDistinct(Func1<? super T, ? extends U> keySelector) {
        this.keySelector = keySelector;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> child) {
        return (Subscriber<T>) new Subscriber<T>(child) { // from class: rx.internal.operators.OperatorDistinct.1
            Set<U> keyMemory = new HashSet();

            @Override // p021rx.Observer
            public void onNext(T t) {
                U key = OperatorDistinct.this.keySelector.mo1999call(t);
                if (this.keyMemory.add(key)) {
                    child.onNext(t);
                } else {
                    request(1L);
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                this.keyMemory = null;
                child.onError(e);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                this.keyMemory = null;
                child.onCompleted();
            }
        };
    }
}
