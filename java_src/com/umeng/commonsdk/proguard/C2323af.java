package com.umeng.commonsdk.proguard;
/* compiled from: TField.java */
/* renamed from: com.umeng.commonsdk.proguard.af */
/* loaded from: classes2.dex */
public class C2323af {

    /* renamed from: a */
    public final String f892a;

    /* renamed from: b */
    public final byte f893b;

    /* renamed from: c */
    public final short f894c;

    public C2323af() {
        this("", (byte) 0, (short) 0);
    }

    public C2323af(String str, byte b, short s) {
        this.f892a = str;
        this.f893b = b;
        this.f894c = s;
    }

    public String toString() {
        return "<TField name:'" + this.f892a + "' type:" + ((int) this.f893b) + " field-id:" + ((int) this.f894c) + ">";
    }

    /* renamed from: a */
    public boolean m782a(C2323af c2323af) {
        return this.f893b == c2323af.f893b && this.f894c == c2323af.f894c;
    }
}
