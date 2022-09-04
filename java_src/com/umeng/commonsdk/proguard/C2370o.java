package com.umeng.commonsdk.proguard;

import com.fimi.x8sdk.command.FcCollection;
import com.umeng.commonsdk.proguard.C2320ae;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* compiled from: TDeserializer.java */
/* renamed from: com.umeng.commonsdk.proguard.o */
/* loaded from: classes2.dex */
public class C2370o {

    /* renamed from: a */
    private final AbstractC2328ak f1101a;

    /* renamed from: b */
    private final C2342ax f1102b;

    public C2370o() {
        this(new C2320ae.C2321a());
    }

    public C2370o(AbstractC2330am abstractC2330am) {
        this.f1102b = new C2342ax();
        this.f1101a = abstractC2330am.mo727a(this.f1102b);
    }

    /* renamed from: a */
    public void m570a(AbstractC2365l abstractC2365l, byte[] bArr) throws C2373r {
        try {
            this.f1102b.m726a(bArr);
            abstractC2365l.read(this.f1101a);
        } finally {
            this.f1102b.m724e();
            this.f1101a.mo779B();
        }
    }

    /* renamed from: a */
    public void m571a(AbstractC2365l abstractC2365l, String str, String str2) throws C2373r {
        try {
            try {
                m570a(abstractC2365l, str.getBytes(str2));
            } catch (UnsupportedEncodingException e) {
                throw new C2373r("JVM DOES NOT SUPPORT ENCODING: " + str2);
            }
        } finally {
            this.f1101a.mo779B();
        }
    }

    /* renamed from: a */
    public void m569a(AbstractC2365l abstractC2365l, byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        try {
            try {
                if (m559j(bArr, abstractC2374s, abstractC2374sArr) != null) {
                    abstractC2365l.read(this.f1101a);
                }
            } catch (Exception e) {
                throw new C2373r(e);
            }
        } finally {
            this.f1102b.m724e();
            this.f1101a.mo779B();
        }
    }

    /* renamed from: a */
    public Boolean m568a(byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        return (Boolean) m573a((byte) 2, bArr, abstractC2374s, abstractC2374sArr);
    }

    /* renamed from: b */
    public Byte m567b(byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        return (Byte) m573a((byte) 3, bArr, abstractC2374s, abstractC2374sArr);
    }

    /* renamed from: c */
    public Double m566c(byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        return (Double) m573a((byte) 4, bArr, abstractC2374s, abstractC2374sArr);
    }

    /* renamed from: d */
    public Short m565d(byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        return (Short) m573a((byte) 6, bArr, abstractC2374s, abstractC2374sArr);
    }

    /* renamed from: e */
    public Integer m564e(byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        return (Integer) m573a((byte) 8, bArr, abstractC2374s, abstractC2374sArr);
    }

    /* renamed from: f */
    public Long m563f(byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        return (Long) m573a((byte) 10, bArr, abstractC2374s, abstractC2374sArr);
    }

    /* renamed from: g */
    public String m562g(byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        return (String) m573a((byte) 11, bArr, abstractC2374s, abstractC2374sArr);
    }

    /* renamed from: h */
    public ByteBuffer m561h(byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        return (ByteBuffer) m573a(FcCollection.MSG_SET_SCREW_PAUSE, bArr, abstractC2374s, abstractC2374sArr);
    }

    /* renamed from: i */
    public Short m560i(byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        try {
            try {
                if (m559j(bArr, abstractC2374s, abstractC2374sArr) != null) {
                    this.f1101a.mo754j();
                    return Short.valueOf(this.f1101a.mo752l().f894c);
                }
                return null;
            } catch (Exception e) {
                throw new C2373r(e);
            }
        } finally {
            this.f1102b.m724e();
            this.f1101a.mo779B();
        }
    }

    /* renamed from: a */
    private Object m573a(byte b, byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        try {
            try {
                C2323af m559j = m559j(bArr, abstractC2374s, abstractC2374sArr);
                if (m559j != null) {
                    switch (b) {
                        case 2:
                            if (m559j.f893b == 2) {
                                return Boolean.valueOf(this.f1101a.mo744t());
                            }
                            break;
                        case 3:
                            if (m559j.f893b == 3) {
                                return Byte.valueOf(this.f1101a.mo743u());
                            }
                            break;
                        case 4:
                            if (m559j.f893b == 4) {
                                return Double.valueOf(this.f1101a.mo739y());
                            }
                            break;
                        case 6:
                            if (m559j.f893b == 6) {
                                return Short.valueOf(this.f1101a.mo742v());
                            }
                            break;
                        case 8:
                            if (m559j.f893b == 8) {
                                return Integer.valueOf(this.f1101a.mo741w());
                            }
                            break;
                        case 10:
                            if (m559j.f893b == 10) {
                                return Long.valueOf(this.f1101a.mo740x());
                            }
                            break;
                        case 11:
                            if (m559j.f893b == 11) {
                                return this.f1101a.mo738z();
                            }
                            break;
                        case 100:
                            if (m559j.f893b == 11) {
                                return this.f1101a.mo780A();
                            }
                            break;
                    }
                }
                return null;
            } catch (Exception e) {
                throw new C2373r(e);
            }
        } finally {
            this.f1102b.m724e();
            this.f1101a.mo779B();
        }
    }

    /* renamed from: j */
    private C2323af m559j(byte[] bArr, AbstractC2374s abstractC2374s, AbstractC2374s... abstractC2374sArr) throws C2373r {
        int i = 0;
        this.f1102b.m726a(bArr);
        AbstractC2374s[] abstractC2374sArr2 = new AbstractC2374s[abstractC2374sArr.length + 1];
        abstractC2374sArr2[0] = abstractC2374s;
        for (int i2 = 0; i2 < abstractC2374sArr.length; i2++) {
            abstractC2374sArr2[i2 + 1] = abstractC2374sArr[i2];
        }
        this.f1101a.mo754j();
        C2323af c2323af = null;
        while (i < abstractC2374sArr2.length) {
            c2323af = this.f1101a.mo752l();
            if (c2323af.f893b == 0 || c2323af.f894c > abstractC2374sArr2[i].mo41a()) {
                return null;
            }
            if (c2323af.f894c != abstractC2374sArr2[i].mo41a()) {
                C2331an.m735a(this.f1101a, c2323af.f893b);
                this.f1101a.mo751m();
            } else {
                i++;
                if (i < abstractC2374sArr2.length) {
                    this.f1101a.mo754j();
                }
            }
        }
        return c2323af;
    }

    /* renamed from: a */
    public void m572a(AbstractC2365l abstractC2365l, String str) throws C2373r {
        m570a(abstractC2365l, str.getBytes());
    }
}
