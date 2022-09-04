package com.umeng.commonsdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.framework.C2273b;
import com.umeng.commonsdk.framework.C2276c;
import com.umeng.commonsdk.internal.C2285a;
import com.umeng.commonsdk.internal.C2288d;
import com.umeng.commonsdk.internal.utils.C2289a;
import com.umeng.commonsdk.internal.utils.C2293b;
import com.umeng.commonsdk.internal.utils.C2296c;
import com.umeng.commonsdk.internal.utils.C2307j;
import com.umeng.commonsdk.internal.utils.C2312l;
import com.umeng.commonsdk.proguard.C2314a;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.proguard.C2350e;
import com.umeng.commonsdk.stateless.C2387a;
import com.umeng.commonsdk.stateless.C2401f;
import com.umeng.commonsdk.stateless.UMSLEnvelopeBuild;
import com.umeng.commonsdk.statistics.common.C2419e;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class UMConfigureImpl {

    /* renamed from: a */
    private static boolean f662a = false;

    /* renamed from: b */
    private static boolean f663b = false;

    public static void init(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            m1024b(applicationContext);
            m1025a(applicationContext);
        }
    }

    /* renamed from: a */
    private static synchronized void m1025a(final Context context) {
        synchronized (UMConfigureImpl.class) {
            if (context != null) {
                try {
                    if (!f663b) {
                        String m1016a = C2273b.m1016a(context);
                        String packageName = context.getPackageName();
                        if (!TextUtils.isEmpty(m1016a) && !TextUtils.isEmpty(packageName) && m1016a.equals(packageName)) {
                            new Thread(new Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        JSONObject m699b = C2350e.m699b(context);
                                        if (m699b != null && m699b.length() > 0) {
                                            C2401f.m420a(context, context.getFilesDir() + "/" + C2387a.f1127e + "/" + Base64.encodeToString(C2285a.f726n.getBytes(), 0), 10);
                                            JSONObject jSONObject = new JSONObject();
                                            jSONObject.put("lbs", m699b);
                                            JSONObject jSONObject2 = new JSONObject();
                                            jSONObject2.put("tp", jSONObject);
                                            UMSLEnvelopeBuild uMSLEnvelopeBuild = new UMSLEnvelopeBuild();
                                            uMSLEnvelopeBuild.buildSLEnvelope(context, uMSLEnvelopeBuild.buildSLBaseHeader(context), jSONObject2, C2285a.f726n);
                                        }
                                    } catch (Exception e) {
                                        C2345b.m708a(context, e);
                                    }
                                }
                            }).start();
                        }
                        f663b = true;
                    }
                } finally {
                }
            }
        }
    }

    /* renamed from: b */
    private static synchronized void m1024b(final Context context) {
        synchronized (UMConfigureImpl.class) {
            if (context != null) {
                try {
                    if (!f662a) {
                        new Thread(new Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.2
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    String m1016a = C2273b.m1016a(context);
                                    String packageName = context.getPackageName();
                                    if (!TextUtils.isEmpty(m1016a) && !TextUtils.isEmpty(packageName) && m1016a.equals(packageName)) {
                                        try {
                                            C2314a.m808a(context);
                                        } catch (Exception e) {
                                            C2419e.m316c(C2276c.f678d, "e is " + e);
                                        }
                                        C2350e.m700a(context);
                                        if (!C2296c.m888a(context).m889a()) {
                                            C2296c.m888a(context).m887b();
                                        }
                                        try {
                                            C2312l.m812b(context);
                                        } catch (Exception e2) {
                                            C2419e.m316c(C2276c.f678d, "e is " + e2);
                                        }
                                        try {
                                            C2289a.m906n(context);
                                        } catch (Exception e3) {
                                            C2419e.m316c(C2276c.f678d, "e is " + e3);
                                        }
                                        try {
                                            C2289a.m924d(context);
                                        } catch (Exception e4) {
                                            C2419e.m316c(C2276c.f678d, "e is " + e4);
                                        }
                                        try {
                                            C2307j.m841b(context);
                                        } catch (Exception e5) {
                                            C2419e.m316c(C2276c.f678d, "e is " + e5);
                                        }
                                        try {
                                            C2288d.m956b(context);
                                        } catch (Exception e6) {
                                            C2419e.m316c(C2276c.f678d, "e is " + e6);
                                        }
                                        try {
                                            C2288d.m953c(context);
                                        } catch (Throwable th) {
                                        }
                                    }
                                } catch (Throwable th2) {
                                    C2345b.m708a(context, th2);
                                }
                            }
                        }).start();
                        if (!C2293b.m898a(context).m899a()) {
                            C2293b.m898a(context).m895b();
                        }
                        f662a = true;
                    }
                } catch (Throwable th) {
                    C2419e.m316c(C2276c.f678d, "e is " + th.getMessage());
                    C2345b.m708a(context, th);
                }
            }
        }
    }
}
