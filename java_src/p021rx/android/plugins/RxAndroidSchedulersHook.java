package p021rx.android.plugins;

import p021rx.Scheduler;
import p021rx.functions.Action0;
/* renamed from: rx.android.plugins.RxAndroidSchedulersHook */
/* loaded from: classes2.dex */
public class RxAndroidSchedulersHook {
    private static final RxAndroidSchedulersHook DEFAULT_INSTANCE = new RxAndroidSchedulersHook();

    public static RxAndroidSchedulersHook getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public Scheduler getMainThreadScheduler() {
        return null;
    }

    public Action0 onSchedule(Action0 action) {
        return action;
    }
}
