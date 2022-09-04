package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C2208b;
import com.umeng.analytics.pro.C2217c;
import com.umeng.analytics.pro.C2238g;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONObject;
/* compiled from: SessionTracker.java */
/* renamed from: com.umeng.analytics.pro.o */
/* loaded from: classes2.dex */
public class C2259o {

    /* renamed from: a */
    private static final String f646a = "session_start_time";

    /* renamed from: b */
    private static final String f647b = "session_end_time";

    /* renamed from: c */
    private static final String f648c = "session_id";

    /* renamed from: f */
    private static String f649f = null;

    /* renamed from: g */
    private static Context f650g = null;

    /* renamed from: d */
    private final String f651d;

    /* renamed from: e */
    private final String f652e;

    private C2259o() {
        this.f651d = "a_start_time";
        this.f652e = "a_end_time";
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SessionTracker.java */
    /* renamed from: com.umeng.analytics.pro.o$a */
    /* loaded from: classes2.dex */
    public static class C2261a {

        /* renamed from: a */
        private static final C2259o f653a = new C2259o();

        private C2261a() {
        }
    }

    /* renamed from: a */
    public static C2259o m1061a() {
        return C2261a.f653a;
    }

    /* renamed from: a */
    public boolean m1060a(Context context) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
        String string = sharedPreferences.getString(f648c, null);
        if (string == null) {
            return false;
        }
        long j = sharedPreferences.getLong(f646a, 0L);
        long j2 = sharedPreferences.getLong(f647b, 0L);
        if (j2 == 0 || Math.abs(j2 - j) > 86400000) {
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__ii", string);
            jSONObject.put("__e", j);
            jSONObject.put(C2217c.C2228e.C2229a.f526g, j2);
            double[] location = AnalyticsConfig.getLocation();
            if (location != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("lat", location[0]);
                jSONObject2.put("lng", location[1]);
                jSONObject2.put("ts", System.currentTimeMillis());
                jSONObject.put(C2217c.C2228e.C2229a.f524e, jSONObject2);
            }
            Class<?> cls = Class.forName("android.net.TrafficStats");
            Method method = cls.getMethod("getUidRxBytes", Integer.TYPE);
            Method method2 = cls.getMethod("getUidTxBytes", Integer.TYPE);
            int i = context.getApplicationInfo().uid;
            if (i == -1) {
                return false;
            }
            long longValue = ((Long) method.invoke(null, Integer.valueOf(i))).longValue();
            long longValue2 = ((Long) method2.invoke(null, Integer.valueOf(i))).longValue();
            if (longValue > 0 && longValue2 > 0) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(C2216b.f409C, longValue);
                jSONObject3.put(C2216b.f408B, longValue2);
                jSONObject.put(C2217c.C2228e.C2229a.f523d, jSONObject3);
            }
            C2238g.m1178a(context).m1173a(string, jSONObject, C2238g.EnumC2240a.NEWSESSION);
            C2262p.m1044a(f650g);
            C2242h.m1151a(f650g);
            m1056a(sharedPreferences);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    private void m1056a(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove(f646a);
        edit.remove(f647b);
        edit.remove("a_start_time");
        edit.remove("a_end_time");
        edit.commit();
    }

    /* renamed from: b */
    public String m1053b(Context context) {
        String deviceId = DeviceConfig.getDeviceId(context);
        String appkey = UMUtils.getAppkey(context);
        long currentTimeMillis = System.currentTimeMillis();
        if (appkey == null) {
            throw new RuntimeException("Appkey is null or empty, Please check!");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(currentTimeMillis).append(appkey).append(deviceId);
        f649f = UMUtils.MD5(sb.toString());
        return f649f;
    }

    /* renamed from: a */
    public void m1057a(Context context, Object obj) {
        try {
            if (f650g == null && context != null) {
                f650g = context.getApplicationContext();
            }
            long longValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f650g);
            if (sharedPreferences != null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                String string = sharedPreferences.getString(C2216b.f445al, "");
                String appVersionName = UMUtils.getAppVersionName(f650g);
                if (!TextUtils.isEmpty(string) && !string.equals(appVersionName)) {
                    int i = sharedPreferences.getInt("versioncode", 0);
                    String string2 = sharedPreferences.getString("pre_date", "");
                    String string3 = sharedPreferences.getString("pre_version", "");
                    String string4 = sharedPreferences.getString(C2216b.f445al, "");
                    edit.putString("vers_date", string2);
                    edit.putString("vers_pre_version", string3);
                    edit.putString("cur_version", string4);
                    edit.putString("dp_vers_date", string2);
                    edit.putString("dp_vers_pre_version", string3);
                    edit.putString("dp_cur_version", string4);
                    edit.putInt("vers_code", i);
                    edit.putString("vers_name", string);
                    edit.putInt("dp_vers_code", i);
                    edit.putString("dp_vers_name", string);
                    edit.putLong("a_end_time", 0L);
                    edit.commit();
                    if (m1049c(context) == null) {
                        f649f = m1058a(context, sharedPreferences, longValue);
                    }
                    m1059a(f650g, longValue);
                    m1052b(f650g, longValue);
                } else if (m1055a(sharedPreferences, longValue)) {
                    f649f = m1058a(context, sharedPreferences, longValue);
                    MLog.m382i("Start new session: " + f649f);
                } else {
                    f649f = sharedPreferences.getString(f648c, null);
                    edit.putLong("a_start_time", longValue);
                    edit.putLong("a_end_time", 0L);
                    edit.commit();
                    MLog.m382i("Extend current session: " + f649f);
                    m1047d(context);
                    C2244i.m1142a(f650g).m1135a(false);
                    C2244i.m1142a(f650g).m1124d();
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public void m1051b(Context context, Object obj) {
        try {
            if (f650g == null && context != null) {
                f650g = context.getApplicationContext();
            }
            long longValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences != null) {
                if (sharedPreferences.getLong("a_start_time", 0L) == 0 && AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                    MLog.m388e("onPause called before onResume");
                    return;
                }
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putLong("a_end_time", longValue);
                edit.putLong(f647b, longValue);
                edit.commit();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public boolean m1054b() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f650g);
        if (sharedPreferences == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j = sharedPreferences.getLong("a_start_time", 0L);
        return (j == 0 || currentTimeMillis - j >= AnalyticsConfig.kContinueSessionMillis) && currentTimeMillis - sharedPreferences.getLong("a_end_time", 0L) > AnalyticsConfig.kContinueSessionMillis;
    }

    /* renamed from: a */
    private boolean m1055a(SharedPreferences sharedPreferences, long j) {
        Iterator<String> keys;
        long j2 = sharedPreferences.getLong("a_start_time", 0L);
        long j3 = sharedPreferences.getLong("a_end_time", 0L);
        if (j2 != 0 && j - j2 < AnalyticsConfig.kContinueSessionMillis) {
            MLog.m388e("onResume called before onPause");
            return false;
        } else if (j - j3 <= AnalyticsConfig.kContinueSessionMillis) {
            return false;
        } else {
            try {
                String string = sharedPreferences.getString(f648c, "-1");
                long j4 = sharedPreferences.getLong(f647b, 0L);
                if (!"-1".equals(string)) {
                    if (j4 == 0) {
                        j4 = System.currentTimeMillis();
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(C2217c.C2228e.C2229a.f526g, j4);
                    C2238g.m1178a(f650g).m1173a(string, jSONObject, C2238g.EnumC2240a.END);
                    if (AnalyticsConfig.FLAG_DPLUS) {
                        JSONObject jSONObject2 = new JSONObject();
                        JSONObject m1231i = C2208b.m1277a().m1231i();
                        if (m1231i.length() > 0) {
                            jSONObject2.put(C2216b.f435ab, m1231i);
                        }
                        jSONObject2.put(C2216b.f439af, string);
                        jSONObject2.put("__ii", string);
                        jSONObject2.put(C2216b.f440ag, j4);
                        JSONObject m1234g = C2208b.m1277a().m1234g(f650g);
                        if (m1234g != null && m1234g.length() > 0 && (keys = m1234g.keys()) != null) {
                            while (keys.hasNext()) {
                                try {
                                    String obj = keys.next().toString();
                                    if (!Arrays.asList(C2216b.f454au).contains(obj)) {
                                        jSONObject2.put(obj, m1234g.get(obj));
                                    }
                                } catch (Exception e) {
                                }
                            }
                        }
                        C2244i.m1142a(f650g).m1138a(jSONObject2, 3, false);
                    }
                }
            } catch (Throwable th) {
            }
            return true;
        }
    }

    /* renamed from: a */
    private String m1058a(Context context, SharedPreferences sharedPreferences, long j) {
        if (f650g == null && context != null) {
            f650g = context.getApplicationContext();
        }
        String m1053b = m1053b(f650g);
        try {
            m1047d(context);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__e", j);
            C2238g.m1178a(f650g).m1173a(m1053b, jSONObject, C2238g.EnumC2240a.BEGIN);
            m1060a(f650g);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString(f648c, m1053b);
            edit.putLong(f646a, j);
            edit.putLong(f647b, 0L);
            edit.putLong("a_start_time", j);
            edit.putLong("a_end_time", 0L);
            edit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
            edit.putString(C2216b.f445al, UMUtils.getAppVersionName(context));
            edit.commit();
            JSONObject jSONObject2 = new JSONObject();
            JSONObject m1231i = C2208b.m1277a().m1231i();
            if (m1231i.length() > 0) {
                jSONObject2.put(C2216b.f435ab, m1231i);
            }
            jSONObject2.put(C2216b.f437ad, m1053b);
            jSONObject2.put("__ii", m1053b);
            jSONObject2.put(C2216b.f438ae, j);
            C2244i.m1142a(f650g).m1127c((Object) jSONObject2);
        } catch (Throwable th) {
        }
        return m1053b;
    }

    /* renamed from: d */
    private void m1047d(Context context) {
        C2244i.m1142a(context).m1132b(context);
        C2244i.m1142a(context).m1145a();
    }

    /* renamed from: a */
    public boolean m1059a(Context context, long j) {
        String string;
        Iterator<String> keys;
        boolean z = false;
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null || (string = sharedPreferences.getString(f648c, null)) == null) {
                return false;
            }
            long j2 = sharedPreferences.getLong("a_start_time", 0L);
            long j3 = sharedPreferences.getLong("a_end_time", 0L);
            if (j2 > 0 && j3 == 0) {
                try {
                    m1051b(f650g, Long.valueOf(j));
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(C2217c.C2228e.C2229a.f526g, j);
                        C2238g.m1178a(context).m1173a(string, jSONObject, C2238g.EnumC2240a.END);
                        C2244i.m1142a(f650g).m1134b();
                        if (AnalyticsConfig.FLAG_DPLUS) {
                            JSONObject jSONObject2 = new JSONObject();
                            JSONObject m1247c = C2208b.m1277a().m1247c();
                            if (m1247c == null || m1247c.length() < 1) {
                                m1247c = C2208b.m1277a().m1231i();
                            }
                            if (m1247c.length() > 0) {
                                jSONObject2.put(C2216b.f435ab, m1247c);
                            }
                            jSONObject2.put(C2216b.f439af, string);
                            jSONObject2.put("__ii", string);
                            jSONObject2.put(C2216b.f440ag, j);
                            JSONObject m1234g = C2208b.m1277a().m1234g(f650g);
                            if (m1234g != null && m1234g.length() > 0 && (keys = m1234g.keys()) != null) {
                                while (keys.hasNext()) {
                                    try {
                                        String obj = keys.next().toString();
                                        if (!Arrays.asList(C2216b.f454au).contains(obj)) {
                                            jSONObject2.put(obj, m1234g.get(obj));
                                        }
                                    } catch (Exception e) {
                                    }
                                }
                            }
                            C2244i.m1142a(f650g).m1138a(jSONObject2, 3, true);
                        }
                        z = true;
                    } catch (Throwable th) {
                        z = true;
                    }
                } catch (Throwable th2) {
                    return true;
                }
            }
            m1060a(context);
            return z;
        } catch (Throwable th3) {
            return z;
        }
    }

    /* renamed from: b */
    public void m1052b(Context context, long j) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
        if (sharedPreferences != null) {
            f649f = m1053b(context);
            try {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putString(f648c, f649f);
                edit.putLong(f646a, j);
                edit.putLong(f647b, 0L);
                edit.putLong("a_start_time", j);
                edit.putLong("a_end_time", 0L);
                edit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(f650g)));
                edit.putString(C2216b.f445al, UMUtils.getAppVersionName(f650g));
                edit.commit();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("__e", j);
                C2238g.m1178a(f650g).m1173a(f649f, jSONObject, C2238g.EnumC2240a.BEGIN);
                JSONObject jSONObject2 = new JSONObject();
                JSONObject m1231i = C2208b.m1277a().m1231i();
                if (m1231i.length() > 0) {
                    jSONObject2.put(C2216b.f435ab, m1231i);
                }
                jSONObject2.put(C2216b.f437ad, f649f);
                jSONObject2.put("__ii", f649f);
                jSONObject2.put(C2216b.f438ae, j);
                C2244i.m1142a(f650g).m1131b((Object) jSONObject2);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: c */
    public String m1050c() {
        return f649f;
    }

    /* renamed from: c */
    public String m1049c(Context context) {
        try {
            if (f649f == null) {
                return PreferenceWrapper.getDefault(context).getString(f648c, null);
            }
        } catch (Throwable th) {
        }
        return f649f;
    }

    /* renamed from: d */
    public String m1048d() {
        return m1049c(f650g);
    }
}
