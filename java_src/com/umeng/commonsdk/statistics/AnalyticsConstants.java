package com.umeng.commonsdk.statistics;

import com.umeng.commonsdk.statistics.common.C2419e;
/* loaded from: classes2.dex */
public class AnalyticsConstants {
    public static final String LOG_TAG = "MobclickAgent";

    /* renamed from: OS */
    public static final String f1211OS = "Android";
    public static final String SDK_TYPE = "Android";
    public static boolean CHECK_DEVICE = true;
    public static String[] APPLOG_URL_LIST = {UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
    public static final boolean UM_DEBUG = C2419e.f1262a;
    private static int commonDeviceType = 1;

    public static void setDeviceType(int i) {
        commonDeviceType = i;
    }

    public static synchronized int getDeviceType() {
        int i;
        synchronized (AnalyticsConstants.class) {
            i = commonDeviceType;
        }
        return i;
    }
}
