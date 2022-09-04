package p021rx.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import p021rx.Scheduler;
import p021rx.android.plugins.RxAndroidPlugins;
/* renamed from: rx.android.schedulers.AndroidSchedulers */
/* loaded from: classes2.dex */
public final class AndroidSchedulers {
    private AndroidSchedulers() {
        throw new AssertionError("No instances");
    }

    /* renamed from: rx.android.schedulers.AndroidSchedulers$MainThreadSchedulerHolder */
    /* loaded from: classes2.dex */
    private static class MainThreadSchedulerHolder {
        static final Scheduler MAIN_THREAD_SCHEDULER = new HandlerScheduler(new Handler(Looper.getMainLooper()));

        private MainThreadSchedulerHolder() {
        }
    }

    public static Scheduler mainThread() {
        Scheduler scheduler = RxAndroidPlugins.getInstance().getSchedulersHook().getMainThreadScheduler();
        return scheduler != null ? scheduler : MainThreadSchedulerHolder.MAIN_THREAD_SCHEDULER;
    }
}
