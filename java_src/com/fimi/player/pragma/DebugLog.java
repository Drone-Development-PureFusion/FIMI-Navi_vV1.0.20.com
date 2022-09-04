package com.fimi.player.pragma;

import android.util.Log;
import java.util.Locale;
/* loaded from: classes.dex */
public class DebugLog {
    public static final boolean ENABLE_DEBUG = true;
    public static final boolean ENABLE_ERROR = true;
    public static final boolean ENABLE_INFO = true;
    public static final boolean ENABLE_VERBOSE = true;
    public static final boolean ENABLE_WARN = true;

    /* renamed from: e */
    public static int m1318e(String tag, String msg) {
        return Log.e(tag, msg);
    }

    /* renamed from: e */
    public static int m1317e(String tag, String msg, Throwable tr) {
        return Log.e(tag, msg, tr);
    }

    public static int efmt(String tag, String fmt, Object... args) {
        String msg = String.format(Locale.US, fmt, args);
        return Log.e(tag, msg);
    }

    /* renamed from: i */
    public static int m1316i(String tag, String msg) {
        return Log.i(tag, msg);
    }

    /* renamed from: i */
    public static int m1315i(String tag, String msg, Throwable tr) {
        return Log.i(tag, msg, tr);
    }

    public static int ifmt(String tag, String fmt, Object... args) {
        String msg = String.format(Locale.US, fmt, args);
        return Log.i(tag, msg);
    }

    /* renamed from: w */
    public static int m1312w(String tag, String msg) {
        return Log.w(tag, msg);
    }

    /* renamed from: w */
    public static int m1311w(String tag, String msg, Throwable tr) {
        return Log.w(tag, msg, tr);
    }

    public static int wfmt(String tag, String fmt, Object... args) {
        String msg = String.format(Locale.US, fmt, args);
        return Log.w(tag, msg);
    }

    /* renamed from: d */
    public static int m1320d(String tag, String msg) {
        return Log.d(tag, msg);
    }

    /* renamed from: d */
    public static int m1319d(String tag, String msg, Throwable tr) {
        return Log.d(tag, msg, tr);
    }

    public static int dfmt(String tag, String fmt, Object... args) {
        String msg = String.format(Locale.US, fmt, args);
        return Log.d(tag, msg);
    }

    /* renamed from: v */
    public static int m1314v(String tag, String msg) {
        return Log.v(tag, msg);
    }

    /* renamed from: v */
    public static int m1313v(String tag, String msg, Throwable tr) {
        return Log.v(tag, msg, tr);
    }

    public static int vfmt(String tag, String fmt, Object... args) {
        String msg = String.format(Locale.US, fmt, args);
        return Log.v(tag, msg);
    }

    public static void printStackTrace(Throwable e) {
        e.printStackTrace();
    }

    public static void printCause(Throwable e) {
        Throwable cause = e.getCause();
        if (cause != null) {
            e = cause;
        }
        printStackTrace(e);
    }
}
