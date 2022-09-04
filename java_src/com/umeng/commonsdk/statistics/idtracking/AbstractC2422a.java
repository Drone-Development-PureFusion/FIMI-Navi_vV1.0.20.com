package com.umeng.commonsdk.statistics.idtracking;

import com.umeng.commonsdk.statistics.proto.C2458a;
import com.umeng.commonsdk.statistics.proto.C2465b;
import com.umeng.commonsdk.statistics.proto.C2472c;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* compiled from: AbstractIdTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2422a {

    /* renamed from: a */
    private final int f1284a = 10;

    /* renamed from: b */
    private final int f1285b = 20;

    /* renamed from: c */
    private final String f1286c;

    /* renamed from: d */
    private List<C2458a> f1287d;

    /* renamed from: e */
    private C2465b f1288e;

    /* renamed from: f */
    public abstract String mo242f();

    public AbstractC2422a(String str) {
        this.f1286c = str;
    }

    /* renamed from: a */
    public boolean m281a() {
        return m272g();
    }

    /* renamed from: b */
    public String m276b() {
        return this.f1286c;
    }

    /* renamed from: c */
    public boolean m275c() {
        return this.f1288e == null || this.f1288e.m164h() <= 20;
    }

    /* renamed from: g */
    private boolean m272g() {
        C2465b c2465b = this.f1288e;
        String m173b = c2465b == null ? null : c2465b.m173b();
        int m164h = c2465b == null ? 0 : c2465b.m164h();
        String m278a = m278a(mo242f());
        if (m278a == null || m278a.equals(m173b)) {
            return false;
        }
        if (c2465b == null) {
            c2465b = new C2465b();
        }
        c2465b.m175a(m278a);
        c2465b.m178a(System.currentTimeMillis());
        c2465b.m179a(m164h + 1);
        C2458a c2458a = new C2458a();
        c2458a.m214a(this.f1286c);
        c2458a.m208c(m278a);
        c2458a.m211b(m173b);
        c2458a.m217a(c2465b.m167e());
        if (this.f1287d == null) {
            this.f1287d = new ArrayList(2);
        }
        this.f1287d.add(c2458a);
        if (this.f1287d.size() > 10) {
            this.f1287d.remove(0);
        }
        this.f1288e = c2465b;
        return true;
    }

    /* renamed from: d */
    public C2465b m274d() {
        return this.f1288e;
    }

    /* renamed from: a */
    public void m280a(C2465b c2465b) {
        this.f1288e = c2465b;
    }

    /* renamed from: e */
    public List<C2458a> m273e() {
        return this.f1287d;
    }

    /* renamed from: a */
    public void m277a(List<C2458a> list) {
        this.f1287d = list;
    }

    /* renamed from: a */
    public String m278a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() != 0 && !"0".equals(trim) && !"unknown".equals(trim.toLowerCase(Locale.US))) {
            return trim;
        }
        return null;
    }

    /* renamed from: a */
    public void m279a(C2472c c2472c) {
        this.f1288e = c2472c.m135c().get(this.f1286c);
        List<C2458a> m129h = c2472c.m129h();
        if (m129h != null && m129h.size() > 0) {
            if (this.f1287d == null) {
                this.f1287d = new ArrayList();
            }
            for (C2458a c2458a : m129h) {
                if (this.f1286c.equals(c2458a.f1371a)) {
                    this.f1287d.add(c2458a);
                }
            }
        }
    }
}
