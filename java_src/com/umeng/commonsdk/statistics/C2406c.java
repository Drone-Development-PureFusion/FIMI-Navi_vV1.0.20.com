package com.umeng.commonsdk.statistics;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.C2272a;
import com.umeng.commonsdk.framework.C2273b;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.C2318ad;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.proguard.C2354g;
import com.umeng.commonsdk.proguard.C2370o;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ReportPolicy;
import com.umeng.commonsdk.statistics.idtracking.C2426e;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.AbstractC2451d;
import com.umeng.commonsdk.statistics.internal.C2445a;
import com.umeng.commonsdk.statistics.internal.C2449c;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.ABTest;
import com.umeng.commonsdk.statistics.noise.Defcon;
import com.umeng.commonsdk.statistics.noise.ImLatent;
import com.umeng.commonsdk.statistics.proto.Response;
import java.io.File;
/* compiled from: NetWorkManager.java */
/* renamed from: com.umeng.commonsdk.statistics.c */
/* loaded from: classes2.dex */
public class C2406c {

    /* renamed from: b */
    private static final int f1223b = 1;

    /* renamed from: c */
    private static final int f1224c = 2;

    /* renamed from: d */
    private static final int f1225d = 3;

    /* renamed from: p */
    private static final String f1226p = "thtstart";

    /* renamed from: q */
    private static final String f1227q = "gkvc";

    /* renamed from: r */
    private static final String f1228r = "ekvc";

    /* renamed from: a */
    String f1229a;

    /* renamed from: f */
    private C2449c f1231f;

    /* renamed from: g */
    private ImprintHandler f1232g;

    /* renamed from: h */
    private C2426e f1233h;

    /* renamed from: i */
    private ImprintHandler.C2421a f1234i;

    /* renamed from: j */
    private ABTest f1235j;

    /* renamed from: k */
    private ImLatent f1236k;

    /* renamed from: l */
    private Defcon f1237l;

    /* renamed from: m */
    private long f1238m;

    /* renamed from: n */
    private int f1239n;

    /* renamed from: o */
    private int f1240o;

    /* renamed from: s */
    private Context f1241s;

    /* renamed from: e */
    private final int f1230e = 1;

    /* renamed from: t */
    private ReportPolicy.ReportStrategy f1242t = null;

    public C2406c(Context context) {
        this.f1234i = null;
        this.f1235j = null;
        this.f1236k = null;
        this.f1237l = null;
        this.f1238m = 0L;
        this.f1239n = 0;
        this.f1240o = 0;
        this.f1229a = null;
        this.f1241s = context;
        this.f1234i = ImprintHandler.getImprintService(this.f1241s).m293b();
        this.f1235j = ABTest.getService(this.f1241s);
        this.f1237l = Defcon.getService(this.f1241s);
        this.f1236k = ImLatent.getService(this.f1241s, StatTracer.getInstance(this.f1241s));
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(this.f1241s);
        this.f1238m = sharedPreferences.getLong(f1226p, 0L);
        this.f1239n = sharedPreferences.getInt(f1227q, 0);
        this.f1240o = sharedPreferences.getInt(f1228r, 0);
        this.f1229a = UMEnvelopeBuild.imprintProperty(this.f1241s, "track_list", null);
        this.f1232g = ImprintHandler.getImprintService(this.f1241s);
        this.f1232g.m299a(new AbstractC2451d() { // from class: com.umeng.commonsdk.statistics.c.1
            @Override // com.umeng.commonsdk.statistics.internal.AbstractC2451d
            public void onImprintChanged(ImprintHandler.C2421a c2421a) {
                C2406c.this.f1235j.onImprintChanged(c2421a);
                C2406c.this.f1237l.onImprintChanged(c2421a);
                C2406c.this.f1236k.onImprintChanged(c2421a);
                C2406c.this.f1229a = UMEnvelopeBuild.imprintProperty(C2406c.this.f1241s, "track_list", null);
                try {
                    String m1020a = C2272a.m1020a(C2406c.this.f1241s, C2354g.f1019e, (String) null);
                    if (!TextUtils.isEmpty(m1020a)) {
                        try {
                            Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
                            if (cls != null) {
                                cls.getMethod("updateUMTT", Context.class, String.class).invoke(cls, C2406c.this.f1241s, m1020a);
                            }
                        } catch (ClassNotFoundException e) {
                        } catch (Throwable th) {
                        }
                    }
                } catch (Throwable th2) {
                }
            }
        });
        this.f1233h = C2426e.m269a(this.f1241s);
        this.f1231f = new C2449c(this.f1241s);
        this.f1231f.m232a(StatTracer.getInstance(this.f1241s));
    }

    /* renamed from: a */
    public boolean m400a(File file) {
        if (file == null) {
            return false;
        }
        try {
            byte[] m1011a = C2273b.m1011a(file.getPath());
            if (m1011a == null) {
                return false;
            }
            C2445a.m240a(this.f1241s).m237b(file.getName());
            byte[] m230a = this.f1231f.m230a(m1011a, C2445a.m240a(this.f1241s).m239a(file.getName()));
            int m399a = m230a == null ? 1 : m399a(m230a);
            switch (m399a) {
                case 2:
                    this.f1233h.m264d();
                    StatTracer.getInstance(this.f1241s).saveSate();
                    break;
                case 3:
                    StatTracer.getInstance(this.f1241s).saveSate();
                    break;
            }
            return m399a == 2;
        } catch (Throwable th) {
            C2345b.m708a(this.f1241s, th);
            return false;
        }
    }

    /* renamed from: a */
    private int m399a(byte[] bArr) {
        Response response = new Response();
        try {
            new C2370o(new C2318ad.C2319a()).m570a(response, bArr);
            if (response.resp_code == 1) {
                this.f1232g.m292b(response.getImprint());
                this.f1232g.m290c();
            }
            MLog.m382i("send log:" + response.getMsg());
        } catch (Throwable th) {
            C2345b.m708a(this.f1241s, th);
        }
        if (response.resp_code == 1) {
            return 2;
        }
        return 3;
    }

    /* renamed from: a */
    public boolean m402a() {
        if (!this.f1237l.isOpen()) {
            if (!((this.f1242t instanceof ReportPolicy.LatentPolicy) && this.f1242t.isValid()) && this.f1236k.shouldStartLatency()) {
                this.f1242t = new ReportPolicy.LatentPolicy((int) this.f1236k.getDelayTime());
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public int m398b() {
        int delayTime = (int) this.f1236k.getDelayTime();
        return (int) (System.currentTimeMillis() - StatTracer.getInstance(this.f1241s).getLastReqTime());
    }
}
