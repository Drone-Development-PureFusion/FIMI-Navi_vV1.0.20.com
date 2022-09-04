package com.nostra13.universalimageloader.utils;

import android.util.Log;
import com.nostra13.universalimageloader.core.ImageLoader;
/* renamed from: com.nostra13.universalimageloader.utils.L */
/* loaded from: classes.dex */
public final class C2073L {
    private static final String LOG_FORMAT = "%1$s\n%2$s";
    private static volatile boolean writeDebugLogs = false;
    private static volatile boolean writeLogs = true;

    private C2073L() {
    }

    @Deprecated
    public static void enableLogging() {
        writeLogs(true);
    }

    @Deprecated
    public static void disableLogging() {
        writeLogs(false);
    }

    public static void writeDebugLogs(boolean writeDebugLogs2) {
        writeDebugLogs = writeDebugLogs2;
    }

    public static void writeLogs(boolean writeLogs2) {
        writeLogs = writeLogs2;
    }

    /* renamed from: d */
    public static void m1299d(String message, Object... args) {
        if (writeDebugLogs) {
            log(3, null, message, args);
        }
    }

    /* renamed from: i */
    public static void m1295i(String message, Object... args) {
        log(4, null, message, args);
    }

    /* renamed from: w */
    public static void m1294w(String message, Object... args) {
        log(5, null, message, args);
    }

    /* renamed from: e */
    public static void m1297e(Throwable ex) {
        log(6, ex, null, new Object[0]);
    }

    /* renamed from: e */
    public static void m1298e(String message, Object... args) {
        log(6, null, message, args);
    }

    /* renamed from: e */
    public static void m1296e(Throwable ex, String message, Object... args) {
        log(6, ex, message, args);
    }

    private static void log(int priority, Throwable ex, String message, Object... args) {
        String log;
        if (writeLogs) {
            if (args.length > 0) {
                message = String.format(message, args);
            }
            if (ex == null) {
                log = message;
            } else {
                String logMessage = message == null ? ex.getMessage() : message;
                String logBody = Log.getStackTraceString(ex);
                log = String.format(LOG_FORMAT, logMessage, logBody);
            }
            Log.println(priority, ImageLoader.TAG, log);
        }
    }
}
