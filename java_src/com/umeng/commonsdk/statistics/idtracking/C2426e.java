package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import ch.qos.logback.core.CoreConstants;
import com.umeng.commonsdk.proguard.C2370o;
import com.umeng.commonsdk.proguard.C2376u;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.C2420d;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.proto.C2458a;
import com.umeng.commonsdk.statistics.proto.C2472c;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: IdTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.e */
/* loaded from: classes2.dex */
public class C2426e {

    /* renamed from: a */
    public static final long f1295a = 86400000;

    /* renamed from: b */
    public static C2426e f1296b;

    /* renamed from: j */
    private static Object f1297j = new Object();

    /* renamed from: d */
    private File f1299d;

    /* renamed from: f */
    private long f1301f;

    /* renamed from: i */
    private C2427a f1304i;

    /* renamed from: c */
    private final String f1298c = "umeng_it.cache";

    /* renamed from: e */
    private C2472c f1300e = null;

    /* renamed from: h */
    private Set<AbstractC2422a> f1303h = new HashSet();

    /* renamed from: g */
    private long f1302g = 86400000;

    C2426e(Context context) {
        this.f1304i = null;
        this.f1299d = new File(context.getFilesDir(), "umeng_it.cache");
        this.f1304i = new C2427a(context);
        this.f1304i.m257b();
    }

    /* renamed from: a */
    public static synchronized C2426e m269a(Context context) {
        C2426e c2426e;
        synchronized (C2426e.class) {
            if (f1296b == null) {
                f1296b = new C2426e(context);
                f1296b.m268a(new C2428f(context));
                f1296b.m268a(new C2423b(context));
                f1296b.m268a(new C2440r(context));
                f1296b.m268a(new C2425d(context));
                f1296b.m268a(new C2424c(context));
                f1296b.m268a(new C2429g(context));
                f1296b.m268a(new C2432j());
                f1296b.m268a(new C2441s(context));
                C2439q c2439q = new C2439q(context);
                if (!TextUtils.isEmpty(c2439q.mo242f())) {
                    f1296b.m268a(c2439q);
                }
                C2431i c2431i = new C2431i(context);
                if (c2431i.m253g()) {
                    f1296b.m268a(c2431i);
                    f1296b.m268a(new C2430h(context));
                    c2431i.m251i();
                }
                if (C2420d.f1271b != 1) {
                    f1296b.m268a(new C2438p(context));
                    f1296b.m268a(new C2435m(context));
                    f1296b.m268a(new C2437o(context));
                    f1296b.m268a(new C2436n(context));
                    f1296b.m268a(new C2434l(context));
                    f1296b.m268a(new C2433k(context));
                }
                f1296b.m263e();
            }
            c2426e = f1296b;
        }
        return c2426e;
    }

    /* renamed from: a */
    private boolean m268a(AbstractC2422a abstractC2422a) {
        if (this.f1304i.m258a(abstractC2422a.m276b())) {
            return this.f1303h.add(abstractC2422a);
        }
        if (AnalyticsConstants.UM_DEBUG) {
            MLog.m370w("invalid domain: " + abstractC2422a.m276b());
        }
        return false;
    }

    /* renamed from: a */
    public void m270a(long j) {
        this.f1302g = j;
    }

    /* renamed from: a */
    public synchronized void m271a() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f1301f >= this.f1302g) {
            boolean z = false;
            for (AbstractC2422a abstractC2422a : this.f1303h) {
                if (abstractC2422a.m275c()) {
                    if (abstractC2422a.m281a()) {
                        z = true;
                        if (!abstractC2422a.m275c()) {
                            this.f1304i.m256b(abstractC2422a.m276b());
                        }
                    }
                    z = z;
                }
            }
            if (z) {
                m261g();
                this.f1304i.m259a();
                m262f();
            }
            this.f1301f = currentTimeMillis;
        }
    }

    /* renamed from: b */
    public synchronized C2472c m266b() {
        return this.f1300e;
    }

    /* renamed from: g */
    private synchronized void m261g() {
        C2472c c2472c = new C2472c();
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (AbstractC2422a abstractC2422a : this.f1303h) {
            if (abstractC2422a.m275c()) {
                if (abstractC2422a.m274d() != null) {
                    hashMap.put(abstractC2422a.m276b(), abstractC2422a.m274d());
                }
                if (abstractC2422a.m273e() != null && !abstractC2422a.m273e().isEmpty()) {
                    arrayList.addAll(abstractC2422a.m273e());
                }
            }
        }
        c2472c.m140a(arrayList);
        c2472c.m139a(hashMap);
        synchronized (this) {
            this.f1300e = c2472c;
        }
    }

    /* renamed from: c */
    public String m265c() {
        return null;
    }

    /* renamed from: d */
    public synchronized void m264d() {
        boolean z;
        boolean z2 = false;
        synchronized (this) {
            for (AbstractC2422a abstractC2422a : this.f1303h) {
                if (abstractC2422a.m275c()) {
                    if (abstractC2422a.m273e() == null || abstractC2422a.m273e().isEmpty()) {
                        z = z2;
                    } else {
                        abstractC2422a.m277a((List<C2458a>) null);
                        z = true;
                    }
                    z2 = z;
                }
            }
            if (z2) {
                this.f1300e.m136b(false);
                m262f();
            }
        }
    }

    /* renamed from: e */
    public synchronized void m263e() {
        C2472c m260h = m260h();
        if (m260h != null) {
            ArrayList<AbstractC2422a> arrayList = new ArrayList(this.f1303h.size());
            synchronized (this) {
                this.f1300e = m260h;
                for (AbstractC2422a abstractC2422a : this.f1303h) {
                    abstractC2422a.m279a(this.f1300e);
                    if (!abstractC2422a.m275c()) {
                        arrayList.add(abstractC2422a);
                    }
                }
                for (AbstractC2422a abstractC2422a2 : arrayList) {
                    this.f1303h.remove(abstractC2422a2);
                }
                m261g();
            }
        }
    }

    /* renamed from: f */
    public synchronized void m262f() {
        if (this.f1300e != null) {
            m267a(this.f1300e);
        }
    }

    /* renamed from: h */
    private C2472c m260h() {
        FileInputStream fileInputStream;
        synchronized (f1297j) {
            if (!this.f1299d.exists()) {
                return null;
            }
            try {
                fileInputStream = new FileInputStream(this.f1299d);
                try {
                    try {
                        byte[] readStreamToByteArray = HelperUtils.readStreamToByteArray(fileInputStream);
                        C2472c c2472c = new C2472c();
                        new C2370o().m570a(c2472c, readStreamToByteArray);
                        HelperUtils.safeClose(fileInputStream);
                        return c2472c;
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        HelperUtils.safeClose(fileInputStream);
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    HelperUtils.safeClose(fileInputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
                HelperUtils.safeClose(fileInputStream);
                throw th;
            }
        }
    }

    /* renamed from: a */
    private void m267a(C2472c c2472c) {
        byte[] m557a;
        synchronized (f1297j) {
            if (c2472c != null) {
                try {
                    synchronized (this) {
                        m557a = new C2376u().m557a(c2472c);
                    }
                    if (m557a != null) {
                        HelperUtils.writeFile(this.f1299d, m557a);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* compiled from: IdTracker.java */
    /* renamed from: com.umeng.commonsdk.statistics.idtracking.e$a */
    /* loaded from: classes2.dex */
    public static class C2427a {

        /* renamed from: a */
        private Context f1305a;

        /* renamed from: b */
        private Set<String> f1306b = new HashSet();

        public C2427a(Context context) {
            this.f1305a = context;
        }

        /* renamed from: a */
        public synchronized boolean m258a(String str) {
            return !this.f1306b.contains(str);
        }

        /* renamed from: b */
        public synchronized void m256b(String str) {
            this.f1306b.add(str);
        }

        /* renamed from: c */
        public void m255c(String str) {
            this.f1306b.remove(str);
        }

        /* renamed from: a */
        public synchronized void m259a() {
            if (!this.f1306b.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                for (String str : this.f1306b) {
                    sb.append(str);
                    sb.append(CoreConstants.COMMA_CHAR);
                }
                sb.deleteCharAt(sb.length() - 1);
                PreferenceWrapper.getDefault(this.f1305a).edit().putString("invld_id", sb.toString()).commit();
            }
        }

        /* renamed from: b */
        public synchronized void m257b() {
            String[] split;
            String string = PreferenceWrapper.getDefault(this.f1305a).getString("invld_id", null);
            if (!TextUtils.isEmpty(string) && (split = string.split(",")) != null) {
                for (String str : split) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f1306b.add(str);
                    }
                }
            }
        }
    }
}
