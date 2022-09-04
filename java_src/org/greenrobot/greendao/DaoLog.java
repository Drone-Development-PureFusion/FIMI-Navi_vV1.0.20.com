package org.greenrobot.greendao;

import android.util.Log;
/* loaded from: classes2.dex */
public class DaoLog {
    public static final int ASSERT = 7;
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    private static final String TAG = "greenDAO";
    public static final int VERBOSE = 2;
    public static final int WARN = 5;

    public static boolean isLoggable(int level) {
        return Log.isLoggable(TAG, level);
    }

    public static String getStackTraceString(Throwable th) {
        return Log.getStackTraceString(th);
    }

    public static int println(int level, String msg) {
        return Log.println(level, TAG, msg);
    }

    /* renamed from: v */
    public static int m21v(String msg) {
        return Log.v(TAG, msg);
    }

    /* renamed from: v */
    public static int m20v(String msg, Throwable th) {
        return Log.v(TAG, msg, th);
    }

    /* renamed from: d */
    public static int m27d(String msg) {
        return Log.d(TAG, msg);
    }

    /* renamed from: d */
    public static int m26d(String msg, Throwable th) {
        return Log.d(TAG, msg, th);
    }

    /* renamed from: i */
    public static int m23i(String msg) {
        return Log.i(TAG, msg);
    }

    /* renamed from: i */
    public static int m22i(String msg, Throwable th) {
        return Log.i(TAG, msg, th);
    }

    /* renamed from: w */
    public static int m19w(String msg) {
        return Log.w(TAG, msg);
    }

    /* renamed from: w */
    public static int m18w(String msg, Throwable th) {
        return Log.w(TAG, msg, th);
    }

    /* renamed from: w */
    public static int m17w(Throwable th) {
        return Log.w(TAG, th);
    }

    /* renamed from: e */
    public static int m25e(String msg) {
        return Log.w(TAG, msg);
    }

    /* renamed from: e */
    public static int m24e(String msg, Throwable th) {
        return Log.e(TAG, msg, th);
    }
}
