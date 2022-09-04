package com.github.moduth.blockcanary.internal;

import android.app.ActivityManager;
import android.util.Log;
import com.github.moduth.blockcanary.BlockCanaryInternals;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.io.IOException;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class PerformanceUtils {
    private static final String TAG = "PerformanceUtils";
    private static int sCoreNum = 0;
    private static long sTotalMemo = 0;

    private PerformanceUtils() {
        throw new InstantiationError("Must not instantiate this class");
    }

    public static int getNumCores() {
        if (sCoreNum == 0) {
            try {
                File dir = new File("/sys/devices/system/cpu/");
                File[] files = dir.listFiles(new FileFilter() { // from class: com.github.moduth.blockcanary.internal.PerformanceUtils.1CpuFilter
                    @Override // java.io.FileFilter
                    public boolean accept(File pathname) {
                        return Pattern.matches("cpu[0-9]", pathname.getName());
                    }
                });
                sCoreNum = files.length;
            } catch (Exception e) {
                Log.e(TAG, "getNumCores exception", e);
                sCoreNum = 1;
            }
        }
        return sCoreNum;
    }

    public static long getFreeMemory() {
        ActivityManager am = (ActivityManager) BlockCanaryInternals.getContext().provideContext().getSystemService("activity");
        ActivityManager.MemoryInfo mi = new ActivityManager.MemoryInfo();
        am.getMemoryInfo(mi);
        return mi.availMem / 1024;
    }

    public static long getTotalMemory() {
        FileReader localFileReader;
        if (sTotalMemo == 0) {
            long initial_memory = -1;
            FileReader localFileReader2 = null;
            try {
                try {
                    localFileReader = new FileReader("/proc/meminfo");
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e) {
                e = e;
            }
            try {
                BufferedReader localBufferedReader = new BufferedReader(localFileReader, 8192);
                String str2 = localBufferedReader.readLine();
                if (str2 != null) {
                    String[] arrayOfString = str2.split("\\s+");
                    initial_memory = Integer.valueOf(arrayOfString[1]).intValue();
                }
                localBufferedReader.close();
                if (localFileReader != null) {
                    try {
                        localFileReader.close();
                        localFileReader2 = localFileReader;
                    } catch (IOException e2) {
                        Log.e(TAG, "close localFileReader exception = ", e2);
                        localFileReader2 = localFileReader;
                    }
                } else {
                    localFileReader2 = localFileReader;
                }
            } catch (IOException e3) {
                e = e3;
                localFileReader2 = localFileReader;
                Log.e(TAG, "getTotalMemory exception = ", e);
                if (localFileReader2 != null) {
                    try {
                        localFileReader2.close();
                    } catch (IOException e4) {
                        Log.e(TAG, "close localFileReader exception = ", e4);
                    }
                }
                sTotalMemo = initial_memory;
                return sTotalMemo;
            } catch (Throwable th2) {
                th = th2;
                localFileReader2 = localFileReader;
                if (localFileReader2 != null) {
                    try {
                        localFileReader2.close();
                    } catch (IOException e5) {
                        Log.e(TAG, "close localFileReader exception = ", e5);
                    }
                }
                throw th;
            }
            sTotalMemo = initial_memory;
        }
        return sTotalMemo;
    }
}
