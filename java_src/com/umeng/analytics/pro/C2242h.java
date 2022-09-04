package com.umeng.analytics.pro;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C2208b;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.C2238g;
import com.umeng.analytics.pro.C2244i;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AutoViewPageTracker.java */
/* renamed from: com.umeng.analytics.pro.h */
/* loaded from: classes2.dex */
public class C2242h {

    /* renamed from: a */
    public static String f561a = null;

    /* renamed from: f */
    private static JSONObject f562f = new JSONObject();

    /* renamed from: g */
    private Application f567g;

    /* renamed from: e */
    private final Map<String, Long> f566e = new HashMap();

    /* renamed from: b */
    boolean f563b = false;

    /* renamed from: c */
    boolean f564c = false;

    /* renamed from: d */
    Application.ActivityLifecycleCallbacks f565d = new Application.ActivityLifecycleCallbacks() { // from class: com.umeng.analytics.pro.h.1
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (activity != null) {
                if (!C2242h.this.f564c) {
                    C2242h.this.m1148b(activity);
                    return;
                }
                C2242h.this.f564c = false;
                if (!TextUtils.isEmpty(C2242h.f561a)) {
                    if (!C2242h.f561a.equals(activity.getPackageName() + "." + activity.getLocalClassName())) {
                        C2242h.this.m1148b(activity);
                        return;
                    }
                    return;
                }
                C2242h.f561a = activity.getPackageName() + "." + activity.getLocalClassName();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            C2242h.this.m1146c(activity);
            C2242h.this.f564c = false;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }
    };

    public C2242h(Activity activity) {
        this.f567g = null;
        synchronized (this) {
            if (this.f567g == null && activity != null) {
                this.f567g = activity.getApplication();
                m1152a(activity);
            }
        }
    }

    /* renamed from: a */
    private void m1152a(Activity activity) {
        if (!this.f563b) {
            this.f563b = true;
            this.f567g.registerActivityLifecycleCallbacks(this.f565d);
            if (f561a == null) {
                this.f564c = true;
                m1148b(activity);
            }
        }
    }

    /* renamed from: a */
    public void m1153a() {
        this.f563b = false;
        if (this.f567g != null) {
            this.f567g.unregisterActivityLifecycleCallbacks(this.f565d);
            this.f567g = null;
        }
    }

    /* renamed from: b */
    public void m1149b() {
        m1146c(null);
        m1153a();
    }

    /* renamed from: a */
    public static void m1151a(Context context) {
        try {
            synchronized (f562f) {
                if (context != null && f562f.length() > 0) {
                    C2238g.m1178a(context).m1173a(C2259o.m1061a().m1048d(), f562f, C2238g.EnumC2240a.AUTOPAGE);
                    f562f = new JSONObject();
                }
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m1148b(Activity activity) {
        Iterator<String> keys;
        f561a = activity.getPackageName() + "." + activity.getLocalClassName();
        if (AnalyticsConfig.FLAG_DPLUS) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(C2216b.f442ai, f561a);
                jSONObject.put("_$!ts", System.currentTimeMillis());
                JSONObject m1231i = C2208b.m1277a().m1231i();
                if (m1231i.length() > 0) {
                    jSONObject.put(C2216b.f435ab, m1231i);
                }
                String m1050c = C2259o.m1061a().m1050c();
                if (TextUtils.isEmpty(m1050c)) {
                    m1050c = "-1";
                }
                jSONObject.put("__ii", m1050c);
                if (C2259o.m1061a().m1054b()) {
                    jSONObject.put("__ii", "-1");
                }
                JSONObject m1234g = C2208b.m1277a().m1234g(activity.getApplicationContext());
                if (m1234g != null && m1234g.length() > 0 && (keys = m1234g.keys()) != null) {
                    while (keys.hasNext()) {
                        try {
                            String obj = keys.next().toString();
                            if (!Arrays.asList(C2216b.f454au).contains(obj)) {
                                jSONObject.put(obj, m1234g.get(obj));
                            }
                        } catch (Exception e) {
                        }
                    }
                }
                UMWorkDispatch.sendEvent(activity.getApplicationContext(), C2244i.C2246a.f608k, CoreProtocol.getInstance(activity.getApplicationContext()), jSONObject);
            } catch (JSONException e2) {
            }
        }
        synchronized (this.f566e) {
            this.f566e.put(f561a, Long.valueOf(System.currentTimeMillis()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m1146c(Activity activity) {
        long j = 0;
        try {
            synchronized (this.f566e) {
                if (f561a == null && activity != null) {
                    f561a = activity.getPackageName() + "." + activity.getLocalClassName();
                }
                if (!TextUtils.isEmpty(f561a) && this.f566e.containsKey(f561a)) {
                    j = System.currentTimeMillis() - this.f566e.get(f561a).longValue();
                    this.f566e.remove(f561a);
                }
            }
            synchronized (f562f) {
                try {
                    f562f = new JSONObject();
                    f562f.put(C2216b.f474u, f561a);
                    f562f.put("duration", j);
                } catch (Throwable th) {
                }
            }
        } catch (Throwable th2) {
        }
    }
}
