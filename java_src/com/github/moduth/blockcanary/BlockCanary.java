package com.github.moduth.blockcanary;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.preference.PreferenceManager;
import com.github.moduth.blockcanary.p016ui.DisplayActivity;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public final class BlockCanary {
    private static final String TAG = "BlockCanary";
    private static final Executor fileIoExecutor = newSingleThreadExecutor("File-IO");
    private static BlockCanary sInstance;
    private boolean mMonitorStarted = false;
    private BlockCanaryInternals mBlockCanaryCore = BlockCanaryInternals.getInstance();

    private BlockCanary() {
        BlockCanaryInternals.setContext(BlockCanaryContext.get());
        this.mBlockCanaryCore.addBlockInterceptor(BlockCanaryContext.get());
        if (BlockCanaryContext.get().displayNotification()) {
            this.mBlockCanaryCore.addBlockInterceptor(new DisplayService());
        }
    }

    public static BlockCanary install(Context context, BlockCanaryContext blockCanaryContext) {
        BlockCanaryContext.init(context, blockCanaryContext);
        setEnabled(context, DisplayActivity.class, BlockCanaryContext.get().displayNotification());
        return get();
    }

    public static BlockCanary get() {
        if (sInstance == null) {
            synchronized (BlockCanary.class) {
                if (sInstance == null) {
                    sInstance = new BlockCanary();
                }
            }
        }
        return sInstance;
    }

    public void start() {
        if (!this.mMonitorStarted) {
            this.mMonitorStarted = true;
            Looper.getMainLooper().setMessageLogging(this.mBlockCanaryCore.monitor);
        }
    }

    public void stop() {
        if (this.mMonitorStarted) {
            this.mMonitorStarted = false;
            Looper.getMainLooper().setMessageLogging(null);
            this.mBlockCanaryCore.stackSampler.stop();
            this.mBlockCanaryCore.cpuSampler.stop();
        }
    }

    public void upload() {
        Uploader.zipAndUpload();
    }

    public void recordStartTime() {
        PreferenceManager.getDefaultSharedPreferences(BlockCanaryContext.get().provideContext()).edit().putLong("BlockCanary_StartTime", System.currentTimeMillis()).commit();
    }

    public boolean isMonitorDurationEnd() {
        long startTime = PreferenceManager.getDefaultSharedPreferences(BlockCanaryContext.get().provideContext()).getLong("BlockCanary_StartTime", 0L);
        return startTime != 0 && System.currentTimeMillis() - startTime > ((long) ((BlockCanaryContext.get().provideMonitorDuration() * 3600) * 1000));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setEnabledBlocking(Context appContext, Class<?> componentClass, boolean enabled) {
        ComponentName component = new ComponentName(appContext, componentClass);
        PackageManager packageManager = appContext.getPackageManager();
        int newState = enabled ? 1 : 2;
        packageManager.setComponentEnabledSetting(component, newState, 1);
    }

    private static void executeOnFileIoThread(Runnable runnable) {
        fileIoExecutor.execute(runnable);
    }

    private static Executor newSingleThreadExecutor(String threadName) {
        return Executors.newSingleThreadExecutor(new SingleThreadFactory(threadName));
    }

    private static void setEnabled(Context context, final Class<?> componentClass, final boolean enabled) {
        final Context appContext = context.getApplicationContext();
        executeOnFileIoThread(new Runnable() { // from class: com.github.moduth.blockcanary.BlockCanary.1
            @Override // java.lang.Runnable
            public void run() {
                BlockCanary.setEnabledBlocking(appContext, componentClass, enabled);
            }
        });
    }
}
