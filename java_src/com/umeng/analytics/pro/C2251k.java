package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.MLog;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: DataSpliter.java */
/* renamed from: com.umeng.analytics.pro.k */
/* loaded from: classes2.dex */
public class C2251k {
    /* renamed from: a */
    public static JSONObject m1091a(Context context, long j, JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject jSONObject3 = new JSONObject();
        try {
            C2238g.m1178a(context).m1180a();
            JSONObject jSONObject4 = new JSONObject();
            long j2 = 0;
            if (jSONObject.has("header")) {
                jSONObject4 = jSONObject.getJSONObject("header");
                if (jSONObject4 != null && jSONObject4.length() > 0) {
                    j2 = j - m1088a(jSONObject4);
                } else {
                    jSONObject4 = null;
                }
            }
            if (jSONObject.has("content") && (jSONObject2 = jSONObject.getJSONObject("content")) != null && jSONObject2.length() > 0) {
                m1090a(context, j2, jSONObject2, jSONObject3);
                if (jSONObject3.length() < 1) {
                    m1086b(context, j2, jSONObject2, jSONObject3);
                }
                if (jSONObject3.length() > 0 && jSONObject4 != null) {
                    jSONObject3.put("header", jSONObject4);
                }
            }
        } catch (Throwable th) {
        }
        return jSONObject3;
    }

    /* renamed from: a */
    private static void m1090a(Context context, long j, JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            if (jSONObject.has("dplus")) {
                JSONObject jSONObject3 = jSONObject.getJSONObject("dplus");
                if (jSONObject3 != null && jSONObject3.length() > 0 && m1088a(jSONObject3) > j) {
                    jSONObject3 = m1087b(context, j, jSONObject3);
                }
                if (jSONObject3.length() > 0) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("dplus", jSONObject3);
                    jSONObject2.put("content", jSONObject4);
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private static void m1086b(Context context, long j, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3;
        try {
            if (jSONObject.has("analytics") && (jSONObject3 = jSONObject.getJSONObject("analytics")) != null && jSONObject3.length() > 0) {
                if (m1088a(jSONObject3) > j) {
                    jSONObject3 = m1092a(context, j);
                }
                if (jSONObject3.length() > 0) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("analytics", jSONObject3);
                    jSONObject2.put("content", jSONObject4);
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private static JSONObject m1087b(Context context, long j, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            if (jSONObject.has(C2216b.f436ac)) {
                JSONArray jSONArray = jSONObject.getJSONArray(C2216b.f436ac);
                if (m1089a(jSONArray) > j) {
                    jSONObject.remove(C2216b.f436ac);
                    C2238g.m1178a(context).m1179a(4);
                    jSONObject2 = m1087b(context, j, jSONObject);
                } else {
                    jSONObject2.put(C2216b.f436ac, jSONArray);
                }
            } else if (jSONObject.has(C2216b.f431Y)) {
                JSONArray jSONArray2 = jSONObject.getJSONArray(C2216b.f431Y);
                if (m1089a(jSONArray2) > j) {
                    jSONObject.remove(C2216b.f431Y);
                    C2238g.m1178a(context).m1179a(0);
                    jSONObject2 = m1087b(context, j, jSONObject);
                } else {
                    jSONObject2.put(C2216b.f431Y, jSONArray2);
                }
            } else if (jSONObject.has(C2216b.f441ah)) {
                JSONArray jSONArray3 = jSONObject.getJSONArray(C2216b.f441ah);
                if (m1089a(jSONArray3) > j) {
                    jSONObject.remove(C2216b.f441ah);
                    C2238g.m1178a(context).m1179a(1);
                    jSONObject2 = m1087b(context, j, jSONObject);
                } else {
                    jSONObject2.put(C2216b.f441ah, jSONArray3);
                }
            }
        } catch (Throwable th) {
        }
        return jSONObject2;
    }

    /* renamed from: a */
    private static JSONObject m1092a(Context context, long j) {
        Throwable th;
        boolean z = true;
        JSONObject jSONObject = new JSONObject();
        try {
            MLog.m388e("splitAnalyticsData========");
            JSONObject m1129b = C2244i.m1142a(context).m1129b(true);
            if (m1129b != null) {
                try {
                    if (m1129b.length() > 0 && m1088a(m1129b) > j) {
                        String str = null;
                        if (m1129b.has(C2216b.f467n)) {
                            JSONObject jSONObject2 = m1129b.getJSONArray(C2216b.f467n).getJSONObject(0);
                            if (jSONObject2 != null) {
                                str = jSONObject2.getString("id");
                                jSONObject2.remove(C2216b.f473t);
                                jSONObject2.remove(C2216b.f472s);
                                JSONArray jSONArray = new JSONArray();
                                jSONArray.put(jSONObject2);
                                m1129b.put(C2216b.f467n, jSONArray);
                            }
                        } else {
                            z = false;
                        }
                        if (m1129b.has(C2216b.f420N)) {
                            m1129b.remove(C2216b.f420N);
                        }
                        if (m1129b.has(C2216b.f421O)) {
                            m1129b.remove(C2216b.f421O);
                        }
                        if (m1129b.has("error")) {
                            m1129b.remove("error");
                        }
                        C2238g.m1178a(context).m1167a(z, str);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    jSONObject = m1129b;
                    MLog.m384e(th);
                    return jSONObject;
                }
            }
            return m1129b;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* renamed from: a */
    public static long m1088a(JSONObject jSONObject) {
        return jSONObject.toString().getBytes().length;
    }

    /* renamed from: a */
    public static long m1089a(JSONArray jSONArray) {
        return jSONArray.toString().getBytes().length;
    }
}
