package com.umeng.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.github.moduth.blockcanary.internal.BlockInfo;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.AbstractC2258n;
import com.umeng.analytics.pro.AbstractC2264r;
import com.umeng.analytics.pro.C2216b;
import com.umeng.analytics.pro.C2238g;
import com.umeng.analytics.pro.C2242h;
import com.umeng.analytics.pro.C2244i;
import com.umeng.analytics.pro.C2250j;
import com.umeng.analytics.pro.C2255m;
import com.umeng.analytics.pro.C2259o;
import com.umeng.analytics.pro.C2262p;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: InternalAgent.java */
/* renamed from: com.umeng.analytics.b */
/* loaded from: classes2.dex */
public class C2208b implements AbstractC2258n {

    /* renamed from: g */
    private static final String f344g = "sp";

    /* renamed from: h */
    private static final String f345h = "prepp";

    /* renamed from: n */
    private static final int f346n = 128;

    /* renamed from: o */
    private static final int f347o = 256;

    /* renamed from: a */
    private Context f348a;

    /* renamed from: b */
    private AbstractC2264r f349b;

    /* renamed from: c */
    private C2250j f350c;

    /* renamed from: d */
    private C2262p f351d;

    /* renamed from: e */
    private C2259o f352e;

    /* renamed from: f */
    private C2242h f353f;

    /* renamed from: i */
    private boolean f354i;

    /* renamed from: j */
    private volatile JSONObject f355j;

    /* renamed from: k */
    private volatile JSONObject f356k;

    /* renamed from: l */
    private volatile JSONObject f357l;

    /* renamed from: m */
    private boolean f358m;

    private C2208b() {
        this.f348a = null;
        this.f350c = new C2250j();
        this.f351d = new C2262p();
        this.f352e = C2259o.m1061a();
        this.f353f = null;
        this.f354i = false;
        this.f355j = null;
        this.f356k = null;
        this.f357l = null;
        this.f358m = false;
        this.f350c.m1094a(this);
    }

    /* compiled from: InternalAgent.java */
    /* renamed from: com.umeng.analytics.b$a */
    /* loaded from: classes2.dex */
    private static class C2210a {

        /* renamed from: a */
        private static final C2208b f359a = new C2208b();

        private C2210a() {
        }
    }

    /* renamed from: a */
    public static C2208b m1277a() {
        return C2210a.f359a;
    }

    /* renamed from: b */
    public void m1255b() {
        try {
            if (this.f348a != null) {
                if (!this.f354i) {
                    this.f354i = true;
                    m1232h(this.f348a);
                }
                if (Build.VERSION.SDK_INT > 13) {
                    synchronized (this) {
                        if (!this.f358m && (this.f348a instanceof Activity)) {
                            this.f353f = new C2242h((Activity) this.f348a);
                            this.f358m = true;
                        }
                    }
                } else {
                    this.f358m = true;
                }
                this.f348a = this.f348a.getApplicationContext();
                if (Build.VERSION.SDK_INT > 13) {
                    UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f617t, CoreProtocol.getInstance(this.f348a), Long.valueOf(System.currentTimeMillis()));
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: h */
    private void m1232h(Context context) {
        try {
            if (context == null) {
                MLog.m388e("unexpected null context in getNativeSuperProperties");
                return;
            }
            if (this.f348a == null) {
                this.f348a = context;
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            String string = sharedPreferences.getString(f344g, null);
            if (!TextUtils.isEmpty(string)) {
                try {
                    this.f355j = new JSONObject(string);
                    this.f356k = new JSONObject(string);
                    if (this.f355j == null) {
                        this.f355j = new JSONObject();
                    }
                    if (this.f356k == null) {
                        this.f356k = new JSONObject();
                    }
                } catch (JSONException e) {
                }
            }
            String string2 = sharedPreferences.getString(f345h, null);
            if (!TextUtils.isEmpty(string2)) {
                try {
                    this.f357l = new JSONObject(string2);
                    if (this.f357l == null) {
                        this.f357l = new JSONObject();
                    }
                } catch (JSONException e2) {
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public JSONObject m1247c() {
        return this.f356k;
    }

    /* renamed from: d */
    public void m1244d() {
        this.f356k = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1260a(String str) {
        if (!AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            try {
                this.f351d.m1043a(str);
            } catch (Throwable th) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m1250b(String str) {
        if (!AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            try {
                this.f351d.m1042b(str);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public void m1262a(AbstractC2264r abstractC2264r) {
        this.f349b = abstractC2264r;
    }

    /* renamed from: a */
    public void m1273a(Context context, int i) {
        if (context == null) {
            MLog.m388e("unexpected null context in setVerticalType");
            return;
        }
        if (this.f348a == null) {
            this.f348a = context;
        }
        if (!this.f354i || !this.f358m) {
            m1255b();
        }
        AnalyticsConfig.m1281a(this.f348a, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1274a(Context context) {
        if (context == null) {
            MLog.m388e("unexpected null context in onResume");
            return;
        }
        if (this.f348a == null) {
            this.f348a = context;
        }
        try {
            if (!this.f354i || !this.f358m) {
                m1255b();
            }
            if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                this.f351d.m1043a(context.getClass().getName());
            }
            m1241e();
            m1230i(this.f348a);
        } catch (Throwable th) {
            MLog.m386e("Exception occurred in Mobclick.onResume(). ", th);
        }
    }

    /* renamed from: i */
    private void m1230i(Context context) {
        try {
            Class.forName("com.umeng.visual.UMVisualAgent");
        } catch (ClassNotFoundException e) {
            if (Build.VERSION.SDK_INT > 13) {
                UMWorkDispatch.sendEvent(context, C2244i.C2246a.f613p, CoreProtocol.getInstance(context), Long.valueOf(System.currentTimeMillis()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m1254b(Context context) {
        if (context == null) {
            MLog.m388e("unexpected null context in onPause");
            return;
        }
        if (this.f348a == null) {
            this.f348a = context;
        }
        try {
            if (!this.f354i || !this.f358m) {
                m1255b();
            }
            if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                this.f351d.m1042b(context.getClass().getName());
            }
            m1238f();
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.m386e("Exception occurred in Mobclick.onRause(). ", th);
            }
        }
    }

    /* renamed from: a */
    public void m1268a(Context context, String str, HashMap<String, Object> hashMap) {
        if (context != null) {
            try {
                if (this.f348a == null) {
                    this.f348a = context;
                }
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.m384e(th);
                    return;
                }
                return;
            }
        }
        if (!this.f354i || !this.f358m) {
            m1255b();
        }
        C2255m.m1078a(this.f348a).m1074a(str, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1271a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            if (context == null) {
                MLog.m388e("unexpected null context in reportError");
                return;
            }
            if (this.f348a == null) {
                this.f348a = context;
            }
            try {
                if (!this.f354i || !this.f358m) {
                    m1255b();
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put(C2216b.f418L, 2);
                jSONObject.put("context", str);
                jSONObject.put("__ii", this.f352e.m1048d());
                UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f607j, CoreProtocol.getInstance(this.f348a), jSONObject);
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.m384e(th);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1265a(Context context, Throwable th) {
        if (context != null && th != null) {
            if (this.f348a == null) {
                this.f348a = context;
            }
            try {
                if (!this.f354i || !this.f358m) {
                    m1255b();
                }
                m1271a(this.f348a, DataHelper.convertExceptionToString(th));
            } catch (Exception e) {
                if (MLog.DEBUG) {
                    MLog.m384e(e);
                }
            }
        }
    }

    /* renamed from: e */
    public void m1241e() {
        try {
            if (this.f348a != null) {
                UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f604g, CoreProtocol.getInstance(this.f348a), Long.valueOf(System.currentTimeMillis()));
            }
            if (this.f349b != null) {
                this.f349b.mo1041a();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: f */
    public void m1238f() {
        try {
            if (this.f348a != null) {
                UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f605h, CoreProtocol.getInstance(this.f348a), Long.valueOf(System.currentTimeMillis()));
                UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f601d, CoreProtocol.getInstance(this.f348a), null);
                UMWorkDispatch.sendEvent(this.f348a, 4099, CoreProtocol.getInstance(this.f348a), null);
                UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f606i, CoreProtocol.getInstance(this.f348a), null);
            }
        } catch (Throwable th) {
        }
        if (this.f349b != null) {
            this.f349b.mo1040b();
        }
    }

    /* renamed from: a */
    public void m1269a(Context context, String str, String str2, long j, int i) {
        if (context != null) {
            try {
                this.f348a = context;
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.m384e(th);
                    return;
                }
                return;
            }
        }
        if (!this.f354i || !this.f358m) {
            m1255b();
        }
        C2255m.m1078a(this.f348a).m1075a(str, str2, j, i);
    }

    /* renamed from: b */
    public void m1253b(Context context, String str) {
        if (context != null) {
            try {
                this.f348a = context;
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.m384e(th);
                    return;
                }
                return;
            }
        }
        if (!this.f354i || !this.f358m) {
            m1255b();
        }
        if (!TextUtils.isEmpty(str)) {
            HashMap hashMap = new HashMap();
            hashMap.put(C2216b.f450aq, str);
            m1252b(this.f348a, C2216b.f449ap, hashMap, -1L);
        } else if (MLog.DEBUG) {
            MLog.m388e("please check your link!");
        }
    }

    /* renamed from: b */
    private void m1252b(Context context, String str, Map<String, Object> map, long j) {
        if (context != null) {
            try {
                this.f348a = context;
            } catch (Throwable th) {
                if (MLog.DEBUG) {
                    MLog.m384e(th);
                    return;
                }
                return;
            }
        }
        if (!this.f354i || !this.f358m) {
            m1255b();
        }
        C2255m.m1078a(this.f348a).m1073a(str, map, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0026 -> B:7:0x0017). Please submit an issue!!! */
    /* renamed from: a */
    public void m1266a(Context context, String str, Map<String, Object> map, long j) {
        try {
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.m384e(th);
            }
        }
        if (!TextUtils.isEmpty(str)) {
            if (Arrays.asList(C2216b.f451ar).contains(str)) {
                MLog.m388e("Event id uses reserved keywords, please use other event name. ");
                return;
            } else if (map.isEmpty()) {
                MLog.m388e("Map is empty, please check.");
                return;
            } else {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    if (Arrays.asList(C2216b.f451ar).contains(entry.getKey())) {
                        MLog.m388e("Map key uses reserved keywords[_$!link], please use other key.");
                        return;
                    }
                }
                m1252b(context, str, map, j);
                return;
            }
        }
        MLog.m388e("Event id is empty, please check.");
    }

    /* renamed from: a */
    public void m1267a(Context context, String str, Map<String, Object> map) {
        if (context != null) {
            try {
                if (this.f348a == null) {
                    this.f348a = context;
                }
            } catch (Throwable th) {
                return;
            }
        }
        if (!this.f354i || !this.f358m) {
            m1255b();
        }
        if (TextUtils.isEmpty(str)) {
            MLog.m388e("the eventName is empty! please check~");
            return;
        }
        String str2 = "";
        if (this.f355j == null) {
            this.f355j = new JSONObject();
        } else {
            str2 = this.f355j.toString();
        }
        UMWorkDispatch.sendEvent(this.f348a, 8194, CoreProtocol.getInstance(this.f348a), new C2244i.C2249d(str, map, str2, System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m1246c(Context context) {
        try {
            if (this.f348a == null && context != null) {
                this.f348a = context;
            }
            if (this.f353f != null) {
                this.f353f.m1149b();
            }
            if (this.f351d != null) {
                this.f351d.m1045a();
            }
            if (this.f348a != null) {
                if (this.f352e != null) {
                    this.f352e.m1051b(this.f348a, Long.valueOf(System.currentTimeMillis()));
                }
                C2244i.m1142a(this.f348a).m1145a();
                C2262p.m1044a(this.f348a);
                C2242h.m1151a(this.f348a);
                PreferenceWrapper.getDefault(this.f348a).edit().commit();
            }
            UMWorkDispatch.Quit();
        } catch (Throwable th) {
        }
    }

    @Override // com.umeng.analytics.pro.AbstractC2258n
    /* renamed from: a */
    public void mo1062a(Throwable th) {
        try {
            if (this.f351d != null) {
                this.f351d.m1045a();
            }
            if (this.f353f != null) {
                this.f353f.m1149b();
            }
            if (this.f348a != null) {
                if (this.f352e != null) {
                    this.f352e.m1051b(this.f348a, Long.valueOf(System.currentTimeMillis()));
                }
                if (th != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONObject.put(C2216b.f418L, 1);
                    jSONObject.put("context", DataHelper.convertExceptionToString(th));
                    C2238g.m1178a(this.f348a).m1176a(this.f352e.m1048d(), jSONObject.toString(), 1);
                }
                C2244i.m1142a(this.f348a).m1145a();
                C2262p.m1044a(this.f348a);
                C2242h.m1151a(this.f348a);
                PreferenceWrapper.getDefault(this.f348a).edit().commit();
            }
            UMWorkDispatch.Quit();
        } catch (Exception e) {
            if (MLog.DEBUG) {
                MLog.m386e("Exception in onAppCrash", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1258a(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(C2216b.f414H, str);
            jSONObject.put(BlockInfo.KEY_UID, str2);
            UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f602e, CoreProtocol.getInstance(this.f348a), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.m386e(" Excepthon  in  onProfileSignIn", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m1235g() {
        UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f603f, CoreProtocol.getInstance(this.f348a), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1256a(boolean z) {
        AnalyticsConfig.CATCH_EXCEPTION = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1257a(GL10 gl10) {
        String[] gpu = UMUtils.getGPU(gl10);
        if (gpu.length == 2) {
            AnalyticsConfig.GPU_VENDER = gpu[0];
            AnalyticsConfig.GPU_RENDERER = gpu[1];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m1248b(boolean z) {
        AnalyticsConfig.ACTIVITY_DURATION_OPEN = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1276a(double d, double d2) {
        if (AnalyticsConfig.f327a == null) {
            AnalyticsConfig.f327a = new double[2];
        }
        AnalyticsConfig.f327a[0] = d;
        AnalyticsConfig.f327a[1] = d2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1272a(Context context, MobclickAgent.EScenarioType eScenarioType) {
        if (context == null) {
            MLog.m388e("unexpected null context in setScenarioType");
            return;
        }
        if (this.f348a == null) {
            this.f348a = context;
        }
        if (eScenarioType != null) {
            int value = eScenarioType.toValue();
            if (value == MobclickAgent.EScenarioType.E_DUM_NORMAL.toValue()) {
                AnalyticsConfig.FLAG_DPLUS = true;
            } else if (value == MobclickAgent.EScenarioType.E_DUM_GAME.toValue()) {
                AnalyticsConfig.FLAG_DPLUS = true;
            } else {
                AnalyticsConfig.FLAG_DPLUS = false;
            }
            m1273a(this.f348a, value);
        }
        if (!this.f354i || !this.f358m) {
            m1255b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m1245c(Context context, String str) {
        if (context == null) {
            MLog.m388e("unexpected null context in setSecret");
            return;
        }
        if (this.f348a == null) {
            this.f348a = context;
        }
        if (!this.f354i || !this.f358m) {
            m1255b();
        }
        AnalyticsConfig.m1280a(this.f348a, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1275a(long j) {
        AnalyticsConfig.kContinueSessionMillis = j;
    }

    /* renamed from: a */
    public synchronized void m1270a(Context context, String str, Object obj) {
        try {
            if (context == null) {
                MLog.m388e("unexpected null context in registerSuperProperty");
            } else {
                if (this.f348a == null) {
                    this.f348a = context;
                }
                if (!this.f354i || !this.f358m) {
                    m1255b();
                }
                if (TextUtils.isEmpty(str) || obj == null) {
                    MLog.m388e("please check key or value, must not NULL!");
                } else {
                    String subStr = HelperUtils.subStr(str, 128);
                    if (!Arrays.asList(C2216b.f453at).contains(subStr)) {
                        if (obj instanceof String) {
                            obj = HelperUtils.subStr(obj.toString(), 256);
                        }
                        m1259a(subStr, obj);
                        UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f610m, CoreProtocol.getInstance(this.f348a), this.f355j.toString());
                    } else {
                        MLog.m388e("SuperProperty  key is invalid.  ");
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m1259a(String str, Object obj) {
        int i = 0;
        try {
            if (this.f355j == null) {
                this.f355j = new JSONObject();
            }
            new JSONObject();
            if (obj.getClass().isArray()) {
                if (obj instanceof String[]) {
                    String[] strArr = (String[]) obj;
                    JSONArray jSONArray = new JSONArray();
                    while (i < strArr.length) {
                        jSONArray.put(strArr[i]);
                        i++;
                    }
                    this.f355j.put(str, jSONArray);
                } else if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    JSONArray jSONArray2 = new JSONArray();
                    while (i < jArr.length) {
                        jSONArray2.put(jArr[i]);
                        i++;
                    }
                    this.f355j.put(str, jSONArray2);
                } else if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    JSONArray jSONArray3 = new JSONArray();
                    while (i < iArr.length) {
                        jSONArray3.put(iArr[i]);
                        i++;
                    }
                    this.f355j.put(str, jSONArray3);
                } else if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    JSONArray jSONArray4 = new JSONArray();
                    while (i < fArr.length) {
                        jSONArray4.put(fArr[i]);
                        i++;
                    }
                    this.f355j.put(str, jSONArray4);
                } else if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    JSONArray jSONArray5 = new JSONArray();
                    while (i < dArr.length) {
                        jSONArray5.put(dArr[i]);
                        i++;
                    }
                    this.f355j.put(str, jSONArray5);
                } else if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    JSONArray jSONArray6 = new JSONArray();
                    while (i < sArr.length) {
                        jSONArray6.put((int) sArr[i]);
                        i++;
                    }
                    this.f355j.put(str, jSONArray6);
                }
            } else if (obj instanceof List) {
                List list = (List) obj;
                JSONArray jSONArray7 = new JSONArray();
                while (i < list.size()) {
                    Object obj2 = list.get(i);
                    if ((obj2 instanceof String) || (obj2 instanceof Long) || (obj2 instanceof Integer) || (obj2 instanceof Float) || (obj2 instanceof Double) || (obj2 instanceof Short)) {
                        jSONArray7.put(list.get(i));
                    }
                    i++;
                }
                this.f355j.put(str, jSONArray7);
            } else if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                this.f355j.put(str, obj);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public synchronized void m1261a(Object obj) {
        if (obj != null) {
            try {
                String str = (String) obj;
                SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.f348a).edit();
                if (edit != null && !TextUtils.isEmpty(str)) {
                    edit.putString(f344g, this.f355j.toString()).commit();
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: d */
    public synchronized void m1242d(Context context, String str) {
        try {
            if (context == null) {
                MLog.m388e("unexpected null context in unregisterSuperProperty");
            } else {
                if (this.f348a == null) {
                    this.f348a = context;
                }
                if (!this.f354i || !this.f358m) {
                    m1255b();
                }
                String subStr = HelperUtils.subStr(str, 128);
                if (this.f355j == null) {
                    this.f355j = new JSONObject();
                }
                if (this.f355j.has(subStr)) {
                    this.f355j.remove(subStr);
                    UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f612o, CoreProtocol.getInstance(this.f348a), subStr);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: h */
    public synchronized void m1233h() {
        try {
            if (this.f355j != null) {
                SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.f348a).edit();
                edit.putString(f344g, this.f355j.toString());
                edit.commit();
            } else {
                this.f355j = new JSONObject();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: e */
    public synchronized Object m1239e(Context context, String str) {
        Object obj = null;
        synchronized (this) {
            try {
                if (context == null) {
                    MLog.m388e("unexpected null context in getSuperProperty");
                } else {
                    if (this.f348a == null) {
                        this.f348a = context;
                    }
                    if (this.f355j != null) {
                        String subStr = HelperUtils.subStr(str, 128);
                        if (this.f355j.has(subStr)) {
                            obj = this.f355j.opt(subStr);
                        }
                    } else {
                        this.f355j = new JSONObject();
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return obj;
    }

    /* renamed from: d */
    public synchronized String m1243d(Context context) {
        String str = null;
        synchronized (this) {
            try {
                if (context == null) {
                    MLog.m388e("unexpected null context in getSuperProperties");
                } else {
                    if (this.f348a == null) {
                        this.f348a = context;
                    }
                    if (this.f355j != null) {
                        str = this.f355j.toString();
                    } else {
                        this.f355j = new JSONObject();
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return str;
    }

    /* renamed from: i */
    public synchronized JSONObject m1231i() {
        try {
            if (this.f355j == null) {
                this.f355j = new JSONObject();
            }
        } catch (Throwable th) {
        }
        return this.f355j;
    }

    /* renamed from: e */
    public synchronized void m1240e(Context context) {
        if (context == null) {
            MLog.m388e("unexpected null context in clearSuperProperties");
        } else {
            if (this.f348a == null) {
                this.f348a = context;
            }
            if (!this.f354i || !this.f358m) {
                m1255b();
            }
            this.f355j = new JSONObject();
            UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f611n, CoreProtocol.getInstance(this.f348a), null);
        }
    }

    /* renamed from: j */
    public synchronized void m1229j() {
        try {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.f348a).edit();
            edit.remove(f344g);
            edit.commit();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: a */
    public synchronized void m1264a(Context context, List<String> list) {
        try {
            if (context == null) {
                MLog.m388e("unexpected null context in setFirstLaunchEvent");
            } else {
                if (this.f348a == null) {
                    this.f348a = context;
                }
                if (!this.f354i || !this.f358m) {
                    m1255b();
                }
                C2255m.m1078a(this.f348a).m1070a(list);
            }
        } catch (Throwable th) {
            MLog.m384e(th);
        }
    }

    /* renamed from: a */
    public synchronized void m1263a(Context context, JSONObject jSONObject) {
        if (context == null) {
            MLog.m388e("unexpected null context in setPreProperties");
        } else {
            if (this.f348a == null) {
                this.f348a = context;
            }
            if (!this.f354i || !this.f358m) {
                m1255b();
            }
            if (this.f357l == null) {
                this.f357l = new JSONObject();
            }
            Iterator<String> keys = jSONObject.keys();
            if (keys != null) {
                while (keys.hasNext()) {
                    try {
                        String obj = keys.next().toString();
                        Object obj2 = jSONObject.get(obj);
                        if (m1249b(obj, obj2)) {
                            this.f357l.put(obj, obj2);
                        }
                    } catch (Exception e) {
                    }
                }
            }
            if (this.f357l.length() > 0) {
                UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f614q, CoreProtocol.getInstance(this.f348a), this.f357l.toString());
            }
        }
    }

    /* renamed from: f */
    public synchronized void m1236f(Context context, String str) {
        if (context == null) {
            MLog.m388e("unexpected null context in clearPreProperties(context, " + str + ")");
        } else {
            if (this.f348a == null) {
                this.f348a = context;
            }
            if (!this.f354i || !this.f358m) {
                m1255b();
            }
            if (this.f357l == null) {
                this.f357l = new JSONObject();
            }
            if (this.f357l.has(str)) {
                this.f357l.remove(str);
                UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f615r, CoreProtocol.getInstance(this.f348a), this.f357l.toString());
            }
        }
    }

    /* renamed from: f */
    public synchronized void m1237f(Context context) {
        if (context == null) {
            MLog.m388e("unexpected null context in clearPreProperties");
        } else {
            if (this.f348a == null) {
                this.f348a = context;
            }
            if (!this.f354i || !this.f358m) {
                m1255b();
            }
            if (this.f357l.length() > 0) {
                UMWorkDispatch.sendEvent(this.f348a, C2244i.C2246a.f616s, CoreProtocol.getInstance(this.f348a), null);
            }
            this.f357l = new JSONObject();
        }
    }

    /* renamed from: g */
    public synchronized JSONObject m1234g(Context context) {
        JSONObject jSONObject;
        if (context == null) {
            MLog.m388e("unexpected null context in clearPreProperties");
            jSONObject = null;
        } else {
            if (this.f348a == null) {
                this.f348a = context;
            }
            if (!this.f354i || !this.f358m) {
                m1255b();
            }
            if (this.f357l == null) {
                this.f357l = new JSONObject();
            }
            JSONObject jSONObject2 = new JSONObject();
            if (this.f357l.length() > 0) {
                try {
                    jSONObject = new JSONObject(this.f357l.toString());
                } catch (JSONException e) {
                    jSONObject = jSONObject2;
                }
            } else {
                jSONObject = jSONObject2;
            }
        }
        return jSONObject;
    }

    /* renamed from: b */
    public synchronized void m1251b(Object obj) {
        try {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(this.f348a).edit();
            if (obj != null) {
                String str = (String) obj;
                if (edit != null && !TextUtils.isEmpty(str)) {
                    edit.putString(f345h, str).commit();
                }
            } else if (edit != null) {
                edit.remove(f345h).commit();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private boolean m1249b(String str, Object obj) {
        int i;
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            try {
                i = str.getBytes(SocketOption.DEFAULT_CHARSET).length;
            } catch (UnsupportedEncodingException e) {
                i = 0;
            }
            if (i > 128 || Arrays.asList(C2216b.f454au).contains(str)) {
                return false;
            }
            return obj instanceof String ? ((String) obj).getBytes(SocketOption.DEFAULT_CHARSET).length <= 256 : (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof Float);
        } catch (Throwable th) {
            return false;
        }
    }
}
