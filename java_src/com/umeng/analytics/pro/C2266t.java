package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
/* compiled from: SPHelper.java */
/* renamed from: com.umeng.analytics.pro.t */
/* loaded from: classes2.dex */
public final class C2266t {

    /* renamed from: a */
    private static C2266t f657a = null;

    /* renamed from: b */
    private static Context f658b = null;

    /* renamed from: c */
    private static String f659c = null;

    /* renamed from: d */
    private static final String f660d = "mobclick_agent_user_";

    /* compiled from: SPHelper.java */
    /* renamed from: com.umeng.analytics.pro.t$a */
    /* loaded from: classes2.dex */
    private static final class C2267a {

        /* renamed from: a */
        private static final C2266t f661a = new C2266t();

        private C2267a() {
        }
    }

    /* renamed from: a */
    public static synchronized C2266t m1033a(Context context) {
        C2266t c2266t;
        synchronized (C2266t.class) {
            if (f658b == null && context != null) {
                f658b = context.getApplicationContext();
            }
            if (f658b != null) {
                f659c = context.getPackageName();
            }
            c2266t = C2267a.f661a;
        }
        return c2266t;
    }

    /* renamed from: a */
    public void m1031a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            SharedPreferences.Editor edit = m1027e().edit();
            edit.putString("au_p", str);
            edit.putString("au_u", str2);
            edit.commit();
        }
    }

    /* renamed from: a */
    public String[] m1035a() {
        SharedPreferences m1027e = m1027e();
        if (m1027e != null) {
            String string = m1027e.getString("au_p", null);
            String string2 = m1027e.getString("au_u", null);
            if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                return new String[]{string, string2};
            }
            return null;
        }
        return null;
    }

    /* renamed from: b */
    public void m1030b() {
        SharedPreferences m1027e = m1027e();
        if (m1027e != null) {
            m1027e.edit().remove("au_p").remove("au_u").commit();
        }
    }

    /* renamed from: c */
    public String m1029c() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f658b);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("st", null);
        }
        return null;
    }

    /* renamed from: a */
    public void m1032a(String str) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f658b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("st", str).commit();
        }
    }

    /* renamed from: a */
    public void m1034a(int i) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f658b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt("vt", i).commit();
        }
    }

    /* renamed from: d */
    public int m1028d() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f658b);
        if (sharedPreferences != null) {
            return sharedPreferences.getInt("vt", 0);
        }
        return 0;
    }

    /* renamed from: e */
    private SharedPreferences m1027e() {
        if (f658b == null) {
            return null;
        }
        return f658b.getSharedPreferences(f660d + f659c, 0);
    }
}
