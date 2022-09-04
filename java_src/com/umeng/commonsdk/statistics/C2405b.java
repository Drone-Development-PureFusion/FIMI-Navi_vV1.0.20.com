package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import com.umeng.analytics.pro.C2216b;
import com.umeng.commonsdk.framework.C2273b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2314a;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.proguard.C2376u;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.idtracking.C2426e;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import com.umeng.commonsdk.statistics.proto.C2479d;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Marker;
/* compiled from: EnvelopeManager.java */
/* renamed from: com.umeng.commonsdk.statistics.b */
/* loaded from: classes2.dex */
public class C2405b {

    /* renamed from: a */
    public static String f1216a = null;

    /* renamed from: b */
    private static final String f1217b = "EnvelopeManager";

    /* renamed from: c */
    private static StatTracer f1218c = null;

    /* renamed from: d */
    private static ImLatent f1219d = null;

    /* renamed from: e */
    private static String f1220e = null;

    /* renamed from: g */
    private static boolean f1221g;

    /* renamed from: f */
    private int f1222f = 0;

    /* renamed from: a */
    public static long m409a(Context context) {
        long j = DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX - DataHelper.ENVELOPE_EXTRA_LENGTH;
        JSONObject m403b = m403b(context);
        if (m403b != null && m403b.toString() != null && m403b.toString().getBytes() != null) {
            long length = m403b.toString().getBytes().length;
            if (C2419e.f1262a) {
                Log.i(f1217b, "headerLen size is " + length);
            }
            j -= length;
        }
        if (C2419e.f1262a) {
            Log.i(f1217b, "free size is " + j);
        }
        return j;
    }

    /* renamed from: a */
    private JSONObject m410a(int i, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                jSONObject.put(C2216b.f448ao, i);
            } catch (Exception e) {
            }
        } else {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(C2216b.f448ao, i);
            } catch (Exception e2) {
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    public JSONObject m407a(Context context, JSONObject jSONObject, JSONObject jSONObject2) {
        String str;
        String str2;
        Envelope envelope;
        String str3;
        String str4;
        if (C2419e.f1262a && jSONObject != null && jSONObject2 != null) {
            Log.i(f1217b, "headerJSONObject size is " + jSONObject.toString().getBytes().length);
            Log.i(f1217b, "bodyJSONObject size is " + jSONObject2.toString().getBytes().length);
        }
        if (context == null || jSONObject2 == null) {
            return m410a(110, (JSONObject) null);
        }
        try {
            JSONObject m403b = m403b(context);
            if (m403b != null && jSONObject != null) {
                m403b = m405a(m403b, jSONObject);
            }
            if (m403b != null && jSONObject2 != null) {
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next != null && (next instanceof String) && (str4 = next) != null && jSONObject2.opt(str4) != null) {
                        try {
                            m403b.put(str4, jSONObject2.opt(str4));
                        } catch (Exception e) {
                        }
                    }
                }
            }
            if (m403b == null) {
                str2 = null;
            } else {
                StringBuilder sb = new StringBuilder();
                if (m403b.length() > 0) {
                    if (m403b.has("push")) {
                        String optString = m403b.optJSONObject("header").optString(C2354g.f1008as);
                        if (!TextUtils.isEmpty(C2354g.f1004ao) && !TextUtils.isEmpty(optString)) {
                            sb.append(C2354g.f1004ao).append("==").append(optString).append("&=");
                        }
                    }
                    if (m403b.has("share")) {
                        String optString2 = m403b.optJSONObject("header").optString(C2354g.f1009at);
                        if (!TextUtils.isEmpty(C2354g.f1005ap) && !TextUtils.isEmpty(optString2)) {
                            sb.append(C2354g.f1005ap).append("==").append(optString2).append("&=");
                        }
                    }
                    if (m403b.has("analytics")) {
                        if (m403b.has("dplus")) {
                            str3 = C2354g.f1003an;
                        } else {
                            str3 = C2354g.f1001al;
                        }
                        String optString3 = m403b.optJSONObject("header").optString("sdk_version");
                        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(optString3)) {
                            sb.append(str3).append("==").append(optString3).append("&=");
                        }
                    }
                    if (m403b.has("dplus")) {
                        String optString4 = m403b.optJSONObject("header").optString("sdk_version");
                        if (m403b.has("analytics")) {
                            if (!sb.toString().contains(C2354g.f1003an) && !TextUtils.isEmpty(C2354g.f1003an) && !TextUtils.isEmpty(optString4)) {
                                sb.append(C2354g.f1003an).append("==").append(optString4).append("&=");
                            }
                        } else if (!TextUtils.isEmpty("d") && !TextUtils.isEmpty(optString4)) {
                            sb.append("d").append("==").append(optString4).append("&=");
                        }
                    }
                    if (m403b.has(C2354g.f1000ak)) {
                        String optString5 = m403b.optJSONObject("header").optString(C2354g.f1010au);
                        if (!TextUtils.isEmpty("i") && !TextUtils.isEmpty(optString5)) {
                            sb.append("i").append("==").append(optString5).append("&=");
                        }
                    }
                }
                String sb2 = sb.toString();
                if (TextUtils.isEmpty(sb2)) {
                    return m410a(101, m403b);
                }
                str2 = sb2.endsWith("&=") ? sb2.substring(0, sb2.length() - 2) : sb2;
            }
            if (m403b != null) {
                try {
                    C2426e m269a = C2426e.m269a(context);
                    if (m269a != null) {
                        m269a.m271a();
                        String encodeToString = Base64.encodeToString(new C2376u().m557a(m269a.m266b()), 0);
                        if (!TextUtils.isEmpty(encodeToString)) {
                            JSONObject jSONObject3 = m403b.getJSONObject("header");
                            jSONObject3.put(C2354g.f984V, encodeToString);
                            m403b.put("header", jSONObject3);
                        }
                    }
                } catch (Exception e2) {
                }
            }
            if (f1218c == null) {
                f1218c = StatTracer.getInstance(context);
                f1219d = ImLatent.getService(context, f1218c);
            }
            if (f1219d != null && f1219d.shouldStartLatency()) {
                long delayTime = f1219d.getDelayTime();
                long elapsedTime = f1219d.getElapsedTime();
                if (m403b != null) {
                    try {
                        JSONObject jSONObject4 = new JSONObject();
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put(C2354g.f1015az, elapsedTime / 1000);
                        jSONObject5.put(C2354g.f1014ay, delayTime);
                        jSONObject4.put(C2354g.f1013ax, jSONObject5);
                        JSONObject jSONObject6 = m403b.getJSONObject("header");
                        jSONObject6.put(C2354g.f1012aw, jSONObject4);
                        m403b.put("header", jSONObject6);
                    } catch (Exception e3) {
                    }
                }
            }
            if (m403b != null && DataHelper.largeThanMaxSize(m403b.toString().getBytes().length, DataHelper.ENVELOPE_ENTITY_RAW_LENGTH_MAX)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
                if (sharedPreferences != null) {
                    sharedPreferences.edit().putInt("serial", sharedPreferences.getInt("serial", 1) + 1).commit();
                }
                return m410a(113, m403b);
            }
            if (m403b == null) {
                envelope = null;
            } else {
                Envelope m406a = m406a(context, m403b.toString().getBytes());
                if (m406a == null) {
                    return m410a(111, m403b);
                }
                envelope = m406a;
            }
            if (envelope != null && DataHelper.largeThanMaxSize(envelope.toBinary().length, DataHelper.ENVELOPE_LENGTH_MAX)) {
                return m410a(114, m403b);
            }
            String str5 = null;
            if (m403b != null) {
                str5 = m403b.optJSONObject("header").optString("app_version");
            }
            int m408a = m408a(context, envelope, str2, str5);
            if (m408a != 0) {
                return m410a(m408a, m403b);
            }
            if (C2419e.f1262a) {
                Log.i(f1217b, "constructHeader size is " + m403b.toString().getBytes().length);
            }
            return m403b;
        } catch (Throwable th) {
            C2345b.m708a(context, th);
            JSONObject jSONObject7 = null;
            if (jSONObject != null) {
                if (0 == 0) {
                    try {
                        jSONObject7 = new JSONObject();
                    } catch (Exception e4) {
                        e = e4;
                        C2345b.m708a(context, e);
                        return m410a(110, jSONObject7);
                    }
                }
                try {
                    jSONObject7.put("header", jSONObject);
                } catch (JSONException e5) {
                }
            }
            if (jSONObject2 != null) {
                JSONObject jSONObject8 = jSONObject7 == null ? new JSONObject() : jSONObject7;
                if (jSONObject2 != null) {
                    try {
                        Iterator<String> keys2 = jSONObject2.keys();
                        while (keys2.hasNext()) {
                            String next2 = keys2.next();
                            if (next2 != null && (next2 instanceof String) && (str = next2) != null && jSONObject2.opt(str) != null) {
                                try {
                                    jSONObject8.put(str, jSONObject2.opt(str));
                                } catch (Exception e6) {
                                }
                            }
                        }
                    } catch (Exception e7) {
                        e = e7;
                        jSONObject7 = jSONObject8;
                        C2345b.m708a(context, e);
                        return m410a(110, jSONObject7);
                    }
                }
                jSONObject7 = jSONObject8;
            }
            return m410a(110, jSONObject7);
        }
    }

    /* renamed from: b */
    private static JSONObject m403b(Context context) {
        JSONObject jSONObject;
        String str;
        int[] resolutionArray;
        JSONObject jSONObject2 = null;
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (!TextUtils.isEmpty(f1220e)) {
                try {
                    jSONObject = new JSONObject(f1220e);
                } catch (Exception e) {
                    jSONObject = null;
                }
            } else {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(C2354g.f1029o, DeviceConfig.getAppMD5Signature(context));
                jSONObject3.put(C2354g.f1030p, DeviceConfig.getAppSHA1Key(context));
                jSONObject3.put(C2354g.f1031q, DeviceConfig.getAppHashKey(context));
                jSONObject3.put("app_version", DeviceConfig.getAppVersionName(context));
                jSONObject3.put("version_code", Integer.parseInt(DeviceConfig.getAppVersionCode(context)));
                jSONObject3.put(C2354g.f1035u, DeviceConfig.getDeviceIdUmengMD5(context));
                jSONObject3.put(C2354g.f1036v, DeviceConfig.getCPU());
                String mccmnc = DeviceConfig.getMCCMNC(context);
                if (!TextUtils.isEmpty(mccmnc)) {
                    jSONObject3.put(C2354g.f963A, mccmnc);
                } else {
                    jSONObject3.put(C2354g.f963A, "");
                }
                String subOSName = DeviceConfig.getSubOSName(context);
                if (!TextUtils.isEmpty(subOSName)) {
                    jSONObject3.put(C2354g.f972J, subOSName);
                }
                String subOSVersion = DeviceConfig.getSubOSVersion(context);
                if (!TextUtils.isEmpty(subOSVersion)) {
                    jSONObject3.put(C2354g.f973K, subOSVersion);
                }
                String deviceType = DeviceConfig.getDeviceType(context);
                if (!TextUtils.isEmpty(deviceType)) {
                    jSONObject3.put(C2354g.f995af, deviceType);
                }
                jSONObject3.put(C2354g.f1028n, DeviceConfig.getPackageName(context));
                jSONObject3.put(C2354g.f1034t, "Android");
                jSONObject3.put("device_id", DeviceConfig.getDeviceId(context));
                jSONObject3.put("device_model", Build.MODEL);
                jSONObject3.put(C2354g.f966D, Build.BOARD);
                jSONObject3.put(C2354g.f967E, Build.BRAND);
                jSONObject3.put(C2354g.f968F, Build.TIME);
                jSONObject3.put(C2354g.f969G, Build.MANUFACTURER);
                jSONObject3.put(C2354g.f970H, Build.ID);
                jSONObject3.put(C2354g.f971I, Build.DEVICE);
                jSONObject3.put(C2354g.f1037w, "Android");
                jSONObject3.put(C2354g.f1038x, Build.VERSION.RELEASE);
                if (DeviceConfig.getResolutionArray(context) != null) {
                    jSONObject3.put(C2354g.f1039y, resolutionArray[1] + Marker.ANY_MARKER + resolutionArray[0]);
                }
                jSONObject3.put(C2354g.f1040z, DeviceConfig.getMac(context));
                jSONObject3.put(C2354g.f974L, DeviceConfig.getTimeZone(context));
                String[] localeInfo = DeviceConfig.getLocaleInfo(context);
                jSONObject3.put(C2354g.f976N, localeInfo[0]);
                jSONObject3.put(C2354g.f975M, localeInfo[1]);
                jSONObject3.put(C2354g.f977O, DeviceConfig.getNetworkOperatorName(context));
                jSONObject3.put(C2354g.f1032r, DeviceConfig.getAppName(context));
                String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(context);
                if ("Wi-Fi".equals(networkAccessMode[0])) {
                    jSONObject3.put(C2354g.f978P, "wifi");
                } else if ("2G/3G".equals(networkAccessMode[0])) {
                    jSONObject3.put(C2354g.f978P, "2G/3G");
                } else {
                    jSONObject3.put(C2354g.f978P, "unknow");
                }
                if (!"".equals(networkAccessMode[1])) {
                    jSONObject3.put(C2354g.f979Q, networkAccessMode[1]);
                }
                jSONObject3.put(C2354g.f1016b, C2420d.f1270a);
                jSONObject3.put(C2354g.f1017c, C2420d.f1271b);
                if (!TextUtils.isEmpty(f1216a)) {
                    jSONObject3.put(C2354g.f1018d, f1216a);
                }
                f1220e = jSONObject3.toString();
                jSONObject = jSONObject3;
            }
            if (jSONObject == null) {
                return null;
            }
            try {
                jSONObject.put(C2354g.f980R, sharedPreferences.getInt("successful_request", 0));
                jSONObject.put(C2354g.f981S, sharedPreferences.getInt(C2354g.f981S, 0));
                jSONObject.put(C2354g.f982T, sharedPreferences.getInt("last_request_spent_ms", 0));
            } catch (Exception e2) {
            }
            jSONObject.put("channel", UMUtils.getChannel(context));
            jSONObject.put("appkey", UMUtils.getAppkey(context));
            try {
                String deviceToken = UMUtils.getDeviceToken(context);
                if (!TextUtils.isEmpty(deviceToken)) {
                    jSONObject.put(C2354g.f989a, deviceToken);
                }
            } catch (Exception e3) {
                C2345b.m708a(context, e3);
            }
            try {
                if (C2420d.f1271b != 1) {
                    try {
                        Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
                        str = cls != null ? (String) cls.getMethod("getUmtt", Context.class).invoke(cls, context) : null;
                    } catch (ClassNotFoundException e4) {
                        str = null;
                    } catch (Throwable th) {
                        str = null;
                    }
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject.put(C2354g.f1019e, str);
                    }
                }
            } catch (Exception e5) {
                C2345b.m708a(context, e5);
            }
            try {
                String imprintProperty = UMEnvelopeBuild.imprintProperty(context, C2354g.f1020f, null);
                if (!TextUtils.isEmpty(imprintProperty)) {
                    jSONObject.put(C2354g.f1020f, imprintProperty);
                }
            } catch (Exception e6) {
                C2345b.m708a(context, e6);
            }
            try {
                if (C2420d.f1271b != 1 && C2314a.m807b(context) != null) {
                    jSONObject.put(C2354g.f1021g, C2314a.m807b(context));
                }
            } catch (Exception e7) {
            }
            try {
                jSONObject.put("wrapper_type", C2404a.f1212a);
                jSONObject.put("wrapper_version", C2404a.f1213b);
            } catch (Exception e8) {
            }
            try {
                C2479d m300a = ImprintHandler.getImprintService(context).m300a();
                if (m300a != null) {
                    jSONObject.put(C2354g.f983U, Base64.encodeToString(new C2376u().m557a(m300a), 0));
                }
            } catch (Exception e9) {
                C2345b.m708a(context, e9);
            }
            if (jSONObject == null || jSONObject.length() <= 0) {
                return null;
            }
            jSONObject2 = new JSONObject().put("header", jSONObject);
            return jSONObject2;
        } catch (Throwable th2) {
            C2345b.m708a(context, th2);
            return jSONObject2;
        }
    }

    /* renamed from: a */
    private JSONObject m405a(JSONObject jSONObject, JSONObject jSONObject2) {
        String str;
        if (jSONObject != null && jSONObject2 != null && jSONObject.opt("header") != null && (jSONObject.opt("header") instanceof JSONObject)) {
            JSONObject jSONObject3 = (JSONObject) jSONObject.opt("header");
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && (next instanceof String) && (str = next) != null && jSONObject2.opt(str) != null) {
                    try {
                        jSONObject3.put(str, jSONObject2.opt(str));
                        if (str.equals(C2216b.f462i) && (jSONObject2.opt(str) instanceof Integer)) {
                            this.f1222f = ((Integer) jSONObject2.opt(str)).intValue();
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    private Envelope m406a(Context context, byte[] bArr) {
        int i = -1;
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, "codex", null);
        try {
            if (!TextUtils.isEmpty(imprintProperty)) {
                i = Integer.valueOf(imprintProperty).intValue();
            }
        } catch (NumberFormatException e) {
            C2345b.m708a(context, e);
        }
        if (i == 0) {
            return Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        if (i == 1) {
            return Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        if (f1221g) {
            return Envelope.genEncryptEnvelope(context, UMUtils.getAppkey(context), bArr);
        }
        return Envelope.genEnvelope(context, UMUtils.getAppkey(context), bArr);
    }

    /* renamed from: a */
    private int m408a(Context context, Envelope envelope, String str, String str2) {
        if (context == null || envelope == null || TextUtils.isEmpty(str)) {
            return 101;
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = DeviceConfig.getAppVersionName(context);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str).append("&&").append(str2).append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR).append(System.currentTimeMillis()).append("_envelope.log");
        return C2273b.m1013a(context, sb.toString(), envelope.toBinary());
    }

    /* renamed from: a */
    public static void m404a(boolean z) {
        f1221g = z;
    }
}
