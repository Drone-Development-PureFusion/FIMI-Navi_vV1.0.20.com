package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import com.umeng.analytics.pro.C2216b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2314a;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.proguard.C2376u;
import com.umeng.commonsdk.statistics.C2420d;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.idtracking.C2426e;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.Iterator;
import org.json.JSONObject;
import org.slf4j.Marker;
/* loaded from: classes2.dex */
public class UMSLEnvelopeBuild {
    private static final String TAG = "UMSLEnvelopeBuild";
    private static String cacheSystemheader = null;
    private static boolean isEncryptEnabled;
    public static Context mContext;
    public static String module;

    public synchronized JSONObject buildSLBaseHeader(Context context) {
        JSONObject jSONObject;
        String str;
        int[] resolutionArray;
        JSONObject jSONObject2 = null;
        synchronized (this) {
            C2419e.m328a("walle", "[stateless] begin build hader, thread is " + Thread.currentThread());
            if (context != null) {
                Context applicationContext = context.getApplicationContext();
                if (!TextUtils.isEmpty(cacheSystemheader)) {
                    try {
                        jSONObject = new JSONObject(cacheSystemheader);
                    } catch (Exception e) {
                        jSONObject = null;
                    }
                } else {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put(C2354g.f1029o, DeviceConfig.getAppMD5Signature(applicationContext));
                    jSONObject3.put(C2354g.f1030p, DeviceConfig.getAppSHA1Key(applicationContext));
                    jSONObject3.put(C2354g.f1031q, DeviceConfig.getAppHashKey(applicationContext));
                    jSONObject3.put("app_version", DeviceConfig.getAppVersionName(applicationContext));
                    jSONObject3.put("version_code", Integer.parseInt(DeviceConfig.getAppVersionCode(applicationContext)));
                    jSONObject3.put(C2354g.f1035u, DeviceConfig.getDeviceIdUmengMD5(applicationContext));
                    jSONObject3.put(C2354g.f1036v, DeviceConfig.getCPU());
                    String mccmnc = DeviceConfig.getMCCMNC(applicationContext);
                    if (!TextUtils.isEmpty(mccmnc)) {
                        jSONObject3.put(C2354g.f963A, mccmnc);
                    } else {
                        jSONObject3.put(C2354g.f963A, "");
                    }
                    String subOSName = DeviceConfig.getSubOSName(applicationContext);
                    if (!TextUtils.isEmpty(subOSName)) {
                        jSONObject3.put(C2354g.f972J, subOSName);
                    }
                    String subOSVersion = DeviceConfig.getSubOSVersion(applicationContext);
                    if (!TextUtils.isEmpty(subOSVersion)) {
                        jSONObject3.put(C2354g.f973K, subOSVersion);
                    }
                    String deviceType = DeviceConfig.getDeviceType(applicationContext);
                    if (!TextUtils.isEmpty(deviceType)) {
                        jSONObject3.put(C2354g.f995af, deviceType);
                    }
                    jSONObject3.put(C2354g.f1028n, DeviceConfig.getPackageName(applicationContext));
                    jSONObject3.put(C2354g.f1034t, "Android");
                    jSONObject3.put("device_id", DeviceConfig.getDeviceId(applicationContext));
                    jSONObject3.put("device_model", Build.MODEL);
                    jSONObject3.put(C2354g.f966D, Build.BOARD);
                    jSONObject3.put(C2354g.f967E, Build.BRAND);
                    jSONObject3.put(C2354g.f968F, Build.TIME);
                    jSONObject3.put(C2354g.f969G, Build.MANUFACTURER);
                    jSONObject3.put(C2354g.f970H, Build.ID);
                    jSONObject3.put(C2354g.f971I, Build.DEVICE);
                    jSONObject3.put(C2354g.f1037w, "Android");
                    jSONObject3.put(C2354g.f1038x, Build.VERSION.RELEASE);
                    if (DeviceConfig.getResolutionArray(applicationContext) != null) {
                        jSONObject3.put(C2354g.f1039y, resolutionArray[1] + Marker.ANY_MARKER + resolutionArray[0]);
                    }
                    jSONObject3.put(C2354g.f1040z, DeviceConfig.getMac(applicationContext));
                    jSONObject3.put(C2354g.f974L, DeviceConfig.getTimeZone(applicationContext));
                    String[] localeInfo = DeviceConfig.getLocaleInfo(applicationContext);
                    jSONObject3.put(C2354g.f976N, localeInfo[0]);
                    jSONObject3.put(C2354g.f975M, localeInfo[1]);
                    jSONObject3.put(C2354g.f977O, DeviceConfig.getNetworkOperatorName(applicationContext));
                    jSONObject3.put(C2354g.f1032r, DeviceConfig.getAppName(applicationContext));
                    String[] networkAccessMode = DeviceConfig.getNetworkAccessMode(applicationContext);
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
                    if (!TextUtils.isEmpty(module)) {
                        jSONObject3.put(C2354g.f1018d, module);
                    }
                    cacheSystemheader = jSONObject3.toString();
                    jSONObject = jSONObject3;
                }
                if (jSONObject != null) {
                    jSONObject.put("channel", UMUtils.getChannel(applicationContext));
                    jSONObject.put("appkey", UMUtils.getAppkey(applicationContext));
                    try {
                        if (C2420d.f1271b != 1) {
                            try {
                                Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
                                str = cls != null ? (String) cls.getMethod("getUmtt", Context.class).invoke(cls, applicationContext) : null;
                            } catch (ClassNotFoundException e2) {
                                str = null;
                            } catch (Throwable th) {
                                str = null;
                            }
                            if (!TextUtils.isEmpty(str)) {
                                jSONObject.put(C2354g.f1019e, str);
                            }
                        }
                    } catch (Exception e3) {
                    }
                    try {
                        String imprintProperty = UMEnvelopeBuild.imprintProperty(applicationContext, C2354g.f1020f, null);
                        if (!TextUtils.isEmpty(imprintProperty)) {
                            jSONObject.put(C2354g.f1020f, imprintProperty);
                        }
                    } catch (Exception e4) {
                    }
                    try {
                        if (C2420d.f1271b != 1 && C2314a.m807b(applicationContext) != null) {
                            jSONObject.put(C2354g.f1021g, C2314a.m807b(applicationContext));
                        }
                    } catch (Exception e5) {
                    }
                    try {
                        jSONObject.put("wrapper_type", C2387a.f1123a);
                        jSONObject.put("wrapper_version", C2387a.f1124b);
                    } catch (Exception e6) {
                    }
                    if (jSONObject != null && jSONObject.length() > 0) {
                        JSONObject jSONObject4 = new JSONObject();
                        C2419e.m328a("walle", "[stateless] build header end , header is " + jSONObject.toString() + ", thread is " + Thread.currentThread());
                        jSONObject2 = jSONObject4.put("header", jSONObject);
                    } else {
                        C2419e.m328a("walle", "[stateless] build header end , header is null !!! thread is " + Thread.currentThread());
                    }
                }
            }
        }
        return jSONObject2;
    }

    private synchronized JSONObject makeErrorResult(int i, JSONObject jSONObject) {
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

    public synchronized JSONObject buildSLEnvelope(Context context, JSONObject jSONObject, JSONObject jSONObject2, String str) {
        C2395c c2395c;
        String str2;
        C2419e.m328a("walle", "[stateless] build envelope, heade is " + jSONObject.toString());
        C2419e.m328a("walle", "[stateless] build envelope, body is " + jSONObject2.toString());
        C2419e.m328a("walle", "[stateless] build envelope, thread is " + Thread.currentThread());
        if (context == null || jSONObject == null || jSONObject2 == null || str == null) {
            C2419e.m328a("walle", "[stateless] build envelope, context is null or header is null or body is null");
            jSONObject = makeErrorResult(110, null);
        } else {
            Context applicationContext = context.getApplicationContext();
            if (jSONObject != null && jSONObject2 != null) {
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next != null && (next instanceof String) && (str2 = next) != null && jSONObject2.opt(str2) != null) {
                        try {
                            jSONObject.put(str2, jSONObject2.opt(str2));
                        } catch (Exception e) {
                        }
                    }
                }
            }
            if (jSONObject != null) {
                try {
                    C2426e m269a = C2426e.m269a(applicationContext);
                    if (m269a != null) {
                        m269a.m271a();
                        String encodeToString = Base64.encodeToString(new C2376u().m557a(m269a.m266b()), 0);
                        if (!TextUtils.isEmpty(encodeToString)) {
                            JSONObject jSONObject3 = jSONObject.getJSONObject("header");
                            jSONObject3.put(C2354g.f984V, encodeToString);
                            jSONObject.put("header", jSONObject3);
                        }
                    }
                } catch (Exception e2) {
                }
            }
            if (jSONObject != null && C2401f.m422a(jSONObject.toString().getBytes().length, C2387a.f1125c)) {
                C2419e.m328a("walle", "[stateless] build envelope, json overstep!!!! size is " + jSONObject.toString().getBytes().length);
                jSONObject = makeErrorResult(113, jSONObject);
            } else {
                C2419e.m328a("walle", "[stateless] build envelope, json size is " + jSONObject.toString().getBytes().length);
                if (jSONObject != null) {
                    c2395c = constructEnvelope(applicationContext, jSONObject.toString().getBytes());
                    if (c2395c == null) {
                        C2419e.m328a("walle", "[stateless] build envelope, envelope is null !!!!");
                        jSONObject = makeErrorResult(111, jSONObject);
                    }
                } else {
                    c2395c = null;
                }
                if (c2395c != null && C2401f.m422a(c2395c.m439b().length, C2387a.f1126d)) {
                    C2419e.m328a("walle", "[stateless] build envelope, envelope overstep!!!! size is " + c2395c.m439b().length);
                    jSONObject = makeErrorResult(114, jSONObject);
                } else if (!C2401f.m419a(applicationContext, Base64.encodeToString(str.getBytes(), 0), Base64.encodeToString((str + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + System.currentTimeMillis()).getBytes(), 0), c2395c.m439b())) {
                    C2419e.m328a("walle", "[stateless] build envelope, save fail ----->>>>>");
                    jSONObject = makeErrorResult(101, jSONObject);
                } else {
                    C2419e.m328a("walle", "[stateless] build envelope, save ok ----->>>>>");
                    C2419e.m328a("walle", "[stateless] envelope file size is " + jSONObject.toString().getBytes().length);
                    new C2396d(applicationContext);
                    C2396d.m430b(C2396d.f1194a);
                    C2419e.m328a("walle", "[stateless] build envelope end, thread is " + Thread.currentThread());
                }
            }
        }
        return jSONObject;
    }

    private synchronized C2395c constructEnvelope(Context context, byte[] bArr) {
        C2395c m442a;
        int i = -1;
        String imprintProperty = UMEnvelopeBuild.imprintProperty(context, "slcodex", null);
        C2419e.m328a("walle", "[stateless] build envelope, codexStr is " + imprintProperty);
        try {
            if (!TextUtils.isEmpty(imprintProperty)) {
                i = Integer.valueOf(imprintProperty).intValue();
            }
        } catch (NumberFormatException e) {
            C2345b.m708a(context, e);
        }
        if (i == 0) {
            C2419e.m328a("walle", "[stateless] build envelope, codexValue is 0");
            m442a = C2395c.m442a(context, UMUtils.getAppkey(context), bArr);
        } else if (i == 1) {
            C2419e.m328a("walle", "[stateless] build envelope, codexValue is 1");
            m442a = C2395c.m438b(context, UMUtils.getAppkey(context), bArr);
        } else if (isEncryptEnabled) {
            C2419e.m328a("walle", "[stateless] build envelope, isEncryptEnabled is true");
            m442a = C2395c.m438b(context, UMUtils.getAppkey(context), bArr);
        } else {
            C2419e.m328a("walle", "[stateless] build envelope, isEncryptEnabled is false");
            m442a = C2395c.m442a(context, UMUtils.getAppkey(context), bArr);
        }
        return m442a;
    }

    public static void setEncryptEnabled(boolean z) {
        isEncryptEnabled = z;
    }
}
