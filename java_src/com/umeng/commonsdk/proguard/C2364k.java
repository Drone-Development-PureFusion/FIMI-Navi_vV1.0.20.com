package com.umeng.commonsdk.proguard;

import com.facebook.share.internal.ShareConstants;
/* compiled from: TApplicationException.java */
/* renamed from: com.umeng.commonsdk.proguard.k */
/* loaded from: classes2.dex */
public class C2364k extends C2373r {

    /* renamed from: a */
    public static final int f1087a = 0;

    /* renamed from: b */
    public static final int f1088b = 1;

    /* renamed from: c */
    public static final int f1089c = 2;

    /* renamed from: d */
    public static final int f1090d = 3;

    /* renamed from: e */
    public static final int f1091e = 4;

    /* renamed from: f */
    public static final int f1092f = 5;

    /* renamed from: g */
    public static final int f1093g = 6;

    /* renamed from: h */
    public static final int f1094h = 7;

    /* renamed from: j */
    private static final C2333ap f1095j = new C2333ap("TApplicationException");

    /* renamed from: k */
    private static final C2323af f1096k = new C2323af(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, (byte) 11, 1);

    /* renamed from: l */
    private static final C2323af f1097l = new C2323af("type", (byte) 8, 2);

    /* renamed from: m */
    private static final long f1098m = 1;

    /* renamed from: i */
    protected int f1099i;

    public C2364k() {
        this.f1099i = 0;
    }

    public C2364k(int i) {
        this.f1099i = 0;
        this.f1099i = i;
    }

    public C2364k(int i, String str) {
        super(str);
        this.f1099i = 0;
        this.f1099i = i;
    }

    public C2364k(String str) {
        super(str);
        this.f1099i = 0;
    }

    /* renamed from: a */
    public int m599a() {
        return this.f1099i;
    }

    /* renamed from: a */
    public static C2364k m598a(AbstractC2328ak abstractC2328ak) throws C2373r {
        abstractC2328ak.mo754j();
        String str = null;
        int i = 0;
        while (true) {
            C2323af mo752l = abstractC2328ak.mo752l();
            if (mo752l.f893b != 0) {
                switch (mo752l.f894c) {
                    case 1:
                        if (mo752l.f893b == 11) {
                            str = abstractC2328ak.mo738z();
                            break;
                        } else {
                            C2331an.m735a(abstractC2328ak, mo752l.f893b);
                            break;
                        }
                    case 2:
                        if (mo752l.f893b == 8) {
                            i = abstractC2328ak.mo741w();
                            break;
                        } else {
                            C2331an.m735a(abstractC2328ak, mo752l.f893b);
                            break;
                        }
                    default:
                        C2331an.m735a(abstractC2328ak, mo752l.f893b);
                        break;
                }
                abstractC2328ak.mo751m();
            } else {
                abstractC2328ak.mo753k();
                return new C2364k(i, str);
            }
        }
    }

    /* renamed from: b */
    public void m597b(AbstractC2328ak abstractC2328ak) throws C2373r {
        abstractC2328ak.mo767a(f1095j);
        if (getMessage() != null) {
            abstractC2328ak.mo772a(f1096k);
            abstractC2328ak.mo766a(getMessage());
            abstractC2328ak.mo761c();
        }
        abstractC2328ak.mo772a(f1097l);
        abstractC2328ak.mo774a(this.f1099i);
        abstractC2328ak.mo761c();
        abstractC2328ak.mo760d();
        abstractC2328ak.mo762b();
    }
}
