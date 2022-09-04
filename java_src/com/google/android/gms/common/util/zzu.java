package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzu {
    private static String zzglf = null;
    private static final int zzglg = Process.myPid();

    public static String zzany() {
        if (zzglf == null) {
            zzglf = zzci(zzglg);
        }
        return zzglf;
    }

    private static String zzci(int i) {
        Throwable th;
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        StrictMode.ThreadPolicy allowThreadDiskReads;
        String str = null;
        if (i > 0) {
            try {
                allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                try {
                    bufferedReader2 = new BufferedReader(new FileReader(new StringBuilder(25).append("/proc/").append(i).append("/cmdline").toString()));
                } finally {
                }
            } catch (IOException e) {
                bufferedReader2 = null;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
            try {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                str = bufferedReader2.readLine().trim();
                zzp.closeQuietly(bufferedReader2);
            } catch (IOException e2) {
                zzp.closeQuietly(bufferedReader2);
                return str;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = bufferedReader2;
                zzp.closeQuietly(bufferedReader);
                throw th;
            }
        }
        return str;
    }
}
