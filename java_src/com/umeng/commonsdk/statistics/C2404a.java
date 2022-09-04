package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.umeng.commonsdk.statistics.common.C2415d;
/* compiled from: AnalyticsConfig.java */
/* renamed from: com.umeng.commonsdk.statistics.a */
/* loaded from: classes2.dex */
public class C2404a {

    /* renamed from: c */
    public static int f1214c;

    /* renamed from: a */
    public static String f1212a = AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE;

    /* renamed from: b */
    public static String f1213b = "";

    /* renamed from: d */
    private static String f1215d = null;

    /* renamed from: a */
    public static String m411a(Context context) {
        if (TextUtils.isEmpty(f1215d)) {
            f1215d = C2415d.m348a(context).m345b();
        }
        return f1215d;
    }
}
