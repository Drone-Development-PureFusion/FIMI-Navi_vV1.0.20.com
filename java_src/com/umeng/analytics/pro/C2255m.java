package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.C2244i;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: EventTracker.java */
/* renamed from: com.umeng.analytics.pro.m */
/* loaded from: classes2.dex */
public class C2255m {

    /* renamed from: a */
    private static final String f637a = "fs_lc_tl";

    /* renamed from: f */
    private static final String f638f = "-1";

    /* renamed from: g */
    private static Context f639g;

    /* renamed from: b */
    private final int f640b;

    /* renamed from: c */
    private final int f641c;

    /* renamed from: d */
    private final int f642d;

    /* renamed from: e */
    private final int f643e;

    /* renamed from: h */
    private JSONObject f644h;

    private C2255m() {
        this.f640b = 128;
        this.f641c = 256;
        this.f642d = 1024;
        this.f643e = 10;
        this.f644h = null;
        try {
            if (this.f644h == null) {
                m1068b(f639g);
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EventTracker.java */
    /* renamed from: com.umeng.analytics.pro.m$a */
    /* loaded from: classes2.dex */
    public static class C2257a {

        /* renamed from: a */
        private static final C2255m f645a = new C2255m();

        private C2257a() {
        }
    }

    /* renamed from: a */
    public static C2255m m1078a(Context context) {
        if (f639g == null && context != null) {
            f639g = context.getApplicationContext();
        }
        return C2257a.f645a;
    }

    /* renamed from: a */
    public void m1073a(String str, Map<String, Object> map, long j) {
        try {
            if (m1076a(str) && m1066b(map)) {
                if (Arrays.asList(C2216b.f452as).contains(str)) {
                    MLog.m388e("the id is valid!");
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                if (j > 0) {
                    jSONObject.put(C2216b.f424R, j);
                }
                jSONObject.put("__t", C2238g.f544a);
                Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
                for (int i = 0; i < 10 && it.hasNext(); i++) {
                    Map.Entry<String, Object> next = it.next();
                    if (!Arrays.asList(C2216b.f452as).contains(next.getKey())) {
                        Object value = next.getValue();
                        if ((value instanceof String) || (value instanceof Integer) || (value instanceof Long)) {
                            jSONObject.put(next.getKey(), value);
                        }
                    } else {
                        MLog.m388e("the key in map is invalid.  ");
                    }
                }
                String m1050c = C2259o.m1061a().m1050c();
                if (TextUtils.isEmpty(m1050c)) {
                    m1050c = f638f;
                }
                jSONObject.put("__i", m1050c);
                UMWorkDispatch.sendEvent(f639g, 4097, CoreProtocol.getInstance(f639g), jSONObject);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m1075a(String str, String str2, long j, int i) {
        try {
            if (m1076a(str) && m1067b(str2)) {
                if (Arrays.asList(C2216b.f452as).contains(str)) {
                    MLog.m388e("the id is valid!");
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                if (j > 0) {
                    jSONObject.put(C2216b.f424R, j);
                }
                jSONObject.put("__t", C2238g.f544a);
                if (str2 == null) {
                    str2 = "";
                }
                jSONObject.put(str, str2);
                String m1050c = C2259o.m1061a().m1050c();
                if (TextUtils.isEmpty(m1050c)) {
                    m1050c = f638f;
                }
                jSONObject.put("__i", m1050c);
                UMWorkDispatch.sendEvent(f639g, 4097, CoreProtocol.getInstance(f639g), jSONObject);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m1077a(Object obj) {
        try {
            C2244i.C2249d c2249d = (C2244i.C2249d) obj;
            String m1096c = c2249d.m1096c();
            Map<String, Object> m1098a = c2249d.m1098a();
            String m1097b = c2249d.m1097b();
            long m1095d = c2249d.m1095d();
            if (!TextUtils.isEmpty(m1096c)) {
                String subStr = HelperUtils.subStr(m1096c, 128);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(C2216b.f434aa, subStr);
                jSONObject.put("_$!ts", m1095d);
                String m1050c = C2259o.m1061a().m1050c();
                if (TextUtils.isEmpty(m1050c)) {
                    m1050c = f638f;
                }
                jSONObject.put("__ii", m1050c);
                if (!TextUtils.isEmpty(m1097b)) {
                    try {
                        JSONObject jSONObject2 = new JSONObject(m1097b);
                        if (jSONObject2.length() > 0) {
                            jSONObject.put(C2216b.f435ab, jSONObject2);
                        }
                    } catch (JSONException e) {
                    }
                }
                m1079a();
                if (m1098a != null) {
                    JSONObject m1069a = m1069a(m1098a);
                    if (m1069a.length() > 0) {
                        Iterator<String> keys = m1069a.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            if (!Arrays.asList(C2216b.f453at).contains(next)) {
                                jSONObject.put(next, m1069a.get(next));
                            } else {
                                MLog.m388e("the key in map about track interface is invalid.  ");
                            }
                        }
                    }
                }
                if (this.f644h != null && this.f644h.has(subStr) && !((Boolean) this.f644h.get(subStr)).booleanValue()) {
                    jSONObject.put(C2216b.f426T, 1);
                    this.f644h.put(subStr, true);
                    m1065c(f639g);
                }
                C2244i.m1142a(f639g).m1138a(jSONObject, 0, false);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m1074a(String str, Map<String, Object> map) {
        try {
            if (m1076a(str)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put(C2216b.f424R, 0);
                jSONObject.put("__t", C2238g.f545b);
                Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
                for (int i = 0; i < 10 && it.hasNext(); i++) {
                    Map.Entry<String, Object> next = it.next();
                    if (!C2216b.f426T.equals(next.getKey()) && !C2216b.f424R.equals(next.getKey()) && !"id".equals(next.getKey()) && !"ts".equals(next.getKey())) {
                        Object value = next.getValue();
                        if ((value instanceof String) || (value instanceof Integer) || (value instanceof Long)) {
                            jSONObject.put(next.getKey(), value);
                        }
                    }
                }
                String m1050c = C2259o.m1061a().m1050c();
                if (TextUtils.isEmpty(m1050c)) {
                    m1050c = f638f;
                }
                jSONObject.put("__i", m1050c);
                UMWorkDispatch.sendEvent(f639g, 4098, CoreProtocol.getInstance(f639g), jSONObject);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private void m1068b(Context context) {
        try {
            String string = PreferenceWrapper.getDefault(context).getString(f637a, null);
            if (!TextUtils.isEmpty(string)) {
                this.f644h = new JSONObject(string);
            }
            m1079a();
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private void m1079a() {
        int i = 0;
        try {
            String imprintProperty = UMEnvelopeBuild.imprintProperty(f639g, "track_list", "");
            if (!TextUtils.isEmpty(imprintProperty)) {
                String[] split = imprintProperty.split("!");
                JSONObject jSONObject = new JSONObject();
                if (this.f644h != null) {
                    for (String str : split) {
                        String subStr = HelperUtils.subStr(str, 128);
                        if (this.f644h.has(subStr)) {
                            jSONObject.put(subStr, this.f644h.get(subStr));
                        }
                    }
                }
                this.f644h = new JSONObject();
                if (split.length >= 10) {
                    while (i < 10) {
                        m1072a(split[i], jSONObject);
                        i++;
                    }
                } else {
                    while (i < split.length) {
                        m1072a(split[i], jSONObject);
                        i++;
                    }
                }
                m1065c(f639g);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private void m1072a(String str, JSONObject jSONObject) throws JSONException {
        String subStr = HelperUtils.subStr(str, 128);
        if (jSONObject.has(subStr)) {
            m1071a(subStr, ((Boolean) jSONObject.get(subStr)).booleanValue());
        } else {
            m1071a(subStr, false);
        }
    }

    /* renamed from: a */
    private void m1071a(String str, boolean z) {
        try {
            if (!C2216b.f426T.equals(str) && !C2216b.f424R.equals(str) && !"id".equals(str) && !"ts".equals(str) && !this.f644h.has(str)) {
                this.f644h.put(str, z);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: c */
    private void m1065c(Context context) {
        try {
            if (this.f644h != null) {
                PreferenceWrapper.getDefault(f639g).edit().putString(f637a, this.f644h.toString()).commit();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m1070a(List<String> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    m1079a();
                    if (this.f644h == null) {
                        this.f644h = new JSONObject();
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            if (this.f644h == null) {
                                this.f644h = new JSONObject();
                            } else if (this.f644h.length() >= 5) {
                                break;
                            }
                            String str = list.get(i);
                            if (!TextUtils.isEmpty(str)) {
                                m1071a(HelperUtils.subStr(str, 128), false);
                            }
                        }
                        m1065c(f639g);
                    } else if (this.f644h.length() >= 5) {
                        MLog.m394d("already setFistLaunchEvent, igone.");
                    } else {
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            if (this.f644h.length() >= 5) {
                                MLog.m394d(" add setFistLaunchEvent over.");
                                return;
                            }
                            m1071a(HelperUtils.subStr(list.get(i2), 128), false);
                        }
                        m1065c(f639g);
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    private JSONObject m1069a(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                try {
                    String key = entry.getKey();
                    if (key != null) {
                        String subStr = HelperUtils.subStr(key, 128);
                        Object value = entry.getValue();
                        if (value != null) {
                            if (value.getClass().isArray()) {
                                if (value instanceof int[]) {
                                    JSONArray jSONArray = new JSONArray();
                                    for (int i : (int[]) value) {
                                        jSONArray.put(i);
                                    }
                                    jSONObject.put(subStr, jSONArray);
                                } else if (value instanceof double[]) {
                                    JSONArray jSONArray2 = new JSONArray();
                                    for (double d : (double[]) value) {
                                        jSONArray2.put(d);
                                    }
                                    jSONObject.put(subStr, jSONArray2);
                                } else if (value instanceof long[]) {
                                    JSONArray jSONArray3 = new JSONArray();
                                    for (long j : (long[]) value) {
                                        jSONArray3.put(j);
                                    }
                                    jSONObject.put(subStr, jSONArray3);
                                } else if (value instanceof float[]) {
                                    JSONArray jSONArray4 = new JSONArray();
                                    for (float f : (float[]) value) {
                                        jSONArray4.put(f);
                                    }
                                    jSONObject.put(subStr, jSONArray4);
                                } else if (value instanceof short[]) {
                                    JSONArray jSONArray5 = new JSONArray();
                                    for (short s : (short[]) value) {
                                        jSONArray5.put((int) s);
                                    }
                                    jSONObject.put(subStr, jSONArray5);
                                }
                            } else if (value instanceof List) {
                                List list = (List) value;
                                JSONArray jSONArray6 = new JSONArray();
                                for (int i2 = 0; i2 < list.size(); i2++) {
                                    Object obj = list.get(i2);
                                    if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                                        jSONArray6.put(list.get(i2));
                                    }
                                }
                                if (jSONArray6.length() > 0) {
                                    jSONObject.put(subStr, jSONArray6);
                                }
                            } else if (value instanceof String) {
                                jSONObject.put(subStr, HelperUtils.subStr(value.toString(), 256));
                            } else if ((value instanceof Long) || (value instanceof Integer) || (value instanceof Float) || (value instanceof Double) || (value instanceof Short)) {
                                jSONObject.put(subStr, value);
                            } else {
                                MLog.m388e("The param has not support type. please check !");
                            }
                        }
                    }
                } catch (Exception e) {
                    MLog.m384e(e);
                }
            }
        } catch (Exception e2) {
        }
        return jSONObject;
    }

    /* renamed from: a */
    private boolean m1076a(String str) {
        if (str != null) {
            try {
                int length = str.trim().getBytes().length;
                if (length > 0 && length <= 128) {
                    return true;
                }
            } catch (Exception e) {
            }
        }
        MLog.m388e("Event id is empty or too long in tracking Event");
        return false;
    }

    /* renamed from: b */
    private boolean m1067b(String str) {
        if (str == null) {
            return true;
        }
        if (str.trim().getBytes().length <= 256) {
            return true;
        }
        MLog.m388e("Event label or value is empty or too long in tracking Event");
        return false;
    }

    /* renamed from: c */
    private boolean m1064c(String str) {
        if (str == null) {
            return true;
        }
        if (str.trim().getBytes().length <= 1024) {
            return true;
        }
        MLog.m388e("DeepLink value too long in tracking Event.");
        return false;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0074 -> B:4:0x000f). Please submit an issue!!! */
    /* renamed from: b */
    private boolean m1066b(Map<String, Object> map) {
        if (map != null) {
            if (!map.isEmpty()) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    if (!m1076a(entry.getKey())) {
                        MLog.m388e("map has NULL key. please check!");
                        return false;
                    } else if (entry.getValue() == null) {
                        return false;
                    } else {
                        if (entry.getValue() instanceof String) {
                            if (C2216b.f450aq.equals(entry.getKey())) {
                                if (!m1064c(entry.getValue().toString())) {
                                    return false;
                                }
                            } else if (!m1067b(entry.getValue().toString())) {
                                return false;
                            }
                        }
                    }
                }
                return true;
            }
        }
        MLog.m388e("map is null or empty in onEvent");
        return false;
    }
}
