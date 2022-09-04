package com.umeng.commonsdk.proguard;
/* compiled from: TMemoryInputTransport.java */
/* renamed from: com.umeng.commonsdk.proguard.ax */
/* loaded from: classes2.dex */
public final class C2342ax extends AbstractC2343ay {

    /* renamed from: a */
    private byte[] f936a;

    /* renamed from: b */
    private int f937b;

    /* renamed from: c */
    private int f938c;

    public C2342ax() {
    }

    public C2342ax(byte[] bArr) {
        m726a(bArr);
    }

    public C2342ax(byte[] bArr, int i, int i2) {
        m725c(bArr, i, i2);
    }

    /* renamed from: a */
    public void m726a(byte[] bArr) {
        m725c(bArr, 0, bArr.length);
    }

    /* renamed from: c */
    public void m725c(byte[] bArr, int i, int i2) {
        this.f936a = bArr;
        this.f937b = i;
        this.f938c = i + i2;
    }

    /* renamed from: e */
    public void m724e() {
        this.f936a = null;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: c */
    public void mo717c() {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: a */
    public boolean mo723a() {
        return true;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: b */
    public void mo720b() throws C2344az {
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: a */
    public int mo721a(byte[] bArr, int i, int i2) throws C2344az {
        int mo712h = mo712h();
        if (i2 > mo712h) {
            i2 = mo712h;
        }
        if (i2 > 0) {
            System.arraycopy(this.f936a, this.f937b, bArr, i, i2);
            mo722a(i2);
        }
        return i2;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: b */
    public void mo718b(byte[] bArr, int i, int i2) throws C2344az {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: f */
    public byte[] mo714f() {
        return this.f936a;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: g */
    public int mo713g() {
        return this.f937b;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: h */
    public int mo712h() {
        return this.f938c - this.f937b;
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: a */
    public void mo722a(int i) {
        this.f937b += i;
    }
}
