package com.umeng.commonsdk.internal;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.inputmethod.InputMethodInfo;
import com.umeng.analytics.pro.C2216b;
import com.umeng.commonsdk.framework.C2276c;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.utils.C2289a;
import com.umeng.commonsdk.internal.utils.C2299d;
import com.umeng.commonsdk.internal.utils.C2307j;
import com.umeng.commonsdk.internal.utils.C2311k;
import com.umeng.commonsdk.internal.utils.C2312l;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.proguard.C2350e;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.proguard.C2376u;
import com.umeng.commonsdk.stateless.C2387a;
import com.umeng.commonsdk.stateless.C2401f;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.idtracking.C2426e;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UMInternalManager.java */
/* renamed from: com.umeng.commonsdk.internal.d */
/* loaded from: classes2.dex */
public class C2288d {
    /* renamed from: a */
    public static void m960a(Context context) {
        try {
            C2419e.m328a("walle", "[internal] workEvent send envelope");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(C2354g.f1010au, C2285a.f716d);
            JSONObject buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, m950e(context));
            if (buildEnvelopeWithExtHeader != null && !buildEnvelopeWithExtHeader.has(C2216b.f448ao)) {
                C2419e.m328a("walle", "[internal] workEvent send envelope back, result is ok");
                C2289a.m918f(context);
                C2307j.m837d(context);
            }
        } catch (Exception e) {
            C2345b.m708a(context, e);
        }
    }

    /* renamed from: b */
    public static void m956b(Context context) {
        C2419e.m328a("walle", "[internal] begin by stateful--->>>");
        if (context != null) {
            try {
                if (UMEnvelopeBuild.isReadyBuild(context, UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                    UMWorkDispatch.sendEvent(context, C2285a.f717e, C2286b.m962a(context).m963a(), null);
                }
            } catch (Throwable th) {
                C2345b.m708a(context, th);
            }
        }
    }

    /* renamed from: c */
    public static void m953c(Context context) {
        if (context != null) {
            try {
                C2419e.m328a("walle", "[internal] begin by not stateful--->>>");
                context = context.getApplicationContext();
                C2401f.m420a(context, context.getFilesDir() + "/" + C2387a.f1127e + "/" + Base64.encodeToString(C2285a.f713a.getBytes(), 0), 10);
                UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                JSONObject buildSLBaseHeader = uMSLEnvelopeBuild.buildSLBaseHeader(context);
                if (buildSLBaseHeader != null && buildSLBaseHeader.has("header")) {
                    try {
                        JSONObject jSONObject = (JSONObject) buildSLBaseHeader.opt("header");
                        if (jSONObject != null) {
                            jSONObject.put(C2354g.f1010au, C2285a.f716d);
                        }
                    } catch (Exception e) {
                    }
                }
                C2419e.m328a("walle", "[internal] header is " + buildSLBaseHeader.toString());
                JSONObject m951d = m951d(context);
                C2419e.m328a("walle", "[internal] body is " + m951d.toString());
                C2419e.m328a("walle", uMSLEnvelopeBuild.buildSLEnvelope(context, buildSLBaseHeader, m951d, C2285a.f713a).toString());
            } catch (Throwable th) {
                C2345b.m708a(context, th);
            }
        }
    }

    /* renamed from: d */
    public static JSONObject m951d(Context context) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                try {
                    JSONArray m939p = m939p(applicationContext);
                    if (m939p != null && m939p.length() > 0) {
                        jSONObject2.put("run_server", m939p);
                    }
                } catch (Exception e) {
                    C2345b.m708a(applicationContext, e);
                }
                try {
                    String m909k = C2289a.m909k(applicationContext);
                    if (!TextUtils.isEmpty(m909k)) {
                        jSONObject2.put("imsi", m909k);
                    }
                } catch (Exception e2) {
                    C2345b.m708a(applicationContext, e2);
                }
                try {
                    String m908l = C2289a.m908l(applicationContext);
                    if (!TextUtils.isEmpty(m908l)) {
                        jSONObject2.put("meid", m908l);
                    }
                } catch (Exception e3) {
                    C2345b.m708a(applicationContext, e3);
                }
                try {
                    jSONObject.put(C2276c.f678d, jSONObject2);
                } catch (JSONException e4) {
                    C2345b.m708a(applicationContext, e4);
                }
            } catch (Exception e5) {
            }
        }
        return jSONObject;
    }

    /* renamed from: e */
    public static JSONObject m950e(Context context) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                JSONArray m939p = m939p(applicationContext);
                if (m939p != null && m939p.length() > 0) {
                    jSONObject2.put("rs", m939p);
                }
            } catch (Exception e) {
                C2345b.m708a(applicationContext, e);
            }
            try {
                JSONArray m938q = m938q(applicationContext);
                if (m938q != null && m938q.length() > 0) {
                    jSONObject2.put("bstn", m938q);
                }
            } catch (Exception e2) {
                C2345b.m708a(applicationContext, e2);
            }
            try {
                JSONArray m937r = m937r(applicationContext);
                if (m937r != null && m937r.length() > 0) {
                    jSONObject2.put("by", m937r);
                }
            } catch (Exception e3) {
                C2345b.m708a(applicationContext, e3);
            }
            try {
                m959a(applicationContext, jSONObject2);
            } catch (Exception e4) {
                C2345b.m708a(applicationContext, e4);
            }
            try {
                m955b(applicationContext, jSONObject2);
            } catch (Exception e5) {
                C2345b.m708a(applicationContext, e5);
            }
            try {
                JSONObject m961a = m961a();
                if (m961a != null && m961a.length() > 0) {
                    jSONObject2.put("sd", m961a);
                }
            } catch (Exception e6) {
                C2345b.m708a(applicationContext, e6);
            }
            try {
                JSONObject m957b = m957b();
                if (m957b != null && m957b.length() > 0) {
                    jSONObject2.put("build", m957b);
                }
            } catch (Exception e7) {
                C2345b.m708a(applicationContext, e7);
            }
            try {
                JSONObject jSONObject3 = new JSONObject();
                JSONArray m948g = m948g(applicationContext);
                if (m948g != null && m948g.length() > 0) {
                    try {
                        jSONObject3.put("a_sr", m948g);
                    } catch (JSONException e8) {
                    }
                }
                JSONArray m839c = C2307j.m839c(applicationContext);
                if (m839c != null && m839c.length() > 0) {
                    try {
                        jSONObject3.put("stat", m839c);
                    } catch (JSONException e9) {
                    }
                }
                jSONObject2.put("sr", jSONObject3);
            } catch (Exception e10) {
                C2345b.m708a(applicationContext, e10);
            }
            try {
                JSONObject m947h = m947h(applicationContext);
                if (m947h != null && m947h.length() > 0) {
                    jSONObject2.put("scr", m947h);
                }
            } catch (Exception e11) {
                C2345b.m708a(applicationContext, e11);
            }
            try {
                JSONObject m946i = m946i(applicationContext);
                if (m946i != null && m946i.length() > 0) {
                    jSONObject2.put("sinfo", m946i);
                }
            } catch (Exception e12) {
                C2345b.m708a(applicationContext, e12);
            }
            try {
                JSONObject jSONObject4 = new JSONObject();
                JSONArray m921e = C2289a.m921e(applicationContext);
                if (m921e != null && m921e.length() > 0) {
                    try {
                        jSONObject4.put("wl", m921e);
                    } catch (JSONException e13) {
                    }
                }
                JSONArray m945j = m945j(applicationContext);
                if (m945j != null && m945j.length() > 0) {
                    try {
                        jSONObject4.put("a_wls", m945j);
                    } catch (JSONException e14) {
                    }
                }
                jSONObject2.put("winfo", jSONObject4);
            } catch (Exception e15) {
                C2345b.m708a(applicationContext, e15);
            }
            try {
                JSONArray m944k = m944k(applicationContext);
                if (m944k != null && m944k.length() > 0) {
                    jSONObject2.put("input", m944k);
                }
            } catch (Exception e16) {
                C2345b.m708a(applicationContext, e16);
            }
            try {
                JSONObject m905o = C2289a.m905o(applicationContext);
                if (m905o != null && m905o.length() > 0) {
                    jSONObject2.put("bt", m905o);
                }
            } catch (Exception e17) {
                C2345b.m708a(applicationContext, e17);
            }
            try {
                JSONArray m943l = m943l(applicationContext);
                if (m943l != null && m943l.length() > 0) {
                    jSONObject2.put("cam", m943l);
                }
            } catch (Exception e18) {
                C2345b.m708a(applicationContext, e18);
            }
            try {
                JSONArray m942m = m942m(applicationContext);
                if (m942m != null && m942m.length() > 0) {
                    jSONObject2.put("appls", m942m);
                }
            } catch (Exception e19) {
                C2345b.m708a(applicationContext, e19);
            }
            try {
                JSONObject m941n = m941n(applicationContext);
                if (m941n != null && m941n.length() > 0) {
                    jSONObject2.put("mem", m941n);
                }
            } catch (Exception e20) {
                C2345b.m708a(applicationContext, e20);
            }
            try {
                JSONObject m940o = m940o(applicationContext);
                if (m940o != null && m940o.length() > 0) {
                    jSONObject2.put("lbs", m940o);
                }
            } catch (Exception e21) {
                C2345b.m708a(applicationContext, e21);
            }
            try {
                JSONObject m952d = m952d();
                if (m952d != null && m952d.length() > 0) {
                    jSONObject2.put(C2354g.f1036v, m952d);
                }
            } catch (Exception e22) {
            }
            try {
                JSONObject m954c = m954c();
                if (m954c != null && m954c.length() > 0) {
                    jSONObject2.put("rom", m954c);
                }
            } catch (Exception e23) {
            }
            try {
                jSONObject.put(C2354g.f1000ak, jSONObject2);
            } catch (JSONException e24) {
                C2345b.m708a(applicationContext, e24);
            }
        }
        return jSONObject;
    }

    /* renamed from: c */
    private static JSONObject m954c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tot_s", C2289a.m915h());
            jSONObject.put("ava_s", C2289a.m913i());
            jSONObject.put("ts", System.currentTimeMillis());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: d */
    private static JSONObject m952d() {
        JSONObject jSONObject = new JSONObject();
        try {
            C2299d.C2300a m883a = C2299d.m883a();
            if (m883a != null) {
                jSONObject.put("pro", m883a.f765a);
                jSONObject.put("pla", m883a.f766b);
                jSONObject.put("cpus", m883a.f767c);
                jSONObject.put("fea", m883a.f768d);
                jSONObject.put("imp", m883a.f769e);
                jSONObject.put("arc", m883a.f770f);
                jSONObject.put("var", m883a.f771g);
                jSONObject.put("par", m883a.f772h);
                jSONObject.put("rev", m883a.f773i);
                jSONObject.put("har", m883a.f774j);
                jSONObject.put("rev", m883a.f775k);
                jSONObject.put("ser", m883a.f776l);
                jSONObject.put("cur_cpu", C2299d.m880d());
                jSONObject.put("max_cpu", C2299d.m882b());
                jSONObject.put("min_cpu", C2299d.m881c());
                jSONObject.put("ts", System.currentTimeMillis());
            }
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: o */
    private static JSONObject m940o(Context context) {
        if (context == null) {
            return null;
        }
        return C2350e.m699b(context.getApplicationContext());
    }

    /* renamed from: p */
    private static JSONArray m939p(Context context) {
        Throwable th;
        List<ActivityManager.RunningServiceInfo> runningServices;
        JSONArray jSONArray;
        JSONArray jSONArray2 = null;
        if (context == null) {
            return null;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService("activity");
            if (activityManager == null || (runningServices = activityManager.getRunningServices(Integer.MAX_VALUE)) == null || runningServices.isEmpty()) {
                return null;
            }
            int i = 0;
            while (i < runningServices.size()) {
                if (runningServices.get(i) == null || runningServices.get(i).service == null || runningServices.get(i).service.getClassName() == null || runningServices.get(i).service.getPackageName() == null) {
                    jSONArray = jSONArray2;
                } else {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("sn", runningServices.get(i).service.getClassName().toString());
                        jSONObject.put("pn", runningServices.get(i).service.getPackageName().toString());
                        jSONArray = jSONArray2 == null ? new JSONArray() : jSONArray2;
                        try {
                            jSONArray.put(jSONObject);
                        } catch (JSONException e) {
                        } catch (Throwable th2) {
                            th = th2;
                            jSONArray2 = jSONArray;
                            C2345b.m708a(context, th);
                            return jSONArray2;
                        }
                    } catch (JSONException e2) {
                        jSONArray = jSONArray2;
                    }
                }
                i++;
                jSONArray2 = jSONArray;
            }
            if (jSONArray2 != null) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ts", System.currentTimeMillis());
                    jSONObject2.put("ls", jSONArray2);
                } catch (JSONException e3) {
                }
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("sers", jSONObject2);
                } catch (JSONException e4) {
                }
                JSONArray jSONArray3 = new JSONArray();
                try {
                    jSONArray3.put(jSONObject3);
                    return jSONArray3;
                } catch (Throwable th3) {
                    th = th3;
                    jSONArray2 = jSONArray3;
                    C2345b.m708a(context, th);
                    return jSONArray2;
                }
            }
            return jSONArray2;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* renamed from: q */
    private static JSONArray m938q(Context context) {
        JSONArray jSONArray = new JSONArray();
        JSONObject m821d = C2311k.m821d(context);
        if (m821d != null) {
            try {
                String m820e = C2311k.m820e(context);
                if (!TextUtils.isEmpty(m820e)) {
                    m821d.put("sig", m820e);
                }
                jSONArray.put(m821d);
            } catch (Exception e) {
            }
        }
        return jSONArray;
    }

    /* renamed from: r */
    private static JSONArray m937r(Context context) {
        JSONArray jSONArray = new JSONArray();
        String m819f = C2311k.m819f(context);
        if (!TextUtils.isEmpty(m819f)) {
            try {
                JSONObject jSONObject = new JSONObject(m819f);
                if (jSONObject != null) {
                    jSONArray.put(jSONObject);
                }
            } catch (Exception e) {
            }
        }
        return jSONArray;
    }

    /* renamed from: s */
    private static JSONArray m936s(Context context) {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = null;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String m826a = C2311k.m826a(applicationContext);
            if (!TextUtils.isEmpty(m826a)) {
                if (0 == 0) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception e) {
                    }
                }
                jSONObject.put(C2354g.f986X, m826a);
            }
            String m824b = C2311k.m824b(applicationContext);
            if (!TextUtils.isEmpty(m824b)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception e2) {
                    }
                }
                jSONObject.put(C2354g.f987Y, m824b);
            }
            String m822c = C2311k.m822c(applicationContext);
            if (!TextUtils.isEmpty(m822c)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception e3) {
                    }
                }
                jSONObject.put(C2354g.f988Z, m822c);
            }
            JSONObject m821d = C2311k.m821d(applicationContext);
            if (m821d != null) {
                try {
                    String m820e = C2311k.m820e(applicationContext);
                    if (!TextUtils.isEmpty(m820e)) {
                        m821d.put("signalscale", m820e);
                    }
                    if (jSONObject == null) {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.put(C2354g.f991ab, m821d);
                } catch (Exception e4) {
                }
            }
            String m819f = C2311k.m819f(applicationContext);
            if (!TextUtils.isEmpty(m819f)) {
                if (jSONObject == null) {
                    try {
                        jSONObject = new JSONObject();
                    } catch (Exception e5) {
                    }
                }
                jSONObject.put(C2354g.f985W, new JSONObject(m819f));
            }
            if (jSONObject != null) {
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }

    /* renamed from: a */
    private static void m959a(Context context, JSONObject jSONObject) {
        PackageManager packageManager;
        if (context != null && (packageManager = context.getApplicationContext().getPackageManager()) != null) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            m958a(jSONObject, "gp", packageManager.hasSystemFeature("android.hardware.location.gps"));
            m958a(jSONObject, "to", packageManager.hasSystemFeature("android.hardware.touchscreen"));
            m958a(jSONObject, "mo", packageManager.hasSystemFeature("android.hardware.telephony"));
            m958a(jSONObject, "ca", packageManager.hasSystemFeature("android.hardware.camera"));
            m958a(jSONObject, "fl", packageManager.hasSystemFeature("android.hardware.camera.flash"));
        }
    }

    /* renamed from: a */
    private static void m958a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject != null && !TextUtils.isEmpty(str)) {
            try {
                if (z) {
                    jSONObject.put(str, 1);
                } else {
                    jSONObject.put(str, 0);
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: b */
    private static void m955b(Context context, JSONObject jSONObject) {
        if (context != null) {
            String m816a = C2312l.m816a(context);
            if (!TextUtils.isEmpty(m816a)) {
                try {
                    JSONObject jSONObject2 = new JSONObject(m816a);
                    if (jSONObject2 != null) {
                        if (jSONObject == null) {
                            jSONObject = new JSONObject();
                        }
                        if (jSONObject2.has(C2312l.f834d)) {
                            jSONObject.put(C2312l.f834d, jSONObject2.opt(C2312l.f834d));
                        }
                        if (jSONObject2.has(C2312l.f833c)) {
                            jSONObject.put(C2312l.f833c, jSONObject2.opt(C2312l.f833c));
                        }
                        if (jSONObject2.has(C2312l.f832b)) {
                            jSONObject.put(C2312l.f832b, jSONObject2.opt(C2312l.f832b));
                        }
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: f */
    public static String m949f(Context context) {
        try {
            C2426e m269a = C2426e.m269a(context);
            if (m269a != null) {
                m269a.m271a();
                String encodeToString = Base64.encodeToString(new C2376u().m557a(m269a.m266b()), 0);
                if (!TextUtils.isEmpty(encodeToString)) {
                    return encodeToString;
                }
            }
        } catch (Exception e) {
            C2345b.m708a(context, e);
        }
        return null;
    }

    /* renamed from: a */
    public static JSONObject m961a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("f", C2289a.m928c());
            jSONObject.put("t", C2289a.m925d());
            jSONObject.put("ts", System.currentTimeMillis());
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: b */
    public static JSONObject m957b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("a_pr", Build.PRODUCT);
            jSONObject.put("a_bl", Build.BOOTLOADER);
            if (Build.VERSION.SDK_INT >= 14) {
                jSONObject.put("a_rv", Build.getRadioVersion());
            }
            jSONObject.put("a_fp", Build.FINGERPRINT);
            jSONObject.put("a_hw", Build.HARDWARE);
            jSONObject.put("a_host", Build.HOST);
            if (Build.VERSION.SDK_INT >= 21) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < Build.SUPPORTED_32_BIT_ABIS.length; i++) {
                    jSONArray.put(Build.SUPPORTED_32_BIT_ABIS[i]);
                }
                if (jSONArray != null && jSONArray.length() > 0) {
                    jSONObject.put("a_s32", jSONArray);
                }
            }
            if (Build.VERSION.SDK_INT >= 21) {
                JSONArray jSONArray2 = new JSONArray();
                for (int i2 = 0; i2 < Build.SUPPORTED_64_BIT_ABIS.length; i2++) {
                    jSONArray2.put(Build.SUPPORTED_64_BIT_ABIS[i2]);
                }
                if (jSONArray2 != null && jSONArray2.length() > 0) {
                    jSONObject.put("a_s64", jSONArray2);
                }
            }
            if (Build.VERSION.SDK_INT >= 21) {
                JSONArray jSONArray3 = new JSONArray();
                for (int i3 = 0; i3 < Build.SUPPORTED_ABIS.length; i3++) {
                    jSONArray3.put(Build.SUPPORTED_ABIS[i3]);
                }
                if (jSONArray3 != null && jSONArray3.length() > 0) {
                    jSONObject.put("a_sa", jSONArray3);
                }
            }
            jSONObject.put("a_ta", Build.TAGS);
            jSONObject.put("a_uk", "unknown");
            jSONObject.put("a_user", Build.USER);
            jSONObject.put("a_cpu1", Build.CPU_ABI);
            jSONObject.put("a_cpu2", Build.CPU_ABI2);
            jSONObject.put("a_ra", Build.RADIO);
            if (Build.VERSION.SDK_INT >= 23) {
                jSONObject.put("a_bos", Build.VERSION.BASE_OS);
                jSONObject.put("a_pre", Build.VERSION.PREVIEW_SDK_INT);
                jSONObject.put("a_sp", Build.VERSION.SECURITY_PATCH);
            }
            jSONObject.put("a_cn", Build.VERSION.CODENAME);
            jSONObject.put("a_intl", Build.VERSION.INCREMENTAL);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: g */
    public static JSONArray m948g(Context context) {
        if (context == null) {
            return null;
        }
        return C2311k.m818g(context.getApplicationContext());
    }

    /* renamed from: h */
    public static JSONObject m947h(Context context) {
        DisplayMetrics displayMetrics;
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            try {
                jSONObject.put("a_st_h", C2289a.m914h(context));
                jSONObject.put("a_nav_h", C2289a.m912i(context));
                if (context.getResources() != null && (displayMetrics = context.getResources().getDisplayMetrics()) != null) {
                    jSONObject.put("a_den", displayMetrics.density);
                    jSONObject.put("a_dpi", displayMetrics.densityDpi);
                }
            } catch (Exception e) {
                C2345b.m708a(context, e);
            }
        }
        return jSONObject;
    }

    /* renamed from: i */
    public static JSONObject m946i(Context context) {
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String packageName = applicationContext.getPackageName();
            try {
                jSONObject.put("a_fit", C2289a.m932a(applicationContext, packageName));
                jSONObject.put("a_alut", C2289a.m929b(applicationContext, packageName));
                jSONObject.put("a_c", C2289a.m926c(applicationContext, packageName));
                jSONObject.put("a_uid", C2289a.m923d(applicationContext, packageName));
                if (C2289a.m935a()) {
                    jSONObject.put("a_root", 1);
                } else {
                    jSONObject.put("a_root", 0);
                }
                jSONObject.put("tf", C2289a.m931b());
                jSONObject.put("s_fs", C2289a.m933a(applicationContext));
                jSONObject.put("a_meid", C2289a.m908l(applicationContext));
                jSONObject.put("a_imsi", C2289a.m909k(applicationContext));
                jSONObject.put("st", C2289a.m919f());
                String m824b = C2311k.m824b(applicationContext);
                if (!TextUtils.isEmpty(m824b)) {
                    try {
                        jSONObject.put("a_iccid", m824b);
                    } catch (Exception e) {
                    }
                }
                String m822c = C2311k.m822c(applicationContext);
                if (!TextUtils.isEmpty(m822c)) {
                    try {
                        jSONObject.put("a_simei", m822c);
                    } catch (Exception e2) {
                    }
                }
                jSONObject.put("hn", C2289a.m917g());
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e3) {
                C2345b.m708a(applicationContext, e3);
            }
        }
        return jSONObject;
    }

    /* renamed from: j */
    public static JSONArray m945j(Context context) {
        Context applicationContext;
        List<ScanResult> m930b;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (m930b = C2289a.m930b((applicationContext = context.getApplicationContext()))) != null && m930b.size() > 0) {
            for (ScanResult scanResult : m930b) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("a_bssid", scanResult.BSSID);
                    jSONObject.put("a_ssid", scanResult.BSSID);
                    jSONObject.put("a_cap", scanResult.capabilities);
                    jSONObject.put("a_fcy", scanResult.frequency);
                    jSONObject.put("ts", System.currentTimeMillis());
                    if (Build.VERSION.SDK_INT >= 23) {
                        jSONObject.put("a_c0", scanResult.centerFreq0);
                        jSONObject.put("a_c1", scanResult.centerFreq1);
                        jSONObject.put("a_cw", scanResult.channelWidth);
                        if (scanResult.is80211mcResponder()) {
                            jSONObject.put("a_is80211", 1);
                        } else {
                            jSONObject.put("a_is80211", 0);
                        }
                        if (scanResult.isPasspointNetwork()) {
                            jSONObject.put("a_isppn", 1);
                        } else {
                            jSONObject.put("a_isppn", 0);
                        }
                        jSONObject.put("a_ofn", scanResult.operatorFriendlyName);
                        jSONObject.put("a_vn", scanResult.venueName);
                    }
                    jSONObject.put("a_dc", scanResult.describeContents());
                    if (jSONObject != null) {
                        jSONArray.put(jSONObject);
                    }
                } catch (Exception e) {
                    C2345b.m708a(applicationContext, e);
                }
            }
        }
        return jSONArray;
    }

    /* renamed from: k */
    public static JSONArray m944k(Context context) {
        Context applicationContext;
        List<InputMethodInfo> m907m;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (m907m = C2289a.m907m((applicationContext = context.getApplicationContext()))) != null) {
            for (InputMethodInfo inputMethodInfo : m907m) {
                try {
                    CharSequence loadLabel = inputMethodInfo.loadLabel(applicationContext.getPackageManager());
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("a_la", loadLabel);
                    jSONObject.put("a_pn", inputMethodInfo.getPackageName());
                    jSONObject.put("ts", System.currentTimeMillis());
                    if (jSONObject != null) {
                        jSONArray.put(jSONObject);
                    }
                } catch (Exception e) {
                    C2345b.m708a(applicationContext, e);
                }
            }
        }
        return jSONArray;
    }

    /* renamed from: l */
    public static JSONArray m943l(Context context) {
        Context applicationContext;
        List<C2307j.C2310a> m835e;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (m835e = C2307j.m835e((applicationContext = context.getApplicationContext()))) != null && !m835e.isEmpty()) {
            for (C2307j.C2310a c2310a : m835e) {
                if (c2310a != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_w", c2310a.f825a);
                        jSONObject.put("a_h", c2310a.f826b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        if (jSONObject != null) {
                            jSONArray.put(jSONObject);
                        }
                    } catch (Exception e) {
                        C2345b.m708a(applicationContext, e);
                    }
                }
            }
        }
        return jSONArray;
    }

    /* renamed from: m */
    public static JSONArray m942m(Context context) {
        Context applicationContext;
        List<C2289a.C2290a> m904p;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (m904p = C2289a.m904p((applicationContext = context.getApplicationContext()))) != null && !m904p.isEmpty()) {
            for (C2289a.C2290a c2290a : m904p) {
                if (c2290a != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_pn", c2290a.f735a);
                        jSONObject.put("a_la", c2290a.f736b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        if (jSONObject != null) {
                            jSONArray.put(jSONObject);
                        }
                    } catch (Exception e) {
                        C2345b.m708a(applicationContext, e);
                    }
                }
            }
        }
        return jSONArray;
    }

    /* renamed from: n */
    public static JSONObject m941n(Context context) {
        Context applicationContext;
        ActivityManager.MemoryInfo m903q;
        JSONObject jSONObject = new JSONObject();
        if (context != null && (m903q = C2289a.m903q((applicationContext = context.getApplicationContext()))) != null) {
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    jSONObject.put("t", m903q.totalMem);
                }
                jSONObject.put("f", m903q.availMem);
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e) {
                C2345b.m708a(applicationContext, e);
            }
        }
        return jSONObject;
    }
}
