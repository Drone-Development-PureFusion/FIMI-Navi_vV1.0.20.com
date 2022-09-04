package p021rx.functions;
/* renamed from: rx.functions.Actions */
/* loaded from: classes2.dex */
public final class Actions {
    private static final EmptyAction EMPTY_ACTION = new EmptyAction();

    private Actions() {
        throw new IllegalStateException("No instances!");
    }

    public static <T0, T1, T2, T3, T4, T5, T6, T7, T8> EmptyAction<T0, T1, T2, T3, T4, T5, T6, T7, T8> empty() {
        return EMPTY_ACTION;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.functions.Actions$EmptyAction */
    /* loaded from: classes2.dex */
    public static final class EmptyAction<T0, T1, T2, T3, T4, T5, T6, T7, T8> implements Action0, Action1<T0>, Action2<T0, T1>, Action3<T0, T1, T2>, Action4<T0, T1, T2, T3>, Action5<T0, T1, T2, T3, T4>, Action6<T0, T1, T2, T3, T4, T5>, Action7<T0, T1, T2, T3, T4, T5, T6>, Action8<T0, T1, T2, T3, T4, T5, T6, T7>, Action9<T0, T1, T2, T3, T4, T5, T6, T7, T8>, ActionN {
        EmptyAction() {
        }

        @Override // p021rx.functions.Action0
        public void call() {
        }

        @Override // p021rx.functions.Action1
        public void call(T0 t1) {
        }

        @Override // p021rx.functions.Action2
        public void call(T0 t1, T1 t2) {
        }

        @Override // p021rx.functions.Action3
        public void call(T0 t1, T1 t2, T2 t3) {
        }

        @Override // p021rx.functions.Action4
        public void call(T0 t1, T1 t2, T2 t3, T3 t4) {
        }

        @Override // p021rx.functions.Action5
        public void call(T0 t1, T1 t2, T2 t3, T3 t4, T4 t5) {
        }

        @Override // p021rx.functions.Action6
        public void call(T0 t1, T1 t2, T2 t3, T3 t4, T4 t5, T5 t6) {
        }

        @Override // p021rx.functions.Action7
        public void call(T0 t1, T1 t2, T2 t3, T3 t4, T4 t5, T5 t6, T6 t7) {
        }

        @Override // p021rx.functions.Action8
        public void call(T0 t1, T1 t2, T2 t3, T3 t4, T4 t5, T5 t6, T6 t7, T7 t8) {
        }

        @Override // p021rx.functions.Action9
        public void call(T0 t1, T1 t2, T2 t3, T3 t4, T4 t5, T5 t6, T6 t7, T7 t8, T8 t9) {
        }

        @Override // p021rx.functions.ActionN
        public void call(Object... args) {
        }
    }

    public static Func0<Void> toFunc(Action0 action) {
        return toFunc(action, (Void) null);
    }

    public static <T1> Func1<T1, Void> toFunc(Action1<T1> action) {
        return toFunc(action, (Void) null);
    }

    public static <T1, T2> Func2<T1, T2, Void> toFunc(Action2<T1, T2> action) {
        return toFunc(action, (Void) null);
    }

    public static <T1, T2, T3> Func3<T1, T2, T3, Void> toFunc(Action3<T1, T2, T3> action) {
        return toFunc(action, (Void) null);
    }

    public static <T1, T2, T3, T4> Func4<T1, T2, T3, T4, Void> toFunc(Action4<T1, T2, T3, T4> action) {
        return toFunc(action, (Void) null);
    }

    public static <T1, T2, T3, T4, T5> Func5<T1, T2, T3, T4, T5, Void> toFunc(Action5<T1, T2, T3, T4, T5> action) {
        return toFunc(action, (Void) null);
    }

    public static <T1, T2, T3, T4, T5, T6> Func6<T1, T2, T3, T4, T5, T6, Void> toFunc(Action6<T1, T2, T3, T4, T5, T6> action) {
        return toFunc(action, (Void) null);
    }

    public static <T1, T2, T3, T4, T5, T6, T7> Func7<T1, T2, T3, T4, T5, T6, T7, Void> toFunc(Action7<T1, T2, T3, T4, T5, T6, T7> action) {
        return toFunc(action, (Void) null);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8> Func8<T1, T2, T3, T4, T5, T6, T7, T8, Void> toFunc(Action8<T1, T2, T3, T4, T5, T6, T7, T8> action) {
        return toFunc(action, (Void) null);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9> Func9<T1, T2, T3, T4, T5, T6, T7, T8, T9, Void> toFunc(Action9<T1, T2, T3, T4, T5, T6, T7, T8, T9> action) {
        return toFunc(action, (Void) null);
    }

    public static FuncN<Void> toFunc(ActionN action) {
        return toFunc(action, (Void) null);
    }

    public static <R> Func0<R> toFunc(final Action0 action, final R result) {
        return new Func0<R>() { // from class: rx.functions.Actions.1
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call */
            public R mo1996call() {
                Action0.this.call();
                return result;
            }
        };
    }

    public static <T1, R> Func1<T1, R> toFunc(final Action1<T1> action, final R result) {
        return new Func1<T1, R>() { // from class: rx.functions.Actions.2
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.Func1
            /* renamed from: call */
            public R mo1999call(T1 t1) {
                Action1.this.call(t1);
                return result;
            }
        };
    }

    public static <T1, T2, R> Func2<T1, T2, R> toFunc(final Action2<T1, T2> action, final R result) {
        return new Func2<T1, T2, R>() { // from class: rx.functions.Actions.3
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.Func2
            /* renamed from: call */
            public R mo1993call(T1 t1, T2 t2) {
                Action2.this.call(t1, t2);
                return result;
            }
        };
    }

    public static <T1, T2, T3, R> Func3<T1, T2, T3, R> toFunc(final Action3<T1, T2, T3> action, final R result) {
        return new Func3<T1, T2, T3, R>() { // from class: rx.functions.Actions.4
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.Func3
            public R call(T1 t1, T2 t2, T3 t3) {
                Action3.this.call(t1, t2, t3);
                return result;
            }
        };
    }

    public static <T1, T2, T3, T4, R> Func4<T1, T2, T3, T4, R> toFunc(final Action4<T1, T2, T3, T4> action, final R result) {
        return new Func4<T1, T2, T3, T4, R>() { // from class: rx.functions.Actions.5
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.Func4
            public R call(T1 t1, T2 t2, T3 t3, T4 t4) {
                Action4.this.call(t1, t2, t3, t4);
                return result;
            }
        };
    }

    public static <T1, T2, T3, T4, T5, R> Func5<T1, T2, T3, T4, T5, R> toFunc(final Action5<T1, T2, T3, T4, T5> action, final R result) {
        return new Func5<T1, T2, T3, T4, T5, R>() { // from class: rx.functions.Actions.6
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.Func5
            public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) {
                Action5.this.call(t1, t2, t3, t4, t5);
                return result;
            }
        };
    }

    public static <T1, T2, T3, T4, T5, T6, R> Func6<T1, T2, T3, T4, T5, T6, R> toFunc(final Action6<T1, T2, T3, T4, T5, T6> action, final R result) {
        return new Func6<T1, T2, T3, T4, T5, T6, R>() { // from class: rx.functions.Actions.7
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.Func6
            public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
                Action6.this.call(t1, t2, t3, t4, t5, t6);
                return result;
            }
        };
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> Func7<T1, T2, T3, T4, T5, T6, T7, R> toFunc(final Action7<T1, T2, T3, T4, T5, T6, T7> action, final R result) {
        return new Func7<T1, T2, T3, T4, T5, T6, T7, R>() { // from class: rx.functions.Actions.8
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.Func7
            public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7) {
                Action7.this.call(t1, t2, t3, t4, t5, t6, t7);
                return result;
            }
        };
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Func8<T1, T2, T3, T4, T5, T6, T7, T8, R> toFunc(final Action8<T1, T2, T3, T4, T5, T6, T7, T8> action, final R result) {
        return new Func8<T1, T2, T3, T4, T5, T6, T7, T8, R>() { // from class: rx.functions.Actions.9
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.Func8
            public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8) {
                Action8.this.call(t1, t2, t3, t4, t5, t6, t7, t8);
                return result;
            }
        };
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Func9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> toFunc(final Action9<T1, T2, T3, T4, T5, T6, T7, T8, T9> action, final R result) {
        return new Func9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R>() { // from class: rx.functions.Actions.10
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.Func9
            public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9) {
                Action9.this.call(t1, t2, t3, t4, t5, t6, t7, t8, t9);
                return result;
            }
        };
    }

    public static <R> FuncN<R> toFunc(final ActionN action, final R result) {
        return new FuncN<R>() { // from class: rx.functions.Actions.11
            /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
            @Override // p021rx.functions.FuncN
            public R call(Object... args) {
                ActionN.this.call(args);
                return result;
            }
        };
    }
}
