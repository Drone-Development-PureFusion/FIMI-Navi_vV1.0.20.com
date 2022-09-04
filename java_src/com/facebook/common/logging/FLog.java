package com.facebook.common.logging;
/* loaded from: classes.dex */
public class FLog {
    public static final int ASSERT = 7;
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static LoggingDelegate sHandler = FLogDefaultLoggingDelegate.getInstance();

    public static void setLoggingDelegate(LoggingDelegate delegate) {
        if (delegate == null) {
            throw new IllegalArgumentException();
        }
        sHandler = delegate;
    }

    public static boolean isLoggable(int level) {
        return sHandler.isLoggable(level);
    }

    public static void setMinimumLoggingLevel(int level) {
        sHandler.setMinimumLoggingLevel(level);
    }

    public static int getMinimumLoggingLevel() {
        return sHandler.getMinimumLoggingLevel();
    }

    /* renamed from: v */
    public static void m1363v(String tag, String msg) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(tag, msg);
        }
    }

    /* renamed from: v */
    public static void m1362v(String tag, String msg, Object arg1) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(tag, formatString(msg, arg1));
        }
    }

    /* renamed from: v */
    public static void m1361v(String tag, String msg, Object arg1, Object arg2) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(tag, formatString(msg, arg1, arg2));
        }
    }

    /* renamed from: v */
    public static void m1360v(String tag, String msg, Object arg1, Object arg2, Object arg3) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(tag, formatString(msg, arg1, arg2, arg3));
        }
    }

    /* renamed from: v */
    public static void m1359v(String tag, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(tag, formatString(msg, arg1, arg2, arg3, arg4));
        }
    }

    /* renamed from: v */
    public static void m1371v(Class<?> cls, String msg) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(getTag(cls), msg);
        }
    }

    /* renamed from: v */
    public static void m1370v(Class<?> cls, String msg, Object arg1) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(getTag(cls), formatString(msg, arg1));
        }
    }

    /* renamed from: v */
    public static void m1369v(Class<?> cls, String msg, Object arg1, Object arg2) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(getTag(cls), formatString(msg, arg1, arg2));
        }
    }

    /* renamed from: v */
    public static void m1368v(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3) {
        if (isLoggable(2)) {
            m1371v(cls, formatString(msg, arg1, arg2, arg3));
        }
    }

    /* renamed from: v */
    public static void m1367v(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(getTag(cls), formatString(msg, arg1, arg2, arg3, arg4));
        }
    }

    /* renamed from: v */
    public static void m1357v(String tag, String msg, Object... args) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(tag, formatString(msg, args));
        }
    }

    /* renamed from: v */
    public static void m1356v(String tag, Throwable tr, String msg, Object... args) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1340v(tag, formatString(msg, args), tr);
        }
    }

    /* renamed from: v */
    public static void m1365v(Class<?> cls, String msg, Object... args) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1341v(getTag(cls), formatString(msg, args));
        }
    }

    /* renamed from: v */
    public static void m1364v(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1340v(getTag(cls), formatString(msg, args), tr);
        }
    }

    /* renamed from: v */
    public static void m1358v(String tag, String msg, Throwable tr) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1340v(tag, msg, tr);
        }
    }

    /* renamed from: v */
    public static void m1366v(Class<?> cls, String msg, Throwable tr) {
        if (sHandler.isLoggable(2)) {
            sHandler.mo1340v(getTag(cls), msg, tr);
        }
    }

    /* renamed from: d */
    public static void m1403d(String tag, String msg) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(tag, msg);
        }
    }

    /* renamed from: d */
    public static void m1402d(String tag, String msg, Object arg1) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(tag, formatString(msg, arg1));
        }
    }

    /* renamed from: d */
    public static void m1401d(String tag, String msg, Object arg1, Object arg2) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(tag, formatString(msg, arg1, arg2));
        }
    }

    /* renamed from: d */
    public static void m1400d(String tag, String msg, Object arg1, Object arg2, Object arg3) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(tag, formatString(msg, arg1, arg2, arg3));
        }
    }

    /* renamed from: d */
    public static void m1399d(String tag, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(tag, formatString(msg, arg1, arg2, arg3, arg4));
        }
    }

    /* renamed from: d */
    public static void m1411d(Class<?> cls, String msg) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(getTag(cls), msg);
        }
    }

    /* renamed from: d */
    public static void m1410d(Class<?> cls, String msg, Object arg1) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(getTag(cls), formatString(msg, arg1));
        }
    }

    /* renamed from: d */
    public static void m1409d(Class<?> cls, String msg, Object arg1, Object arg2) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(getTag(cls), formatString(msg, arg1, arg2));
        }
    }

    /* renamed from: d */
    public static void m1408d(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(getTag(cls), formatString(msg, arg1, arg2, arg3));
        }
    }

    /* renamed from: d */
    public static void m1407d(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(getTag(cls), formatString(msg, arg1, arg2, arg3, arg4));
        }
    }

    /* renamed from: d */
    public static void m1397d(String tag, String msg, Object... args) {
        if (sHandler.isLoggable(3)) {
            m1403d(tag, formatString(msg, args));
        }
    }

    /* renamed from: d */
    public static void m1396d(String tag, Throwable tr, String msg, Object... args) {
        if (sHandler.isLoggable(3)) {
            m1398d(tag, formatString(msg, args), tr);
        }
    }

    /* renamed from: d */
    public static void m1405d(Class<?> cls, String msg, Object... args) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1347d(getTag(cls), formatString(msg, args));
        }
    }

    /* renamed from: d */
    public static void m1404d(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1346d(getTag(cls), formatString(msg, args), tr);
        }
    }

    /* renamed from: d */
    public static void m1398d(String tag, String msg, Throwable tr) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1346d(tag, msg, tr);
        }
    }

    /* renamed from: d */
    public static void m1406d(Class<?> cls, String msg, Throwable tr) {
        if (sHandler.isLoggable(3)) {
            sHandler.mo1346d(getTag(cls), msg, tr);
        }
    }

    /* renamed from: i */
    public static void m1379i(String tag, String msg) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(tag, msg);
        }
    }

    /* renamed from: i */
    public static void m1378i(String tag, String msg, Object arg1) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(tag, formatString(msg, arg1));
        }
    }

    /* renamed from: i */
    public static void m1377i(String tag, String msg, Object arg1, Object arg2) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(tag, formatString(msg, arg1, arg2));
        }
    }

    /* renamed from: i */
    public static void m1376i(String tag, String msg, Object arg1, Object arg2, Object arg3) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(tag, formatString(msg, arg1, arg2, arg3));
        }
    }

    /* renamed from: i */
    public static void m1375i(String tag, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(tag, formatString(msg, arg1, arg2, arg3, arg4));
        }
    }

    /* renamed from: i */
    public static void m1387i(Class<?> cls, String msg) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(getTag(cls), msg);
        }
    }

    /* renamed from: i */
    public static void m1386i(Class<?> cls, String msg, Object arg1) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(getTag(cls), formatString(msg, arg1));
        }
    }

    /* renamed from: i */
    public static void m1385i(Class<?> cls, String msg, Object arg1, Object arg2) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(getTag(cls), formatString(msg, arg1, arg2));
        }
    }

    /* renamed from: i */
    public static void m1384i(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(getTag(cls), formatString(msg, arg1, arg2, arg3));
        }
    }

    /* renamed from: i */
    public static void m1383i(Class<?> cls, String msg, Object arg1, Object arg2, Object arg3, Object arg4) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(getTag(cls), formatString(msg, arg1, arg2, arg3, arg4));
        }
    }

    /* renamed from: i */
    public static void m1373i(String tag, String msg, Object... args) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(tag, formatString(msg, args));
        }
    }

    /* renamed from: i */
    public static void m1372i(String tag, Throwable tr, String msg, Object... args) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1342i(tag, formatString(msg, args), tr);
        }
    }

    /* renamed from: i */
    public static void m1381i(Class<?> cls, String msg, Object... args) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1343i(getTag(cls), formatString(msg, args));
        }
    }

    /* renamed from: i */
    public static void m1380i(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (isLoggable(4)) {
            sHandler.mo1342i(getTag(cls), formatString(msg, args), tr);
        }
    }

    /* renamed from: i */
    public static void m1374i(String tag, String msg, Throwable tr) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1342i(tag, msg, tr);
        }
    }

    /* renamed from: i */
    public static void m1382i(Class<?> cls, String msg, Throwable tr) {
        if (sHandler.isLoggable(4)) {
            sHandler.mo1342i(getTag(cls), msg, tr);
        }
    }

    /* renamed from: w */
    public static void m1351w(String tag, String msg) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo1339w(tag, msg);
        }
    }

    /* renamed from: w */
    public static void m1355w(Class<?> cls, String msg) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo1339w(getTag(cls), msg);
        }
    }

    /* renamed from: w */
    public static void m1349w(String tag, String msg, Object... args) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo1339w(tag, formatString(msg, args));
        }
    }

    /* renamed from: w */
    public static void m1348w(String tag, Throwable tr, String msg, Object... args) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo1338w(tag, formatString(msg, args), tr);
        }
    }

    /* renamed from: w */
    public static void m1353w(Class<?> cls, String msg, Object... args) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo1339w(getTag(cls), formatString(msg, args));
        }
    }

    /* renamed from: w */
    public static void m1352w(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (isLoggable(5)) {
            m1354w(cls, formatString(msg, args), tr);
        }
    }

    /* renamed from: w */
    public static void m1350w(String tag, String msg, Throwable tr) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo1338w(tag, msg, tr);
        }
    }

    /* renamed from: w */
    public static void m1354w(Class<?> cls, String msg, Throwable tr) {
        if (sHandler.isLoggable(5)) {
            sHandler.mo1338w(getTag(cls), msg, tr);
        }
    }

    /* renamed from: e */
    public static void m1391e(String tag, String msg) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo1345e(tag, msg);
        }
    }

    /* renamed from: e */
    public static void m1395e(Class<?> cls, String msg) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo1345e(getTag(cls), msg);
        }
    }

    /* renamed from: e */
    public static void m1389e(String tag, String msg, Object... args) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo1345e(tag, formatString(msg, args));
        }
    }

    /* renamed from: e */
    public static void m1388e(String tag, Throwable tr, String msg, Object... args) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo1344e(tag, formatString(msg, args), tr);
        }
    }

    /* renamed from: e */
    public static void m1393e(Class<?> cls, String msg, Object... args) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo1345e(getTag(cls), formatString(msg, args));
        }
    }

    /* renamed from: e */
    public static void m1392e(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo1344e(getTag(cls), formatString(msg, args), tr);
        }
    }

    /* renamed from: e */
    public static void m1390e(String tag, String msg, Throwable tr) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo1344e(tag, msg, tr);
        }
    }

    /* renamed from: e */
    public static void m1394e(Class<?> cls, String msg, Throwable tr) {
        if (sHandler.isLoggable(6)) {
            sHandler.mo1344e(getTag(cls), msg, tr);
        }
    }

    public static void wtf(String tag, String msg) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(tag, msg);
        }
    }

    public static void wtf(Class<?> cls, String msg) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(getTag(cls), msg);
        }
    }

    public static void wtf(String tag, String msg, Object... args) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(tag, formatString(msg, args));
        }
    }

    public static void wtf(String tag, Throwable tr, String msg, Object... args) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(tag, formatString(msg, args), tr);
        }
    }

    public static void wtf(Class<?> cls, String msg, Object... args) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(getTag(cls), formatString(msg, args));
        }
    }

    public static void wtf(Class<?> cls, Throwable tr, String msg, Object... args) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(getTag(cls), formatString(msg, args), tr);
        }
    }

    public static void wtf(String tag, String msg, Throwable tr) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(tag, msg, tr);
        }
    }

    public static void wtf(Class<?> cls, String msg, Throwable tr) {
        if (sHandler.isLoggable(6)) {
            sHandler.wtf(getTag(cls), msg, tr);
        }
    }

    private static String formatString(String str, Object... args) {
        return String.format(null, str, args);
    }

    private static String getTag(Class<?> clazz) {
        return clazz.getSimpleName();
    }
}
