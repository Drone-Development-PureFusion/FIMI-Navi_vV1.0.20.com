package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.C2320ae;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
/* compiled from: TSerializer.java */
/* renamed from: com.umeng.commonsdk.proguard.u */
/* loaded from: classes2.dex */
public class C2376u {

    /* renamed from: a */
    private final ByteArrayOutputStream f1107a;

    /* renamed from: b */
    private final C2341aw f1108b;

    /* renamed from: c */
    private AbstractC2328ak f1109c;

    public C2376u() {
        this(new C2320ae.C2321a());
    }

    public C2376u(AbstractC2330am abstractC2330am) {
        this.f1107a = new ByteArrayOutputStream();
        this.f1108b = new C2341aw(this.f1107a);
        this.f1109c = abstractC2330am.mo727a(this.f1108b);
    }

    /* renamed from: a */
    public byte[] m557a(AbstractC2365l abstractC2365l) throws C2373r {
        this.f1107a.reset();
        abstractC2365l.write(this.f1109c);
        return this.f1107a.toByteArray();
    }

    /* renamed from: a */
    public String m556a(AbstractC2365l abstractC2365l, String str) throws C2373r {
        try {
            return new String(m557a(abstractC2365l), str);
        } catch (UnsupportedEncodingException e) {
            throw new C2373r("JVM DOES NOT SUPPORT ENCODING: " + str);
        }
    }

    /* renamed from: b */
    public String m555b(AbstractC2365l abstractC2365l) throws C2373r {
        return new String(m557a(abstractC2365l));
    }
}
