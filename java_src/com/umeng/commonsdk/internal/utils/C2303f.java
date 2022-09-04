package com.umeng.commonsdk.internal.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.internal.utils.C2289a;
import com.umeng.commonsdk.statistics.common.C2419e;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: InfoPreference.java */
/* renamed from: com.umeng.commonsdk.internal.utils.f */
/* loaded from: classes2.dex */
public class C2303f {

    /* renamed from: a */
    private static final String f780a = "info";

    /* renamed from: b */
    private static final String f781b = "a_na";

    /* renamed from: c */
    private static final String f782c = "a_st";

    /* renamed from: d */
    private static final String f783d = "a_ad";

    /* renamed from: e */
    private static final String f784e = "blueinfo";

    /* renamed from: f */
    private static final String f785f = "a_dc";

    /* renamed from: g */
    private static final String f786g = "bssid";

    /* renamed from: h */
    private static final String f787h = "ssid";

    /* renamed from: i */
    private static final String f788i = "a_fcy";

    /* renamed from: j */
    private static final String f789j = "a_hssid";

    /* renamed from: k */
    private static final String f790k = "a_ip";

    /* renamed from: l */
    private static final String f791l = "a_ls";

    /* renamed from: m */
    private static final String f792m = "a_mac";

    /* renamed from: n */
    private static final String f793n = "a_nid";

    /* renamed from: o */
    private static final String f794o = "rssi";

    /* renamed from: p */
    private static final String f795p = "sta";

    /* renamed from: q */
    private static final String f796q = "ts";

    /* renamed from: r */
    private static final String f797r = "wifiinfo";

    /* renamed from: s */
    private static final String f798s = "ua";

    /* renamed from: a */
    public static JSONObject m878a(Context context) {
        JSONObject jSONObject;
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f780a, 0);
        if (sharedPreferences != null) {
            try {
                String string = sharedPreferences.getString(f784e, null);
                if (string != null) {
                    jSONObject = new JSONObject(string);
                    return jSONObject;
                }
            } catch (Exception e) {
                if (e != null) {
                }
                return null;
            }
        }
        jSONObject = null;
        return jSONObject;
    }

    /* renamed from: a */
    public static void m876a(Context context, Object obj) {
        if (obj != null) {
            try {
                C2289a.C2291b c2291b = (C2289a.C2291b) obj;
                SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f780a, 0);
                String str = null;
                if (sharedPreferences != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(f781b, c2291b.f739c);
                    jSONObject.put(f782c, c2291b.f738b);
                    jSONObject.put(f783d, c2291b.f737a);
                    jSONObject.put("ts", System.currentTimeMillis());
                    if (jSONObject != null) {
                        str = jSONObject.toString();
                    }
                }
                if (str != null) {
                    sharedPreferences.edit().putString(f784e, str).commit();
                }
            } catch (Exception e) {
                if (e != null) {
                    C2419e.m307e("saveBluetoothInfo:" + e.getMessage());
                }
            }
        }
    }

    /* renamed from: b */
    public static JSONArray m874b(Context context) {
        String string;
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f780a, 0);
            return (sharedPreferences == null || (string = sharedPreferences.getString(f797r, null)) == null) ? null : new JSONArray(string);
        } catch (Exception e) {
            if (e == null) {
                return null;
            }
            C2419e.m307e(e.getMessage());
            return null;
        }
    }

    /* renamed from: c */
    public static void m873c(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f780a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().remove(f797r).commit();
        }
    }

    /* renamed from: a */
    public static void m877a(Context context, C2289a.C2292c c2292c) {
        JSONArray jSONArray;
        String str = null;
        try {
            SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f780a, 0);
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString(f797r, null);
                if (string == null) {
                    jSONArray = new JSONArray();
                } else {
                    jSONArray = new JSONArray(string);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(f785f, c2292c.f740a);
                jSONObject.put(f786g, c2292c.f741b);
                jSONObject.put(f787h, c2292c.f742c);
                jSONObject.put(f788i, c2292c.f743d);
                jSONObject.put(f789j, c2292c.f744e);
                jSONObject.put(f790k, c2292c.f745f);
                jSONObject.put(f791l, c2292c.f746g);
                jSONObject.put(f792m, c2292c.f747h);
                jSONObject.put(f793n, c2292c.f748i);
                jSONObject.put(f794o, c2292c.f749j);
                jSONObject.put(f795p, c2292c.f750k);
                jSONObject.put("ts", c2292c.f751l);
                jSONArray.put(jSONObject);
                if (jSONObject != null) {
                    str = jSONArray.toString();
                }
            }
            if (str != null) {
                sharedPreferences.edit().putString(f797r, str).commit();
            }
        } catch (Exception e) {
            if (e != null) {
                C2419e.m307e(e.getMessage());
            }
        }
    }

    /* renamed from: a */
    public static void m875a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f780a, 0);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString(f798s, str).commit();
        }
    }

    /* renamed from: d */
    public static String m872d(Context context) {
        SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(f780a, 0);
        if (sharedPreferences != null) {
            return sharedPreferences.getString(f798s, null);
        }
        return null;
    }
}
