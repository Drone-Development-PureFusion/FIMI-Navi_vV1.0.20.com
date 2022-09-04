package com.umeng.analytics.pro;

import android.content.Context;
import ch.qos.logback.classic.turbo.ReconfigureOnChangeFilter;
import com.umeng.analytics.C2208b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: DefconProcesser.java */
/* renamed from: com.umeng.analytics.pro.l */
/* loaded from: classes2.dex */
public class C2252l {

    /* renamed from: a */
    private static final int f631a = 0;

    /* renamed from: b */
    private static final int f632b = 1;

    /* renamed from: c */
    private static final int f633c = 2;

    /* renamed from: d */
    private static final int f634d = 3;

    /* renamed from: e */
    private final long f635e;

    private C2252l() {
        this.f635e = ReconfigureOnChangeFilter.DEFAULT_REFRESH_PERIOD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefconProcesser.java */
    /* renamed from: com.umeng.analytics.pro.l$a */
    /* loaded from: classes2.dex */
    public static class C2254a {

        /* renamed from: a */
        public static final C2252l f636a = new C2252l();

        private C2254a() {
        }
    }

    /* renamed from: a */
    public static C2252l m1085a() {
        return C2254a.f636a;
    }

    /* renamed from: a */
    public int m1084a(Context context) {
        return Integer.valueOf(UMEnvelopeBuild.imprintProperty(context, "defcon", String.valueOf(0))).intValue();
    }

    /* renamed from: a */
    public void m1083a(JSONObject jSONObject, Context context) {
        int m1084a = m1084a(context);
        if (m1084a == 1) {
            jSONObject.remove(C2216b.f431Y);
            C2238g.m1178a(context).m1158f();
        } else if (m1084a == 2) {
            jSONObject.remove(C2216b.f431Y);
            jSONObject.remove(C2216b.f436ac);
            jSONObject.remove(C2216b.f441ah);
            try {
                jSONObject.put(C2216b.f436ac, m1080c());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            C2238g.m1178a(context).m1158f();
        } else if (m1084a == 3) {
            jSONObject.remove(C2216b.f431Y);
            jSONObject.remove(C2216b.f436ac);
            jSONObject.remove(C2216b.f441ah);
            C2238g.m1178a(context).m1158f();
        }
    }

    /* renamed from: b */
    public void m1081b(JSONObject jSONObject, Context context) {
        int m1084a = m1084a(context);
        if (m1084a == 1) {
            jSONObject.remove("error");
            jSONObject.remove(C2216b.f420N);
            jSONObject.remove(C2216b.f421O);
            C2238g.m1178a(context).m1166a(false, true);
        } else if (m1084a == 2) {
            jSONObject.remove(C2216b.f467n);
            try {
                jSONObject.put(C2216b.f467n, m1082b());
            } catch (Exception e) {
            }
            jSONObject.remove("error");
            jSONObject.remove(C2216b.f420N);
            jSONObject.remove(C2216b.f421O);
            C2238g.m1178a(context).m1166a(false, true);
        } else if (m1084a == 3) {
            jSONObject.remove(C2216b.f467n);
            jSONObject.remove("error");
            jSONObject.remove(C2216b.f420N);
            jSONObject.remove(C2216b.f421O);
            C2238g.m1178a(context).m1166a(false, true);
        }
    }

    /* renamed from: b */
    public JSONObject m1082b() {
        JSONObject jSONObject = new JSONObject();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            jSONObject.put("id", C2259o.m1061a().m1048d());
            jSONObject.put(C2216b.f469p, currentTimeMillis);
            jSONObject.put(C2216b.f470q, currentTimeMillis + ReconfigureOnChangeFilter.DEFAULT_REFRESH_PERIOD);
            jSONObject.put("duration", ReconfigureOnChangeFilter.DEFAULT_REFRESH_PERIOD);
        } catch (Throwable th) {
        }
        return jSONObject;
    }

    /* renamed from: c */
    private JSONArray m1080c() {
        JSONArray jSONArray = new JSONArray();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            JSONObject m1231i = C2208b.m1277a().m1231i();
            if (m1231i.length() > 0) {
                jSONObject.put(C2216b.f435ab, m1231i);
            }
            jSONObject.put(C2216b.f437ad, C2259o.m1061a().m1048d());
            jSONObject.put(C2216b.f438ae, currentTimeMillis);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(C2216b.f439af, C2259o.m1061a().m1048d());
            jSONObject2.put(C2216b.f440ag, currentTimeMillis + ReconfigureOnChangeFilter.DEFAULT_REFRESH_PERIOD);
            if (m1231i.length() > 0) {
                jSONObject2.put(C2216b.f435ab, m1231i);
            }
            jSONArray.put(jSONObject).put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONArray;
    }
}
