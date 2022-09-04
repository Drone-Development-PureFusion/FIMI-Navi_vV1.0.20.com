package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.C2320ae;
/* compiled from: TProtocolUtil.java */
/* renamed from: com.umeng.commonsdk.proguard.an */
/* loaded from: classes2.dex */
public class C2331an {

    /* renamed from: a */
    private static int f916a = Integer.MAX_VALUE;

    /* renamed from: a */
    public static void m736a(int i) {
        f916a = i;
    }

    /* renamed from: a */
    public static void m735a(AbstractC2328ak abstractC2328ak, byte b) throws C2373r {
        m734a(abstractC2328ak, b, f916a);
    }

    /* renamed from: a */
    public static void m734a(AbstractC2328ak abstractC2328ak, byte b, int i) throws C2373r {
        int i2 = 0;
        if (i <= 0) {
            throw new C2373r("Maximum skip depth exceeded");
        }
        switch (b) {
            case 2:
                abstractC2328ak.mo744t();
                return;
            case 3:
                abstractC2328ak.mo743u();
                return;
            case 4:
                abstractC2328ak.mo739y();
                return;
            case 5:
            case 7:
            case 9:
            default:
                return;
            case 6:
                abstractC2328ak.mo742v();
                return;
            case 8:
                abstractC2328ak.mo741w();
                return;
            case 10:
                abstractC2328ak.mo740x();
                return;
            case 11:
                abstractC2328ak.mo780A();
                return;
            case 12:
                abstractC2328ak.mo754j();
                while (true) {
                    C2323af mo752l = abstractC2328ak.mo752l();
                    if (mo752l.f893b != 0) {
                        m734a(abstractC2328ak, mo752l.f893b, i - 1);
                        abstractC2328ak.mo751m();
                    } else {
                        abstractC2328ak.mo753k();
                        return;
                    }
                }
            case 13:
                C2325ah mo750n = abstractC2328ak.mo750n();
                while (i2 < mo750n.f899c) {
                    m734a(abstractC2328ak, mo750n.f897a, i - 1);
                    m734a(abstractC2328ak, mo750n.f898b, i - 1);
                    i2++;
                }
                abstractC2328ak.mo749o();
                return;
            case 14:
                C2332ao mo746r = abstractC2328ak.mo746r();
                while (i2 < mo746r.f918b) {
                    m734a(abstractC2328ak, mo746r.f917a, i - 1);
                    i2++;
                }
                abstractC2328ak.mo745s();
                return;
            case 15:
                C2324ag mo748p = abstractC2328ak.mo748p();
                while (i2 < mo748p.f896b) {
                    m734a(abstractC2328ak, mo748p.f895a, i - 1);
                    i2++;
                }
                abstractC2328ak.mo747q();
                return;
        }
    }

    /* renamed from: a */
    public static AbstractC2330am m733a(byte[] bArr, AbstractC2330am abstractC2330am) {
        if (bArr[0] > 16) {
            return new C2320ae.C2321a();
        }
        if (bArr.length > 1 && (bArr[1] & 128) != 0) {
            return new C2320ae.C2321a();
        }
        return abstractC2330am;
    }
}
