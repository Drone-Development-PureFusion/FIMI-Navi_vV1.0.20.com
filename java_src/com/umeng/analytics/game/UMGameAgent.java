package com.umeng.analytics.game;

import android.content.Context;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.statistics.common.MLog;
/* loaded from: classes2.dex */
public class UMGameAgent extends MobclickAgent {

    /* renamed from: a */
    private static final String f361a = "Input string is null or empty";

    /* renamed from: b */
    private static final String f362b = "Input string must be less than 64 chars";

    /* renamed from: c */
    private static final String f363c = "Input value type is negative";

    /* renamed from: d */
    private static final String f364d = "The int value for 'Pay Channels' ranges between 1 ~ 99 ";

    /* renamed from: e */
    private static final C2214b f365e = new C2214b();

    /* renamed from: f */
    private static Context f366f;

    public static void init(Context context) {
        try {
            if (f366f == null && context != null) {
                f366f = context.getApplicationContext();
            }
            f365e.m1208a(f366f);
        } catch (Throwable th) {
            MLog.m388e("please check Context!");
        }
    }

    public static void setTraceSleepTime(boolean z) {
        f365e.m1203a(z);
    }

    public static void setPlayerLevel(int i) {
        f365e.m1207a(String.valueOf(i));
    }

    public static void startLevel(String str) {
        if (m1224a(str)) {
            MLog.m388e(f361a);
        } else if (str.length() > 64) {
            MLog.m388e(f362b);
        } else {
            f365e.m1202b(str);
        }
    }

    public static void finishLevel(String str) {
        if (m1224a(str)) {
            MLog.m388e(f361a);
        } else if (str.length() > 64) {
            MLog.m388e(f362b);
        } else {
            f365e.m1200c(str);
        }
    }

    public static void failLevel(String str) {
        if (m1224a(str)) {
            MLog.m388e(f361a);
        } else if (str.length() > 64) {
            MLog.m388e(f362b);
        } else {
            f365e.m1199d(str);
        }
    }

    public static void pay(double d, double d2, int i) {
        if (i <= 0 || i >= 100) {
            MLog.m388e(f364d);
        } else if (d < 0.0d || d2 < 0.0d) {
            MLog.m388e(f363c);
        } else {
            f365e.m1212a(d, d2, i);
        }
    }

    public static void pay(double d, String str, int i, double d2, int i2) {
        if (i2 <= 0 || i2 >= 100) {
            MLog.m388e(f364d);
        } else if (d < 0.0d || i < 0 || d2 < 0.0d) {
            MLog.m388e(f363c);
        } else if (m1224a(str)) {
            MLog.m388e(f361a);
        } else {
            f365e.m1209a(d, str, i, d2, i2);
        }
    }

    public static void exchange(double d, String str, double d2, int i, String str2) {
        if (d < 0.0d || d2 < 0.0d) {
            MLog.m388e(f363c);
        } else if (i <= 0 || i >= 100) {
            MLog.m388e(f364d);
        } else {
            f365e.m1210a(d, str, d2, i, str2);
        }
    }

    public static void buy(String str, int i, double d) {
        if (m1224a(str)) {
            MLog.m388e(f361a);
        } else if (i < 0 || d < 0.0d) {
            MLog.m388e(f363c);
        } else {
            f365e.m1205a(str, i, d);
        }
    }

    public static void use(String str, int i, double d) {
        if (m1224a(str)) {
            MLog.m388e(f361a);
        } else if (i < 0 || d < 0.0d) {
            MLog.m388e(f363c);
        } else {
            f365e.m1201b(str, i, d);
        }
    }

    public static void bonus(double d, int i) {
        if (d < 0.0d) {
            MLog.m388e(f363c);
        } else if (i <= 0 || i >= 100) {
            MLog.m388e(f364d);
        } else {
            f365e.m1211a(d, i);
        }
    }

    public static void bonus(String str, int i, double d, int i2) {
        if (m1224a(str)) {
            MLog.m388e(f361a);
        } else if (i < 0 || d < 0.0d) {
            MLog.m388e(f363c);
        } else if (i2 <= 0 || i2 >= 100) {
            MLog.m388e(f364d);
        } else {
            f365e.m1204a(str, i, d, i2);
        }
    }

    /* renamed from: a */
    private static boolean m1224a(String str) {
        return str == null || str.trim().length() <= 0;
    }
}
