package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2266t;
import com.umeng.commonsdk.utils.UMUtils;
/* loaded from: classes2.dex */
public class AnalyticsConfig {

    /* renamed from: b */
    private static String f328b = null;

    /* renamed from: c */
    private static String f329c = null;

    /* renamed from: d */
    private static String f330d = null;
    public static String mWrapperType = null;
    public static String mWrapperVersion = null;

    /* renamed from: e */
    private static int f331e = 0;
    public static String GPU_VENDER = "";
    public static String GPU_RENDERER = "";
    public static boolean ACTIVITY_DURATION_OPEN = true;
    public static boolean CATCH_EXCEPTION = true;
    public static long kContinueSessionMillis = 30000;
    public static boolean FLAG_DPLUS = false;

    /* renamed from: a */
    static double[] f327a = null;

    /* renamed from: a */
    static void m1279a(String str) {
        f329c = str;
    }

    public static String getAppkey(Context context) {
        return UMUtils.getAppkey(context);
    }

    public static String getChannel(Context context) {
        return UMUtils.getChannel(context);
    }

    public static double[] getLocation() {
        return f327a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1280a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            f330d = str;
            C2266t.m1033a(context).m1032a(f330d);
        }
    }

    public static String getSecretKey(Context context) {
        if (TextUtils.isEmpty(f330d)) {
            f330d = C2266t.m1033a(context).m1029c();
        }
        return f330d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1281a(Context context, int i) {
        f331e = i;
        C2266t.m1033a(context).m1034a(f331e);
    }

    public static int getVerticalType(Context context) {
        if (f331e == 0) {
            f331e = C2266t.m1033a(context).m1028d();
        }
        return f331e;
    }
}
