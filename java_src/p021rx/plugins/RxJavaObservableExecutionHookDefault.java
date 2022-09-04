package p021rx.plugins;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: rx.plugins.RxJavaObservableExecutionHookDefault */
/* loaded from: classes2.dex */
public class RxJavaObservableExecutionHookDefault extends RxJavaObservableExecutionHook {
    private static RxJavaObservableExecutionHookDefault INSTANCE = new RxJavaObservableExecutionHookDefault();

    RxJavaObservableExecutionHookDefault() {
    }

    public static RxJavaObservableExecutionHook getInstance() {
        return INSTANCE;
    }
}
