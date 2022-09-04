package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.pro.C2216b;
import com.umeng.commonsdk.internal.C2285a;
import com.umeng.commonsdk.stateless.C2387a;
import com.umeng.commonsdk.stateless.C2401f;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.statistics.common.C2419e;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: UMCrashManager.java */
/* renamed from: com.umeng.commonsdk.proguard.b */
/* loaded from: classes2.dex */
public class C2345b {

    /* renamed from: a */
    private static boolean f946a = false;

    /* renamed from: b */
    private static Object f947b = new Object();

    /* renamed from: a */
    public static void m708a(final Context context, final Throwable th) {
        if (!f946a) {
            C2419e.m328a("walle-crash", "report is " + f946a);
            new Thread(new Runnable() { // from class: com.umeng.commonsdk.proguard.b.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        synchronized (C2345b.f947b) {
                            if (context != null && th != null && !C2345b.f946a) {
                                boolean unused = C2345b.f946a = true;
                                C2419e.m328a("walle-crash", "report thread is " + C2345b.f946a);
                                String m704a = C2348c.m704a(th);
                                if (!TextUtils.isEmpty(m704a)) {
                                    C2401f.m420a(context, context.getFilesDir() + "/" + C2387a.f1127e + "/" + Base64.encodeToString(C2285a.f713a.getBytes(), 0), 10);
                                    UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                                    JSONObject buildSLBaseHeader = uMSLEnvelopeBuild.buildSLBaseHeader(context);
                                    try {
                                        JSONObject jSONObject = new JSONObject();
                                        jSONObject.put("content", m704a);
                                        jSONObject.put("ts", System.currentTimeMillis());
                                        JSONObject jSONObject2 = new JSONObject();
                                        jSONObject2.put("crash", jSONObject);
                                        JSONObject jSONObject3 = new JSONObject();
                                        jSONObject3.put("tp", jSONObject2);
                                        JSONObject buildSLEnvelope = uMSLEnvelopeBuild.buildSLEnvelope(context, buildSLBaseHeader, jSONObject3, C2285a.f713a);
                                        if (buildSLEnvelope != null) {
                                            if (!buildSLEnvelope.has(C2216b.f448ao)) {
                                            }
                                        }
                                    } catch (JSONException e) {
                                    }
                                }
                            }
                        }
                    } catch (Throwable th2) {
                    }
                }
            }).start();
        }
    }
}
