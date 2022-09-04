package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2266t;
/* compiled from: InternalConfig.java */
/* renamed from: com.umeng.analytics.c */
/* loaded from: classes2.dex */
public class C2211c {

    /* renamed from: a */
    private static String[] f360a = new String[2];

    /* renamed from: a */
    public static void m1226a(Context context, String str, String str2) {
        f360a[0] = str;
        f360a[1] = str2;
        if (context != null) {
            C2266t.m1033a(context).m1031a(str, str2);
        }
    }

    /* renamed from: a */
    public static String[] m1227a(Context context) {
        String[] m1035a;
        if (!TextUtils.isEmpty(f360a[0]) && !TextUtils.isEmpty(f360a[1])) {
            return f360a;
        }
        if (context != null && (m1035a = C2266t.m1033a(context).m1035a()) != null) {
            f360a[0] = m1035a[0];
            f360a[1] = m1035a[1];
            return f360a;
        }
        return null;
    }

    /* renamed from: b */
    public static void m1225b(Context context) {
        f360a[0] = null;
        f360a[1] = null;
        if (context != null) {
            C2266t.m1033a(context).m1030b();
        }
    }
}
