package com.umeng.commonsdk.framework;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.common.C2419e;
import java.util.Iterator;
import org.json.JSONObject;
/* compiled from: UMWorkDispatchImpl.java */
/* renamed from: com.umeng.commonsdk.framework.e */
/* loaded from: classes2.dex */
public class C2283e {

    /* renamed from: a */
    private static HandlerThread f706a = null;

    /* renamed from: b */
    private static Handler f707b = null;

    /* renamed from: c */
    private static C2277d f708c = null;

    /* renamed from: d */
    private static Object f709d = new Object();

    /* renamed from: e */
    private static final int f710e = 768;

    /* renamed from: f */
    private static final int f711f = 769;

    /* renamed from: g */
    private static final int f712g = 770;

    /* renamed from: a */
    public static void m973a(Context context, int i, UMLogDataProtocol uMLogDataProtocol, Object obj) {
        if (context == null || uMLogDataProtocol == null) {
            C2419e.m325b("--->>> Context or UMLogDataProtocol parameter cannot be null!");
            return;
        }
        C2276c.m994a(context.getApplicationContext());
        if (C2276c.m995a(i, uMLogDataProtocol)) {
            if (f706a == null || f707b == null) {
                m966e();
            }
            try {
                if (f707b != null) {
                    if (f708c == null) {
                        synchronized (f709d) {
                            C2273b.m1004f(context);
                            f708c = new C2277d(context, f707b);
                        }
                    }
                    Message obtainMessage = f707b.obtainMessage();
                    obtainMessage.what = f710e;
                    obtainMessage.arg1 = i;
                    obtainMessage.obj = obj;
                    f707b.sendMessage(obtainMessage);
                }
            } catch (Throwable th) {
                C2345b.m708a(C2276c.m997a(), th);
            }
        }
    }

    private C2283e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static void m967d() {
        int i;
        JSONObject jSONObject;
        C2419e.m325b("--->>> autoProcess Enter...");
        Context m997a = C2276c.m997a();
        if (m997a != null) {
            long maxDataSpace = UMEnvelopeBuild.maxDataSpace(m997a);
            UMLogDataProtocol m993a = C2276c.m993a("analytics");
            try {
                if (!UMEnvelopeBuild.isReadyBuild(m997a, UMLogDataProtocol.UMBusinessType.U_DPLUS) || m993a == null) {
                    i = 0;
                    jSONObject = null;
                } else {
                    JSONObject jSONObject2 = m993a.setupReportData(maxDataSpace);
                    if (jSONObject2 == null) {
                        i = 0;
                        jSONObject = jSONObject2;
                    } else {
                        i = jSONObject2.toString().getBytes().length;
                        jSONObject = jSONObject2;
                    }
                }
                if (jSONObject != null) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("header", new JSONObject());
                    jSONObject3.put("content", new JSONObject());
                    JSONObject m971a = (jSONObject == null || i <= 0) ? jSONObject3 : m971a(m971a(jSONObject3, jSONObject.optJSONObject("header"), "header"), jSONObject.optJSONObject("content"), "content");
                    if (m971a != null && UMEnvelopeBuild.buildEnvelopeWithExtHeader(m997a, m971a.optJSONObject("header"), m971a.optJSONObject("content")) != null && jSONObject != null) {
                        m993a.removeCacheData(jSONObject);
                    }
                }
            } catch (Throwable th) {
                C2345b.m708a(m997a, th);
            }
        }
    }

    /* renamed from: a */
    private static JSONObject m971a(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        String str2;
        Context m997a = C2276c.m997a();
        if (jSONObject != null && jSONObject2 != null) {
            try {
                if (jSONObject.opt(str) != null && (jSONObject.opt(str) instanceof JSONObject)) {
                    JSONObject jSONObject3 = (JSONObject) jSONObject.opt(str);
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        if (next != null && (next instanceof String) && (str2 = next) != null && jSONObject2.opt(str2) != null) {
                            try {
                                jSONObject3.put(str2, jSONObject2.opt(str2));
                            } catch (Exception e) {
                                C2345b.m708a(m997a, e);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                C2345b.m708a(m997a, th);
            }
        }
        return jSONObject;
    }

    /* renamed from: e */
    private static synchronized void m966e() {
        synchronized (C2283e.class) {
            C2419e.m325b("--->>> Dispatch: init Enter...");
            if (f706a == null) {
                f706a = new HandlerThread("work_thread");
                f706a.start();
                if (f707b == null) {
                    f707b = new Handler(f706a.getLooper()) { // from class: com.umeng.commonsdk.framework.e.1
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            switch (message.what) {
                                case C2283e.f710e /* 768 */:
                                    C2283e.m969b(message);
                                    return;
                                case 769:
                                    C2283e.m967d();
                                    return;
                                case 770:
                                    C2283e.m964g();
                                    return;
                                default:
                                    return;
                            }
                        }
                    };
                }
            }
            C2419e.m325b("--->>> Dispatch: init Exit...");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m969b(Message message) {
        int i = message.arg1;
        Object obj = message.obj;
        UMLogDataProtocol m993a = C2276c.m993a(C2276c.m996a(i));
        if (m993a != null) {
            C2419e.m325b("--->>> dispatch:handleEvent: call back workEvent with msg type [ 0x" + Integer.toHexString(i) + "]");
            m993a.workEvent(obj, i);
        }
    }

    /* renamed from: f */
    private static void m965f() {
        if (f706a != null) {
            f706a = null;
        }
        if (f707b != null) {
            f707b = null;
        }
        if (f708c != null) {
            f708c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static void m964g() {
        if (f708c != null && f706a != null) {
            C2277d.m992a();
            C2419e.m325b("--->>> handleQuit: Quit dispatch thread.");
            f706a.quit();
            m965f();
        }
    }

    /* renamed from: a */
    public static void m974a() {
        if (f707b != null) {
            Message obtainMessage = f707b.obtainMessage();
            obtainMessage.what = 770;
            f707b.sendMessage(obtainMessage);
        }
    }
}
