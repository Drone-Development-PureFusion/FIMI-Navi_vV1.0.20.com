package com.umeng.commonsdk.proguard;
/* compiled from: ShortStack.java */
/* renamed from: com.umeng.commonsdk.proguard.j */
/* loaded from: classes2.dex */
public class C2363j {

    /* renamed from: a */
    private short[] f1085a;

    /* renamed from: b */
    private int f1086b = -1;

    public C2363j(int i) {
        this.f1085a = new short[i];
    }

    /* renamed from: a */
    public short m604a() {
        short[] sArr = this.f1085a;
        int i = this.f1086b;
        this.f1086b = i - 1;
        return sArr[i];
    }

    /* renamed from: a */
    public void m603a(short s) {
        if (this.f1085a.length == this.f1086b + 1) {
            m600d();
        }
        short[] sArr = this.f1085a;
        int i = this.f1086b + 1;
        this.f1086b = i;
        sArr[i] = s;
    }

    /* renamed from: d */
    private void m600d() {
        short[] sArr = new short[this.f1085a.length * 2];
        System.arraycopy(this.f1085a, 0, sArr, 0, this.f1085a.length);
        this.f1085a = sArr;
    }

    /* renamed from: b */
    public short m602b() {
        return this.f1085a[this.f1086b];
    }

    /* renamed from: c */
    public void m601c() {
        this.f1086b = -1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<ShortStack vector:[");
        for (int i = 0; i < this.f1085a.length; i++) {
            if (i != 0) {
                sb.append(" ");
            }
            if (i == this.f1086b) {
                sb.append(">>");
            }
            sb.append((int) this.f1085a[i]);
            if (i == this.f1086b) {
                sb.append("<<");
            }
        }
        sb.append("]>");
        return sb.toString();
    }
}
