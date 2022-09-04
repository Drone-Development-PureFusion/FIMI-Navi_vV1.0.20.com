package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.C2238g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: ViewPageTracker.java */
/* renamed from: com.umeng.analytics.pro.p */
/* loaded from: classes2.dex */
public class C2262p {

    /* renamed from: a */
    private static JSONObject f654a = new JSONObject();

    /* renamed from: b */
    private final Map<String, Long> f655b = new HashMap();

    /* renamed from: a */
    public static void m1044a(Context context) {
        if (context != null) {
            try {
                synchronized (f654a) {
                    if (f654a.length() > 0) {
                        C2238g.m1178a(context).m1173a(C2259o.m1061a().m1048d(), f654a, C2238g.EnumC2240a.PAGE);
                        f654a = new JSONObject();
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public void m1043a(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.f655b) {
                this.f655b.put(str, Long.valueOf(System.currentTimeMillis()));
            }
        }
    }

    /* renamed from: b */
    public void m1042b(String str) {
        Long l;
        if (!TextUtils.isEmpty(str) && this.f655b.containsKey(str)) {
            synchronized (this.f655b) {
                l = this.f655b.get(str);
            }
            if (l != null) {
                long currentTimeMillis = System.currentTimeMillis() - l.longValue();
                synchronized (f654a) {
                    try {
                        f654a = new JSONObject();
                        f654a.put(C2216b.f474u, str);
                        f654a.put("duration", currentTimeMillis);
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m1045a() {
        String str;
        String str2 = null;
        long j = 0;
        synchronized (this.f655b) {
            for (Map.Entry<String, Long> entry : this.f655b.entrySet()) {
                if (entry.getValue().longValue() > j) {
                    j = entry.getValue().longValue();
                    str = entry.getKey();
                } else {
                    str = str2;
                }
                str2 = str;
            }
        }
        if (str2 != null) {
            m1042b(str2);
        }
    }
}
