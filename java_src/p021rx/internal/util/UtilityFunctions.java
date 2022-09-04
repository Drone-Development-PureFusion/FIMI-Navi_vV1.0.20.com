package p021rx.internal.util;

import p021rx.functions.Func0;
import p021rx.functions.Func1;
import p021rx.functions.Func2;
import p021rx.functions.Func3;
import p021rx.functions.Func4;
import p021rx.functions.Func5;
import p021rx.functions.Func6;
import p021rx.functions.Func7;
import p021rx.functions.Func8;
import p021rx.functions.Func9;
import p021rx.functions.FuncN;
/* renamed from: rx.internal.util.UtilityFunctions */
/* loaded from: classes2.dex */
public final class UtilityFunctions {
    private static final NullFunction NULL_FUNCTION = new NullFunction();

    public static <T> Func1<? super T, Boolean> alwaysTrue() {
        return AlwaysTrue.INSTANCE;
    }

    public static <T> Func1<? super T, Boolean> alwaysFalse() {
        return AlwaysFalse.INSTANCE;
    }

    public static <T> Func1<T, T> identity() {
        return new Func1<T, T>() { // from class: rx.internal.util.UtilityFunctions.1
            @Override // p021rx.functions.Func1
            /* renamed from: call */
            public T mo1999call(T o) {
                return o;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.util.UtilityFunctions$AlwaysTrue */
    /* loaded from: classes2.dex */
    public enum AlwaysTrue implements Func1<Object, Boolean> {
        INSTANCE;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p021rx.functions.Func1
        /* renamed from: call */
        public Boolean mo1999call(Object o) {
            return true;
        }
    }

    /* renamed from: rx.internal.util.UtilityFunctions$AlwaysFalse */
    /* loaded from: classes2.dex */
    private enum AlwaysFalse implements Func1<Object, Boolean> {
        INSTANCE;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p021rx.functions.Func1
        /* renamed from: call */
        public Boolean mo1999call(Object o) {
            return false;
        }
    }

    public static <T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, R> NullFunction<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, R> returnNull() {
        return NULL_FUNCTION;
    }

    /* renamed from: rx.internal.util.UtilityFunctions$NullFunction */
    /* loaded from: classes2.dex */
    private static final class NullFunction<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements Func0<R>, Func1<T0, R>, Func2<T0, T1, R>, Func3<T0, T1, T2, R>, Func4<T0, T1, T2, T3, R>, Func5<T0, T1, T2, T3, T4, R>, Func6<T0, T1, T2, T3, T4, T5, R>, Func7<T0, T1, T2, T3, T4, T5, T6, R>, Func8<T0, T1, T2, T3, T4, T5, T6, T7, R>, Func9<T0, T1, T2, T3, T4, T5, T6, T7, T8, R>, FuncN<R> {
        NullFunction() {
        }

        @Override // p021rx.functions.Func0, java.util.concurrent.Callable
        /* renamed from: call */
        public R mo1996call() {
            return null;
        }

        @Override // p021rx.functions.Func1
        /* renamed from: call */
        public R mo1999call(T0 t1) {
            return null;
        }

        @Override // p021rx.functions.Func2
        /* renamed from: call */
        public R mo1993call(T0 t1, T1 t2) {
            return null;
        }

        @Override // p021rx.functions.Func3
        public R call(T0 t1, T1 t2, T2 t3) {
            return null;
        }

        @Override // p021rx.functions.Func4
        public R call(T0 t1, T1 t2, T2 t3, T3 t4) {
            return null;
        }

        @Override // p021rx.functions.Func5
        public R call(T0 t1, T1 t2, T2 t3, T3 t4, T4 t5) {
            return null;
        }

        @Override // p021rx.functions.Func6
        public R call(T0 t1, T1 t2, T2 t3, T3 t4, T4 t5, T5 t6) {
            return null;
        }

        @Override // p021rx.functions.Func7
        public R call(T0 t1, T1 t2, T2 t3, T3 t4, T4 t5, T5 t6, T6 t7) {
            return null;
        }

        @Override // p021rx.functions.Func8
        public R call(T0 t1, T1 t2, T2 t3, T3 t4, T4 t5, T5 t6, T6 t7, T7 t8) {
            return null;
        }

        @Override // p021rx.functions.Func9
        public R call(T0 t1, T1 t2, T2 t3, T3 t4, T4 t5, T5 t6, T6 t7, T7 t8, T8 t9) {
            return null;
        }

        @Override // p021rx.functions.FuncN
        public R call(Object... args) {
            return null;
        }
    }
}
