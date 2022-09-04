package com.github.moduth.blockcanary.internal;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import com.github.moduth.blockcanary.BlockCanaryInternals;
import java.util.List;
/* loaded from: classes2.dex */
public class ProcessUtils {
    private static final Object sNameLock = new Object();
    private static volatile String sProcessName;

    private ProcessUtils() {
        throw new InstantiationError("Must not instantiate this class");
    }

    public static String myProcessName() {
        String str;
        if (sProcessName != null) {
            return sProcessName;
        }
        synchronized (sNameLock) {
            if (sProcessName != null) {
                str = sProcessName;
            } else {
                sProcessName = obtainProcessName(BlockCanaryInternals.getContext().provideContext());
                str = sProcessName;
            }
        }
        return str;
    }

    private static String obtainProcessName(Context context) {
        int pid = Process.myPid();
        ActivityManager am = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> listTaskInfo = am.getRunningAppProcesses();
        if (listTaskInfo != null && !listTaskInfo.isEmpty()) {
            for (ActivityManager.RunningAppProcessInfo info : listTaskInfo) {
                if (info != null && info.pid == pid) {
                    return info.processName;
                }
            }
        }
        return null;
    }
}
