package com.umeng.commonsdk.proguard;
/* compiled from: TTransport.java */
/* renamed from: com.umeng.commonsdk.proguard.ay */
/* loaded from: classes2.dex */
public abstract class AbstractC2343ay {
    /* renamed from: a */
    public abstract int mo721a(byte[] bArr, int i, int i2) throws C2344az;

    /* renamed from: a */
    public abstract boolean mo723a();

    /* renamed from: b */
    public abstract void mo720b() throws C2344az;

    /* renamed from: b */
    public abstract void mo718b(byte[] bArr, int i, int i2) throws C2344az;

    /* renamed from: c */
    public abstract void mo717c();

    /* renamed from: i */
    public boolean m711i() {
        return mo723a();
    }

    /* renamed from: d */
    public int m715d(byte[] bArr, int i, int i2) throws C2344az {
        int i3 = 0;
        while (i3 < i2) {
            int mo721a = mo721a(bArr, i + i3, i2 - i3);
            if (mo721a <= 0) {
                throw new C2344az("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
            }
            i3 += mo721a;
        }
        return i3;
    }

    /* renamed from: b */
    public void m719b(byte[] bArr) throws C2344az {
        mo718b(bArr, 0, bArr.length);
    }

    /* renamed from: d */
    public void mo716d() throws C2344az {
    }

    /* renamed from: f */
    public byte[] mo714f() {
        return null;
    }

    /* renamed from: g */
    public int mo713g() {
        return 0;
    }

    /* renamed from: h */
    public int mo712h() {
        return -1;
    }

    /* renamed from: a */
    public void mo722a(int i) {
    }
}
