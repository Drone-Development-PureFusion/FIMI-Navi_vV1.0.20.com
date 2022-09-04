package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import com.github.moduth.blockcanary.internal.BlockInfo;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C2208b;
import com.umeng.analytics.C2211c;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: CoreProtocolImpl.java */
/* renamed from: com.umeng.analytics.pro.i */
/* loaded from: classes2.dex */
public class C2244i {

    /* renamed from: B */
    private static final String f570B = "n_sess_dp";

    /* renamed from: C */
    private static final String f571C = "n_sess_dp_type";

    /* renamed from: q */
    private static final String f573q = "first_activate_time";

    /* renamed from: r */
    private static final String f574r = "ana_is_f";

    /* renamed from: s */
    private static final String f575s = "thtstart";

    /* renamed from: t */
    private static final String f576t = "dstk_last_time";

    /* renamed from: u */
    private static final String f577u = "dstk_cnt";

    /* renamed from: v */
    private static final String f578v = "gkvc";

    /* renamed from: w */
    private static final String f579w = "ekvc";

    /* renamed from: y */
    private static final String f580y = "-1";

    /* renamed from: b */
    private ABTest f582b;

    /* renamed from: c */
    private ImLatent f583c;

    /* renamed from: d */
    private C2248c f584d;

    /* renamed from: e */
    private SharedPreferences f585e;

    /* renamed from: f */
    private String f586f;

    /* renamed from: g */
    private String f587g;

    /* renamed from: h */
    private String f588h;

    /* renamed from: i */
    private String f589i;

    /* renamed from: j */
    private long f590j;

    /* renamed from: k */
    private int f591k;

    /* renamed from: l */
    private JSONArray f592l;

    /* renamed from: m */
    private final int f593m;

    /* renamed from: n */
    private int f594n;

    /* renamed from: o */
    private int f595o;

    /* renamed from: p */
    private long f596p;

    /* renamed from: x */
    private final long f597x;

    /* renamed from: a */
    private static Context f572a = null;

    /* renamed from: z */
    private static boolean f581z = false;

    /* renamed from: A */
    private static boolean f569A = false;

    /* compiled from: CoreProtocolImpl.java */
    /* renamed from: com.umeng.analytics.pro.i$a */
    /* loaded from: classes2.dex */
    public static class C2246a {

        /* renamed from: a */
        public static final int f598a = 4097;

        /* renamed from: b */
        public static final int f599b = 4098;

        /* renamed from: c */
        public static final int f600c = 4099;

        /* renamed from: d */
        public static final int f601d = 4100;

        /* renamed from: e */
        public static final int f602e = 4101;

        /* renamed from: f */
        public static final int f603f = 4102;

        /* renamed from: g */
        public static final int f604g = 4103;

        /* renamed from: h */
        public static final int f605h = 4104;

        /* renamed from: i */
        public static final int f606i = 4105;

        /* renamed from: j */
        public static final int f607j = 4106;

        /* renamed from: k */
        public static final int f608k = 8193;

        /* renamed from: l */
        public static final int f609l = 8194;

        /* renamed from: m */
        public static final int f610m = 8195;

        /* renamed from: n */
        public static final int f611n = 8196;

        /* renamed from: o */
        public static final int f612o = 8197;

        /* renamed from: p */
        public static final int f613p = 8198;

        /* renamed from: q */
        public static final int f614q = 8199;

        /* renamed from: r */
        public static final int f615r = 8200;

        /* renamed from: s */
        public static final int f616s = 8201;

        /* renamed from: t */
        public static final int f617t = 8202;
    }

    private C2244i() {
        this.f582b = null;
        this.f583c = null;
        this.f584d = null;
        this.f585e = null;
        this.f586f = null;
        this.f587g = null;
        this.f588h = null;
        this.f589i = null;
        this.f590j = 0L;
        this.f591k = 10;
        this.f592l = new JSONArray();
        this.f593m = 5000;
        this.f594n = 0;
        this.f595o = 0;
        this.f596p = 0L;
        this.f597x = 28800000L;
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f572a);
            this.f596p = sharedPreferences.getLong(f575s, 0L);
            this.f594n = sharedPreferences.getInt(f578v, 0);
            this.f595o = sharedPreferences.getInt(f579w, 0);
            this.f584d = new C2248c();
            this.f582b = ABTest.getService(f572a);
            this.f583c = ImLatent.getService(f572a, StatTracer.getInstance(f572a));
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CoreProtocolImpl.java */
    /* renamed from: com.umeng.analytics.pro.i$b */
    /* loaded from: classes2.dex */
    public static class C2247b {

        /* renamed from: a */
        private static final C2244i f618a = new C2244i();

        private C2247b() {
        }
    }

    /* renamed from: a */
    public static C2244i m1142a(Context context) {
        if (f572a == null && context != null) {
            f572a = context.getApplicationContext();
        }
        return C2247b.f618a;
    }

    /* renamed from: a */
    public void m1139a(Object obj, int i) {
        switch (i) {
            case 4097:
                if (obj != null) {
                    try {
                        m1123d(obj);
                    } catch (Throwable th) {
                        return;
                    }
                }
                if (!f580y.equals(((JSONObject) obj).optString("__i"))) {
                    m1135a(false);
                    return;
                }
                return;
            case 4098:
                if (obj != null) {
                    try {
                        m1123d(obj);
                    } catch (Throwable th2) {
                        return;
                    }
                }
                if (!f580y.equals(((JSONObject) obj).optString("__i"))) {
                    m1135a(false);
                    return;
                }
                return;
            case 4099:
                C2262p.m1044a(f572a);
                return;
            case C2246a.f601d /* 4100 */:
                C2242h.m1151a(f572a);
                return;
            case C2246a.f602e /* 4101 */:
                m1120e(obj);
                return;
            case C2246a.f603f /* 4102 */:
                m1106q();
                return;
            case C2246a.f604g /* 4103 */:
                C2259o.m1061a().m1057a(f572a, obj);
                return;
            case C2246a.f605h /* 4104 */:
                C2259o.m1061a().m1051b(f572a, obj);
                return;
            case C2246a.f606i /* 4105 */:
                m1145a();
                return;
            case C2246a.f607j /* 4106 */:
                m1117f(obj);
                return;
            case C2246a.f608k /* 8193 */:
                m1138a(obj, 1, false);
                return;
            case 8194:
                C2255m.m1078a(f572a).m1077a(obj);
                return;
            case C2246a.f610m /* 8195 */:
                C2208b.m1277a().m1261a(obj);
                return;
            case C2246a.f611n /* 8196 */:
                C2208b.m1277a().m1229j();
                return;
            case C2246a.f612o /* 8197 */:
                C2208b.m1277a().m1233h();
                return;
            case C2246a.f613p /* 8198 */:
                if (!TextUtils.isEmpty(C2259o.m1061a().m1050c())) {
                    m1116g();
                    return;
                }
                return;
            case C2246a.f614q /* 8199 */:
            case C2246a.f615r /* 8200 */:
                C2208b.m1277a().m1251b(obj);
                return;
            case C2246a.f616s /* 8201 */:
                C2208b.m1277a().m1251b((Object) null);
                return;
            case C2246a.f617t /* 8202 */:
                m1118f();
                return;
            default:
                return;
        }
    }

    /* renamed from: f */
    private void m1118f() {
        try {
            Class.forName("com.umeng.analytics.vismode.event.VisualHelper").getMethod("loadNativeData", Context.class).invoke(null, f572a);
        } catch (Exception e) {
        }
    }

    /* renamed from: g */
    private void m1116g() {
        try {
            Class.forName("com.umeng.analytics.vismode.event.VisualHelper").getMethod("processCommond", Context.class, String.class).invoke(null, f572a, AnalyticsConfig.getAppkey(f572a));
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void m1138a(Object obj, int i, boolean z) {
        JSONArray jSONArray;
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                String optString = jSONObject.optString("__ii");
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f572a);
                if (i == 0) {
                    long j = sharedPreferences.getLong(f576t, 0L);
                    int i2 = sharedPreferences.getInt(f577u, 0);
                    if (m1143a(j, i2)) {
                        sharedPreferences.edit().putLong(f576t, System.currentTimeMillis()).putInt(f577u, i2 == 5000 ? 0 : i2 + 1).commit();
                    } else {
                        return;
                    }
                }
                String string = sharedPreferences.getString(f570B, "");
                if (TextUtils.isEmpty(string)) {
                    jSONArray = new JSONArray();
                } else {
                    jSONArray = new JSONArray(string);
                }
                JSONObject m1231i = C2208b.m1277a().m1231i();
                if (f580y.equals(optString)) {
                    jSONObject.put(f571C, i);
                    if (!jSONObject.has(C2216b.f435ab) && m1231i.length() > 0) {
                        jSONObject.put(C2216b.f435ab, m1231i);
                    }
                    jSONArray.put(jSONObject);
                    sharedPreferences.edit().putString(f570B, jSONArray.toString()).commit();
                    return;
                }
                if (i != 3 && jSONArray.length() > 0) {
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                        if (jSONObject2 != null && jSONObject2.length() > 0) {
                            int i4 = jSONObject2.getInt(f571C);
                            if (!jSONObject2.has(C2216b.f435ab) && m1231i.length() > 0) {
                                jSONObject2.put(C2216b.f435ab, m1231i);
                            }
                            switch (i4) {
                                case 0:
                                    jSONObject2.put("_$!ts", System.currentTimeMillis());
                                    break;
                                case 1:
                                    jSONObject2.put("_$!ts", System.currentTimeMillis());
                                    break;
                            }
                            jSONObject2.put("__ii", optString);
                            jSONObject2.remove(f571C);
                            C2238g.m1178a(f572a).m1171a(jSONObject2, i4);
                        }
                    }
                    C2208b.m1277a().m1244d();
                    sharedPreferences.edit().remove(f570B).commit();
                }
                C2238g.m1178a(f572a).m1171a(jSONObject, i);
                if (z) {
                    m1125c(true);
                } else if (UMEnvelopeBuild.isReadyBuild(f572a, UMLogDataProtocol.UMBusinessType.U_DPLUS)) {
                    Defcon service = Defcon.getService(f572a);
                    if (service.isOpen()) {
                        if (new ReportPolicy.DefconPolicy(StatTracer.getInstance(f572a), service).shouldSendMessage(false)) {
                            m1125c(true);
                            return;
                        }
                        return;
                    }
                    m1125c(true);
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m1135a(boolean z) {
        if (m1119e(z) && UMEnvelopeBuild.isReadyBuild(f572a, UMLogDataProtocol.UMBusinessType.U_APP)) {
            m1125c(false);
        }
    }

    /* renamed from: c */
    private void m1125c(boolean z) {
        JSONObject m1144a;
        JSONObject buildEnvelopeWithExtHeader;
        JSONObject jSONObject = new JSONObject();
        if (z) {
            m1144a = AnalyticsConfig.FLAG_DPLUS ? m1133b(UMEnvelopeBuild.maxDataSpace(f572a)) : jSONObject;
        } else {
            m1144a = m1144a(UMEnvelopeBuild.maxDataSpace(f572a));
        }
        if (m1144a != null && m1144a.length() >= 1) {
            JSONObject jSONObject2 = (JSONObject) m1144a.opt("header");
            JSONObject jSONObject3 = (JSONObject) m1144a.opt("content");
            if (f572a != null && jSONObject2 != null && jSONObject3 != null && (buildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(f572a, jSONObject2, jSONObject3)) != null) {
                m1130b(buildEnvelopeWithExtHeader);
                m1140a((Object) buildEnvelopeWithExtHeader);
            }
        }
    }

    /* renamed from: a */
    public JSONObject m1144a(long j) {
        if (TextUtils.isEmpty(C2259o.m1061a().m1049c(f572a))) {
            return null;
        }
        JSONObject m1129b = m1129b(false);
        int m1084a = C2252l.m1085a().m1084a(f572a);
        if (m1129b.length() <= 0) {
            return null;
        }
        if (m1129b.length() == 1) {
            if (m1129b.optJSONObject(C2216b.f413G) != null && m1084a != 3) {
                return null;
            }
            if (!TextUtils.isEmpty(m1129b.optString("userlevel")) && m1084a != 3) {
                return null;
            }
        } else if (m1129b.length() == 2 && m1129b.optJSONObject(C2216b.f413G) != null && !TextUtils.isEmpty(m1129b.optString("userlevel")) && m1084a != 3) {
            return null;
        }
        JSONObject m1122d = m1122d(false);
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (m1084a == 3) {
                jSONObject2.put("analytics", new JSONObject());
            } else if (m1129b != null && m1129b.length() > 0) {
                jSONObject2.put("analytics", m1129b);
            }
            if (m1122d != null && m1122d.length() > 0) {
                jSONObject.put("header", m1122d);
            }
            if (jSONObject2.length() > 0) {
                jSONObject.put("content", jSONObject2);
            }
            return m1136a(jSONObject, j);
        } catch (Throwable th) {
            return jSONObject;
        }
    }

    /* renamed from: b */
    public JSONObject m1133b(long j) {
        if (AnalyticsConfig.FLAG_DPLUS && !TextUtils.isEmpty(C2259o.m1061a().m1049c(f572a))) {
            JSONObject jSONObject = new JSONObject();
            if (AnalyticsConfig.FLAG_DPLUS) {
                jSONObject = C2238g.m1178a(f572a).m1161c();
                C2252l.m1085a().m1083a(jSONObject, f572a);
                Defcon service = Defcon.getService(f572a);
                if (service.isOpen() && !new ReportPolicy.DefconPolicy(StatTracer.getInstance(f572a), service).shouldSendMessage(false)) {
                    jSONObject = new JSONObject();
                }
            }
            if (jSONObject.length() <= 0) {
                return null;
            }
            JSONObject m1122d = m1122d(true);
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONObject jSONObject3 = new JSONObject();
                if (jSONObject != null && jSONObject.length() > 0) {
                    jSONObject3.put("dplus", jSONObject);
                }
                if (m1122d != null && m1122d.length() > 0) {
                    jSONObject2.put("header", m1122d);
                }
                if (jSONObject3.length() > 0) {
                    jSONObject2.put("content", jSONObject3);
                }
                return m1136a(jSONObject2, j);
            } catch (Throwable th) {
                return jSONObject2;
            }
        }
        return null;
    }

    /* renamed from: a */
    private JSONObject m1136a(JSONObject jSONObject, long j) {
        try {
            if (C2251k.m1088a(jSONObject) > j) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("header");
                jSONObject2.put(C2216b.f447an, C2251k.m1088a(jSONObject));
                jSONObject.put("header", jSONObject2);
                return C2251k.m1091a(f572a, j, jSONObject);
            }
            return jSONObject;
        } catch (Throwable th) {
            return jSONObject;
        }
    }

    /* renamed from: d */
    private JSONObject m1122d(boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (AnalyticsConfig.mWrapperType != null && AnalyticsConfig.mWrapperVersion != null) {
                jSONObject.put("wrapper_version", AnalyticsConfig.mWrapperVersion);
                jSONObject.put("wrapper_type", AnalyticsConfig.mWrapperType);
            }
            int verticalType = AnalyticsConfig.getVerticalType(f572a);
            if (verticalType == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue()) {
                AnalyticsConfig.FLAG_DPLUS = true;
                verticalType = MobclickAgent.EScenarioType.E_UM_NORMAL.toValue();
            } else if (verticalType == MobclickAgent.EScenarioType.E_DUM_GAME.toValue()) {
                AnalyticsConfig.FLAG_DPLUS = true;
                verticalType = MobclickAgent.EScenarioType.E_UM_GAME.toValue();
            } else {
                AnalyticsConfig.FLAG_DPLUS = false;
            }
            jSONObject.put(C2216b.f462i, verticalType);
            jSONObject.put("sdk_version", C2263q.f656a);
            String MD5 = HelperUtils.MD5(AnalyticsConfig.getSecretKey(f572a));
            if (!TextUtils.isEmpty(MD5)) {
                jSONObject.put("secret", MD5);
            }
            String imprintProperty = UMEnvelopeBuild.imprintProperty(f572a, "pr_ve", null);
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f572a);
            if (z) {
                jSONObject.put(C2216b.f465l, m1113j());
                jSONObject.put(C2216b.f466m, m1112k());
                if (sharedPreferences != null) {
                    String string = sharedPreferences.getString("dp_vers_name", "");
                    if (!TextUtils.isEmpty(string)) {
                        jSONObject.put("app_version", string);
                        jSONObject.put("version_code", sharedPreferences.getInt("dp_vers_code", 0));
                        String format = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                        if (TextUtils.isEmpty(imprintProperty)) {
                            jSONObject.put(C2216b.f465l, sharedPreferences.getString("dp_vers_pre_version", "0"));
                            jSONObject.put(C2216b.f466m, sharedPreferences.getString("dp_vers_date", format));
                        }
                        sharedPreferences.edit().putString("dp_pre_version", string).putString("dp_cur_version", DeviceConfig.getAppVersionName(f572a)).putString("dp_pre_date", format).remove("dp_vers_name").remove("dp_vers_code").remove("dp_vers_date").remove("dp_vers_pre_version").commit();
                    }
                }
            } else {
                jSONObject.put(C2216b.f465l, m1115h());
                jSONObject.put(C2216b.f466m, m1114i());
                if (sharedPreferences != null) {
                    String string2 = sharedPreferences.getString("vers_name", "");
                    if (!TextUtils.isEmpty(string2)) {
                        jSONObject.put("app_version", string2);
                        jSONObject.put("version_code", sharedPreferences.getInt("vers_code", 0));
                        String format2 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                        if (TextUtils.isEmpty(imprintProperty)) {
                            jSONObject.put(C2216b.f465l, sharedPreferences.getString("vers_pre_version", "0"));
                            jSONObject.put(C2216b.f466m, sharedPreferences.getString("vers_date", format2));
                        }
                        sharedPreferences.edit().putString("pre_version", string2).putString("cur_version", DeviceConfig.getAppVersionName(f572a)).putString("pre_date", format2).remove("vers_name").remove("vers_code").remove("vers_date").remove("vers_pre_version").commit();
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    /* renamed from: b */
    public JSONObject m1129b(boolean z) {
        JSONObject jSONObject = null;
        try {
            jSONObject = C2238g.m1178a(f572a).m1168a(z);
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f572a);
            if (sharedPreferences != null) {
                String string = sharedPreferences.getString("userlevel", "");
                if (!TextUtils.isEmpty(string)) {
                    jSONObject.put("userlevel", string);
                }
            }
            if (m1107p()) {
                this.f590j = m1128c();
                if (this.f590j != 0) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("ts", this.f590j);
                    jSONObject.put(C2216b.f410D, jSONObject2);
                    sharedPreferences.edit().putLong(f574r, 0L).commit();
                }
            }
            String[] m1227a = C2211c.m1227a(f572a);
            if (m1227a != null && !TextUtils.isEmpty(m1227a[0]) && !TextUtils.isEmpty(m1227a[1])) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(C2216b.f414H, m1227a[0]);
                jSONObject3.put(C2216b.f415I, m1227a[1]);
                if (jSONObject3.length() > 0) {
                    jSONObject.put(C2216b.f413G, jSONObject3);
                }
            }
            if (ABTest.getService(f572a).isInTest()) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put(ABTest.getService(f572a).getTestName(), ABTest.getService(f572a).getGroupInfo());
                jSONObject.put(C2216b.f412F, jSONObject4);
            }
            C2252l.m1085a().m1081b(jSONObject, f572a);
            if (jSONObject.length() > 0) {
                new JSONObject().put("analytics", jSONObject);
            }
        } catch (Throwable th) {
        }
        return jSONObject;
    }

    /* renamed from: h */
    private String m1115h() {
        String str;
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(f572a, "pr_ve", null);
            try {
                if (!TextUtils.isEmpty(imprintProperty)) {
                    str = imprintProperty;
                } else if (!TextUtils.isEmpty(this.f586f)) {
                    return this.f586f;
                } else {
                    if (this.f585e == null) {
                        this.f585e = PreferenceWrapper.getDefault(f572a);
                    }
                    String string = this.f585e.getString("pre_version", "");
                    String appVersionName = DeviceConfig.getAppVersionName(f572a);
                    if (TextUtils.isEmpty(string)) {
                        this.f585e.edit().putString("pre_version", "0").putString("cur_version", appVersionName).commit();
                        str = "0";
                    } else {
                        str = this.f585e.getString("cur_version", "");
                        if (!appVersionName.equals(str)) {
                            this.f585e.edit().putString("pre_version", str).putString("cur_version", appVersionName).commit();
                        } else {
                            str = string;
                        }
                    }
                }
            } catch (Throwable th) {
                str = imprintProperty;
            }
        } catch (Throwable th2) {
            str = null;
        }
        this.f586f = str;
        return str;
    }

    /* renamed from: i */
    private String m1114i() {
        String str;
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(f572a, "ud_da", null);
            try {
                if (!TextUtils.isEmpty(imprintProperty)) {
                    str = imprintProperty;
                } else if (!TextUtils.isEmpty(this.f587g)) {
                    return this.f587g;
                } else {
                    if (this.f585e == null) {
                        this.f585e = PreferenceWrapper.getDefault(f572a);
                    }
                    String string = this.f585e.getString("pre_date", "");
                    if (TextUtils.isEmpty(string)) {
                        str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                        this.f585e.edit().putString("pre_date", str).commit();
                    } else {
                        str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                        if (!string.equals(str)) {
                            this.f585e.edit().putString("pre_date", str).commit();
                        } else {
                            str = string;
                        }
                    }
                }
            } catch (Throwable th) {
                str = imprintProperty;
            }
        } catch (Throwable th2) {
            str = null;
        }
        this.f587g = str;
        return str;
    }

    /* renamed from: j */
    private String m1113j() {
        String str;
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(f572a, "pr_ve", null);
            try {
                if (!TextUtils.isEmpty(imprintProperty)) {
                    str = imprintProperty;
                } else if (!TextUtils.isEmpty(this.f588h)) {
                    return this.f588h;
                } else {
                    if (this.f585e == null) {
                        this.f585e = PreferenceWrapper.getDefault(f572a);
                    }
                    String string = this.f585e.getString("dp_pre_version", "");
                    String appVersionName = DeviceConfig.getAppVersionName(f572a);
                    if (TextUtils.isEmpty(string)) {
                        this.f585e.edit().putString("dp_pre_version", "0").putString("dp_cur_version", appVersionName).commit();
                        str = "0";
                    } else {
                        str = this.f585e.getString("dp_cur_version", "");
                        if (!appVersionName.equals(str)) {
                            this.f585e.edit().putString("dp_pre_version", str).putString("dp_cur_version", appVersionName).commit();
                        } else {
                            str = string;
                        }
                    }
                }
            } catch (Throwable th) {
                str = imprintProperty;
            }
        } catch (Throwable th2) {
            str = null;
        }
        this.f588h = str;
        return str;
    }

    /* renamed from: k */
    private String m1112k() {
        String str;
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(f572a, "ud_da", null);
            try {
                if (!TextUtils.isEmpty(imprintProperty)) {
                    str = imprintProperty;
                } else if (!TextUtils.isEmpty(this.f589i)) {
                    return this.f589i;
                } else {
                    if (this.f585e == null) {
                        this.f585e = PreferenceWrapper.getDefault(f572a);
                    }
                    String string = this.f585e.getString("dp_pre_date", "");
                    if (TextUtils.isEmpty(string)) {
                        str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                        this.f585e.edit().putString("dp_pre_date", str).commit();
                    } else {
                        str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date(System.currentTimeMillis()));
                        if (!string.equals(str)) {
                            this.f585e.edit().putString("dp_pre_date", str).commit();
                        } else {
                            str = string;
                        }
                    }
                }
            } catch (Throwable th) {
                str = imprintProperty;
            }
        } catch (Throwable th2) {
            str = null;
        }
        this.f589i = str;
        return str;
    }

    /* renamed from: a */
    public void m1145a() {
        try {
            if (this.f592l.length() > 0) {
                C2238g.m1178a(f572a).m1172a(this.f592l);
                this.f592l = new JSONArray();
            }
            PreferenceWrapper.getDefault(f572a).edit().putLong(f575s, this.f596p).putInt(f578v, this.f594n).putInt(f579w, this.f595o).commit();
        } catch (Throwable th) {
        }
    }

    /* compiled from: CoreProtocolImpl.java */
    /* renamed from: com.umeng.analytics.pro.i$d */
    /* loaded from: classes2.dex */
    public static class C2249d {

        /* renamed from: a */
        private Map<String, Object> f625a;

        /* renamed from: b */
        private String f626b;

        /* renamed from: c */
        private String f627c;

        /* renamed from: d */
        private long f628d;

        private C2249d() {
            this.f625a = null;
            this.f626b = null;
            this.f627c = null;
            this.f628d = 0L;
        }

        public C2249d(String str, Map<String, Object> map, String str2, long j) {
            this.f625a = null;
            this.f626b = null;
            this.f627c = null;
            this.f628d = 0L;
            this.f625a = map;
            this.f626b = str;
            this.f628d = j;
            this.f627c = str2;
        }

        /* renamed from: a */
        public Map<String, Object> m1098a() {
            return this.f625a;
        }

        /* renamed from: b */
        public String m1097b() {
            return this.f627c;
        }

        /* renamed from: c */
        public String m1096c() {
            return this.f626b;
        }

        /* renamed from: d */
        public long m1095d() {
            return this.f628d;
        }
    }

    /* renamed from: d */
    private void m1123d(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (2050 == jSONObject.getInt("__t")) {
                if (m1143a(this.f596p, this.f594n)) {
                    this.f594n++;
                } else {
                    return;
                }
            } else if (2049 == jSONObject.getInt("__t")) {
                if (m1143a(this.f596p, this.f595o)) {
                    this.f595o++;
                } else {
                    return;
                }
            }
            if (this.f592l.length() >= this.f591k) {
                C2238g.m1178a(f572a).m1172a(this.f592l);
                this.f592l = new JSONArray();
            }
            if (this.f596p == 0) {
                this.f596p = System.currentTimeMillis();
            }
            this.f592l.put(jSONObject);
        } catch (Throwable th) {
            MLog.m384e(th);
        }
    }

    /* renamed from: a */
    private boolean m1143a(long j, int i) {
        if (j != 0) {
            if (System.currentTimeMillis() - j <= 28800000) {
                return i < 5000;
            }
            m1111l();
            return true;
        }
        return true;
    }

    /* renamed from: l */
    private void m1111l() {
        try {
            this.f594n = 0;
            this.f595o = 0;
            this.f596p = System.currentTimeMillis();
            PreferenceWrapper.getDefault(f572a).edit().putLong(f576t, System.currentTimeMillis()).putInt(f577u, 0).commit();
        } catch (Throwable th) {
        }
    }

    /* renamed from: e */
    private boolean m1119e(boolean z) {
        if (m1107p()) {
            return true;
        }
        if (this.f584d == null) {
            this.f584d = new C2248c();
        }
        this.f584d.m1104a();
        ReportPolicy.ReportStrategy m1099c = this.f584d.m1099c();
        boolean shouldSendMessage = m1099c.shouldSendMessage(z);
        if (shouldSendMessage) {
            if (((m1099c instanceof ReportPolicy.ReportByInterval) || (m1099c instanceof ReportPolicy.DebugPolicy)) && m1110m()) {
                m1145a();
                return shouldSendMessage;
            }
            return shouldSendMessage;
        }
        return shouldSendMessage;
    }

    /* renamed from: m */
    private boolean m1110m() {
        try {
            if (!TextUtils.isEmpty(C2259o.m1061a().m1050c())) {
                m1132b(f572a);
            }
        } catch (Throwable th) {
        }
        if (this.f592l.length() > 0) {
            for (int i = 0; i < this.f592l.length(); i++) {
                JSONObject optJSONObject = this.f592l.optJSONObject(i);
                if (optJSONObject != null && optJSONObject.length() > 0) {
                    String optString = optJSONObject.optString("__i");
                    if (TextUtils.isEmpty(optString) || f580y.equals(optString)) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* compiled from: CoreProtocolImpl.java */
    /* renamed from: com.umeng.analytics.pro.i$c */
    /* loaded from: classes2.dex */
    public class C2248c {

        /* renamed from: b */
        private ReportPolicy.ReportStrategy f620b = null;

        /* renamed from: c */
        private int f621c = -1;

        /* renamed from: d */
        private int f622d = -1;

        /* renamed from: e */
        private int f623e = -1;

        /* renamed from: f */
        private int f624f = -1;

        public C2248c() {
        }

        /* renamed from: a */
        public void m1104a() {
            try {
                int[] m1102a = m1102a(-1, -1);
                this.f621c = m1102a[0];
                this.f622d = m1102a[1];
            } catch (Throwable th) {
            }
        }

        /* renamed from: a */
        public int[] m1102a(int i, int i2) {
            int intValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(C2244i.f572a, "report_policy", C2244i.f580y)).intValue();
            int intValue2 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(C2244i.f572a, "report_interval", C2244i.f580y)).intValue();
            if (intValue == -1 || !ReportPolicy.isValid(intValue)) {
                return new int[]{i, i2};
            }
            if (intValue2 == -1 || intValue2 < 90 || intValue2 > 86400) {
                intValue2 = 90;
            }
            return new int[]{intValue, intValue2 * 1000};
        }

        /* renamed from: a */
        public int m1103a(int i) {
            int intValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(C2244i.f572a, "test_report_interval", C2244i.f580y)).intValue();
            return (intValue == -1 || intValue < 90 || intValue > 86400) ? i : intValue * 1000;
        }

        /* renamed from: b */
        protected void m1101b() {
            boolean z = true;
            int i = 0;
            Defcon service = Defcon.getService(C2244i.f572a);
            if (service.isOpen()) {
                if (!(this.f620b instanceof ReportPolicy.DefconPolicy) || !this.f620b.isValid()) {
                    z = false;
                }
                this.f620b = z ? this.f620b : new ReportPolicy.DefconPolicy(StatTracer.getInstance(C2244i.f572a), service);
            } else {
                boolean z2 = Integer.valueOf(UMEnvelopeBuild.imprintProperty(C2244i.f572a, "integrated_test", C2244i.f580y)).intValue() == 1;
                if (!MLog.DEBUG || !z2) {
                    if (C2244i.this.f582b.isInTest() && "RPT".equals(C2244i.this.f582b.getTestName())) {
                        if (C2244i.this.f582b.getTestPolicy() == 6) {
                            if (Integer.valueOf(UMEnvelopeBuild.imprintProperty(C2244i.f572a, "test_report_interval", C2244i.f580y)).intValue() == -1) {
                                z = false;
                            }
                            if (z) {
                                i = m1103a(90000);
                            } else if (this.f622d > 0) {
                                i = this.f622d;
                            } else {
                                i = this.f624f;
                            }
                        }
                        this.f620b = m1100b(C2244i.this.f582b.getTestPolicy(), i);
                    } else {
                        int i2 = this.f623e;
                        int i3 = this.f624f;
                        if (this.f621c != -1) {
                            i2 = this.f621c;
                            i3 = this.f622d;
                        }
                        this.f620b = m1100b(i2, i3);
                    }
                } else {
                    this.f620b = new ReportPolicy.DebugPolicy(StatTracer.getInstance(C2244i.f572a));
                }
            }
            MLog.m394d("Report policy : " + this.f620b.getClass().getSimpleName());
        }

        /* renamed from: c */
        public ReportPolicy.ReportStrategy m1099c() {
            m1101b();
            return this.f620b;
        }

        /* renamed from: b */
        private ReportPolicy.ReportStrategy m1100b(int i, int i2) {
            switch (i) {
                case 0:
                    return this.f620b instanceof ReportPolicy.ReportRealtime ? this.f620b : new ReportPolicy.ReportRealtime();
                case 1:
                    return this.f620b instanceof ReportPolicy.ReportAtLaunch ? this.f620b : new ReportPolicy.ReportAtLaunch();
                case 2:
                case 3:
                case 7:
                default:
                    return this.f620b instanceof ReportPolicy.ReportAtLaunch ? this.f620b : new ReportPolicy.ReportAtLaunch();
                case 4:
                    return this.f620b instanceof ReportPolicy.ReportDaily ? this.f620b : new ReportPolicy.ReportDaily(StatTracer.getInstance(C2244i.f572a));
                case 5:
                    return this.f620b instanceof ReportPolicy.ReportWifiOnly ? this.f620b : new ReportPolicy.ReportWifiOnly(C2244i.f572a);
                case 6:
                    if (this.f620b instanceof ReportPolicy.ReportByInterval) {
                        ReportPolicy.ReportStrategy reportStrategy = this.f620b;
                        ((ReportPolicy.ReportByInterval) reportStrategy).setReportInterval(i2);
                        return reportStrategy;
                    }
                    return new ReportPolicy.ReportByInterval(StatTracer.getInstance(C2244i.f572a), i2);
                case 8:
                    return this.f620b instanceof ReportPolicy.SmartPolicy ? this.f620b : new ReportPolicy.SmartPolicy(StatTracer.getInstance(C2244i.f572a));
            }
        }
    }

    /* renamed from: b */
    private void m1130b(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (jSONObject != null) {
            try {
                if (jSONObject.length() > 0) {
                    JSONObject jSONObject3 = new JSONObject();
                    if (jSONObject.has("analytics")) {
                        JSONObject jSONObject4 = jSONObject.getJSONObject("analytics");
                        if (jSONObject4.has(C2216b.f420N)) {
                            jSONObject3.put(C2216b.f420N, jSONObject4.getJSONArray(C2216b.f420N));
                        }
                        if (jSONObject4.has(C2216b.f421O)) {
                            jSONObject3.put(C2216b.f421O, jSONObject4.getJSONArray(C2216b.f421O));
                        }
                        if (jSONObject4.has("error")) {
                            jSONObject3.put("error", jSONObject4.getJSONArray("error"));
                        }
                        if (jSONObject4.has(C2216b.f467n)) {
                            JSONArray jSONArray = jSONObject4.getJSONArray(C2216b.f467n);
                            JSONArray jSONArray2 = new JSONArray();
                            for (int i = 0; i < jSONArray.length(); i++) {
                                JSONObject jSONObject5 = jSONArray.getJSONObject(i);
                                if (jSONObject5 != null && jSONObject5.length() > 0) {
                                    if (jSONObject5.has(C2216b.f473t)) {
                                        jSONObject5.remove(C2216b.f473t);
                                    }
                                    jSONArray2.put(jSONObject5);
                                }
                            }
                            jSONObject3.put(C2216b.f467n, jSONArray2);
                        }
                        if (jSONObject4.has(C2216b.f410D)) {
                            jSONObject3.put(C2216b.f410D, jSONObject4.getJSONObject(C2216b.f410D));
                        }
                        if (jSONObject4.has(C2216b.f413G)) {
                            jSONObject3.put(C2216b.f413G, jSONObject4.getJSONObject(C2216b.f413G));
                        }
                    }
                    if (jSONObject.has("dplus")) {
                        jSONObject3.put("dplus", jSONObject.getJSONObject("dplus"));
                    }
                    if (jSONObject.has("header") && jSONObject.has("header") && (jSONObject2 = jSONObject.getJSONObject("header")) != null && jSONObject2.length() > 0) {
                        if (jSONObject2.has("sdk_version")) {
                            jSONObject3.put("sdk_version", jSONObject2.getString("sdk_version"));
                        }
                        if (jSONObject2.has("device_id")) {
                            jSONObject3.put("device_id", jSONObject2.getString("device_id"));
                        }
                        if (jSONObject2.has("device_model")) {
                            jSONObject3.put("device_model", jSONObject2.getString("device_model"));
                        }
                        if (jSONObject2.has("version_code")) {
                            jSONObject3.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, jSONObject2.getInt("version_code"));
                        }
                        if (jSONObject2.has("appkey")) {
                            jSONObject3.put("appkey", jSONObject2.getString("appkey"));
                        }
                        if (jSONObject2.has("channel")) {
                            jSONObject3.put("channel", jSONObject2.getString("channel"));
                        }
                    }
                    if (jSONObject3.length() > 0) {
                        MLog.m394d("constructMessage:" + jSONObject3.toString());
                    }
                }
            } catch (Throwable th) {
                MLog.m384e(th);
            }
        }
    }

    /* renamed from: a */
    public void m1140a(Object obj) {
        if (obj != null) {
            try {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() > 0) {
                    if (jSONObject.has(C2216b.f448ao)) {
                        if (101 != jSONObject.getInt(C2216b.f448ao)) {
                            m1126c(jSONObject);
                        }
                    } else {
                        m1126c(jSONObject);
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: c */
    private void m1126c(JSONObject jSONObject) {
        JSONObject optJSONObject;
        try {
            if (jSONObject.getJSONObject("header").has(C2216b.f447an)) {
                if (jSONObject.has("content")) {
                    jSONObject = jSONObject.getJSONObject("content");
                }
                if (jSONObject.has("analytics")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("analytics");
                    if (jSONObject2.has(C2216b.f467n)) {
                        JSONObject jSONObject3 = jSONObject2.getJSONArray(C2216b.f467n).getJSONObject(0);
                        if (jSONObject3 != null) {
                            C2238g.m1178a(f572a).m1167a(true, jSONObject3.getString("id"));
                        }
                    } else {
                        C2238g.m1178a(f572a).m1157g();
                    }
                } else if (jSONObject.has("dplus")) {
                    JSONObject jSONObject4 = jSONObject.getJSONObject("dplus");
                    if (jSONObject4.has(C2216b.f431Y)) {
                        C2238g.m1178a(f572a).m1164b(0);
                    }
                    if (jSONObject4.has(C2216b.f436ac)) {
                        C2238g.m1178a(f572a).m1164b(4);
                    }
                    if (jSONObject4.has(C2216b.f441ah)) {
                        C2238g.m1178a(f572a).m1164b(1);
                    }
                }
                C2238g.m1178a(f572a).m1180a();
                return;
            }
            if (jSONObject.has("content")) {
                jSONObject = jSONObject.getJSONObject("content");
            }
            if (jSONObject.has("analytics") && (optJSONObject = jSONObject.optJSONObject("analytics")) != null && optJSONObject.length() > 0) {
                if (optJSONObject.has(C2216b.f467n)) {
                    C2238g.m1178a(f572a).m1166a(true, false);
                }
                if (optJSONObject.has(C2216b.f420N) || optJSONObject.has(C2216b.f421O)) {
                    C2238g.m1178a(f572a).m1160d();
                }
                if (optJSONObject.has("error")) {
                    C2238g.m1178a(f572a).m1159e();
                }
            }
            if (jSONObject.has("dplus")) {
                C2238g.m1178a(f572a).m1158f();
            }
            C2238g.m1178a(f572a).m1180a();
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    public void m1131b(Object obj) {
        Iterator<String> keys;
        f581z = true;
        m1132b(f572a);
        m1145a();
        m1125c(false);
        if (AnalyticsConfig.FLAG_DPLUS) {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            JSONObject m1234g = C2208b.m1277a().m1234g(f572a);
            if (m1234g != null && m1234g.length() > 0 && (keys = m1234g.keys()) != null) {
                while (keys.hasNext()) {
                    try {
                        String obj2 = keys.next().toString();
                        if (!Arrays.asList(C2216b.f454au).contains(obj2)) {
                            jSONObject.put(obj2, m1234g.get(obj2));
                        }
                    } catch (Exception e) {
                    }
                }
            }
            m1138a(jSONObject, 2, false);
        }
    }

    /* renamed from: b */
    public void m1132b(Context context) {
        try {
            C2238g.m1178a(context).m1165b();
            m1109n();
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public void m1134b() {
        f581z = true;
        m1125c(false);
    }

    /* renamed from: c */
    public void m1127c(Object obj) {
        Iterator<String> keys;
        m1108o();
        f569A = true;
        m1115h();
        m1114i();
        m1113j();
        m1112k();
        m1135a(true);
        if (AnalyticsConfig.FLAG_DPLUS) {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            JSONObject m1234g = C2208b.m1277a().m1234g(f572a);
            if (m1234g != null && m1234g.length() > 0 && (keys = m1234g.keys()) != null) {
                while (keys.hasNext()) {
                    try {
                        String obj2 = keys.next().toString();
                        if (!Arrays.asList(C2216b.f454au).contains(obj2)) {
                            jSONObject.put(obj2, m1234g.get(obj2));
                        }
                    } catch (Exception e) {
                    }
                }
            }
            m1138a(jSONObject, 2, false);
        }
    }

    /* renamed from: n */
    private void m1109n() {
        if (this.f592l.length() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < this.f592l.length(); i++) {
                try {
                    JSONObject jSONObject = this.f592l.getJSONObject(i);
                    if (jSONObject != null && jSONObject.length() > 0) {
                        String optString = jSONObject.optString("__i");
                        if (TextUtils.isEmpty(optString) || f580y.equals(optString)) {
                            String m1050c = C2259o.m1061a().m1050c();
                            if (TextUtils.isEmpty(m1050c)) {
                                m1050c = f580y;
                            }
                            jSONObject.put("__i", m1050c);
                        }
                        jSONArray.put(jSONObject);
                    } else {
                        jSONArray.put(jSONObject);
                    }
                } catch (Throwable th) {
                }
            }
            this.f592l = jSONArray;
        }
    }

    /* renamed from: o */
    private void m1108o() {
        SharedPreferences sharedPreferences;
        try {
            if (m1107p() && f572a != null && (sharedPreferences = PreferenceWrapper.getDefault(f572a)) != null && sharedPreferences.getLong(f573q, 0L) == 0) {
                sharedPreferences.edit().putLong(f573q, System.currentTimeMillis()).commit();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public long m1128c() {
        SharedPreferences sharedPreferences;
        long currentTimeMillis;
        try {
            if (f572a == null || (sharedPreferences = PreferenceWrapper.getDefault(f572a)) == null) {
                return 0L;
            }
            long j = sharedPreferences.getLong(f573q, 0L);
            if (j == 0) {
                try {
                    currentTimeMillis = System.currentTimeMillis();
                    sharedPreferences.edit().putLong(f573q, currentTimeMillis).commit();
                    return currentTimeMillis;
                } catch (Throwable th) {
                    return currentTimeMillis;
                }
            }
            return j;
        } catch (Throwable th2) {
            return 0L;
        }
    }

    /* renamed from: p */
    private boolean m1107p() {
        SharedPreferences sharedPreferences;
        try {
            if (f572a != null && (sharedPreferences = PreferenceWrapper.getDefault(f572a)) != null) {
                if (sharedPreferences.getLong(f574r, -1L) != 0) {
                    return true;
                }
            }
        } catch (Throwable th) {
        }
        return false;
    }

    /* renamed from: q */
    private void m1106q() {
        try {
            m1132b(f572a);
            m1145a();
            String[] m1227a = C2211c.m1227a(f572a);
            if (m1227a != null && !TextUtils.isEmpty(m1227a[0]) && !TextUtils.isEmpty(m1227a[1])) {
                boolean m1059a = C2259o.m1061a().m1059a(f572a, System.currentTimeMillis());
                C2211c.m1225b(f572a);
                if (m1059a) {
                    C2259o.m1061a().m1052b(f572a, System.currentTimeMillis());
                }
            }
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.m386e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    /* renamed from: e */
    private void m1120e(Object obj) {
        try {
            m1132b(f572a);
            m1145a();
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0) {
                String string = jSONObject.getString(C2216b.f414H);
                String string2 = jSONObject.getString(BlockInfo.KEY_UID);
                String[] m1227a = C2211c.m1227a(f572a);
                if (m1227a == null || !string.equals(m1227a[0]) || !string2.equals(m1227a[1])) {
                    boolean m1059a = C2259o.m1061a().m1059a(f572a, System.currentTimeMillis());
                    C2211c.m1226a(f572a, string, string2);
                    if (m1059a) {
                        C2259o.m1061a().m1052b(f572a, System.currentTimeMillis());
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: f */
    private void m1117f(Object obj) {
        try {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject != null && jSONObject.length() > 0 && jSONObject.has("__ii")) {
                String optString = jSONObject.optString("__ii");
                jSONObject.remove("__ii");
                if (!TextUtils.isEmpty(optString)) {
                    C2238g.m1178a(f572a).m1176a(optString, obj.toString(), 2);
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: d */
    public void m1124d() {
        JSONArray jSONArray;
        try {
            String m1050c = C2259o.m1061a().m1050c();
            if (!TextUtils.isEmpty(m1050c)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f572a);
                String string = sharedPreferences.getString(f570B, "");
                if (TextUtils.isEmpty(string)) {
                    jSONArray = new JSONArray();
                } else {
                    jSONArray = new JSONArray(string);
                }
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        if (jSONObject != null && jSONObject.length() > 0) {
                            int i2 = jSONObject.getInt(f571C);
                            switch (i2) {
                                case 0:
                                    jSONObject.put("_$!ts", System.currentTimeMillis());
                                    break;
                                case 1:
                                    jSONObject.put("_$!ts", System.currentTimeMillis());
                                    break;
                            }
                            jSONObject.put("__ii", m1050c);
                            jSONObject.remove(f571C);
                            C2238g.m1178a(f572a).m1171a(jSONObject, i2);
                        }
                    }
                    sharedPreferences.edit().remove(f570B).commit();
                    if (UMEnvelopeBuild.isReadyBuild(f572a, UMLogDataProtocol.UMBusinessType.U_DPLUS)) {
                        m1125c(true);
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m1137a(JSONObject jSONObject) {
        JSONObject m1122d;
        try {
            if (UMEnvelopeBuild.isReadyBuild(f572a, UMLogDataProtocol.UMBusinessType.U_DPLUS) && jSONObject != null && (m1122d = m1122d(true)) != null && m1122d.length() > 0) {
                JSONObject jSONObject2 = new JSONObject();
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(C2216b.f436ac, jSONArray);
                jSONObject2.put("dplus", jSONObject3);
                if (f572a != null && m1122d != null && jSONObject2 != null) {
                    UMEnvelopeBuild.buildEnvelopeWithExtHeader(f572a, m1122d, jSONObject2);
                }
            }
        } catch (Throwable th) {
        }
    }
}
