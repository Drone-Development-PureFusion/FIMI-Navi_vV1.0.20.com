package com.umeng.commonsdk.proguard;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* compiled from: TIOStreamTransport.java */
/* renamed from: com.umeng.commonsdk.proguard.aw */
/* loaded from: classes2.dex */
public class C2341aw extends AbstractC2343ay {

    /* renamed from: a */
    protected InputStream f934a;

    /* renamed from: b */
    protected OutputStream f935b;

    protected C2341aw() {
        this.f934a = null;
        this.f935b = null;
    }

    public C2341aw(InputStream inputStream) {
        this.f934a = null;
        this.f935b = null;
        this.f934a = inputStream;
    }

    public C2341aw(OutputStream outputStream) {
        this.f934a = null;
        this.f935b = null;
        this.f935b = outputStream;
    }

    public C2341aw(InputStream inputStream, OutputStream outputStream) {
        this.f934a = null;
        this.f935b = null;
        this.f934a = inputStream;
        this.f935b = outputStream;
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
    /* renamed from: c */
    public void mo717c() {
        if (this.f934a != null) {
            try {
                this.f934a.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.f934a = null;
        }
        if (this.f935b != null) {
            try {
                this.f935b.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.f935b = null;
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: a */
    public int mo721a(byte[] bArr, int i, int i2) throws C2344az {
        if (this.f934a == null) {
            throw new C2344az(1, "Cannot read from null inputStream");
        }
        try {
            int read = this.f934a.read(bArr, i, i2);
            if (read < 0) {
                throw new C2344az(4);
            }
            return read;
        } catch (IOException e) {
            throw new C2344az(0, e);
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: b */
    public void mo718b(byte[] bArr, int i, int i2) throws C2344az {
        if (this.f935b == null) {
            throw new C2344az(1, "Cannot write to null outputStream");
        }
        try {
            this.f935b.write(bArr, i, i2);
        } catch (IOException e) {
            throw new C2344az(0, e);
        }
    }

    @Override // com.umeng.commonsdk.proguard.AbstractC2343ay
    /* renamed from: d */
    public void mo716d() throws C2344az {
        if (this.f935b == null) {
            throw new C2344az(1, "Cannot flush null outputStream");
        }
        try {
            this.f935b.flush();
        } catch (IOException e) {
            throw new C2344az(0, e);
        }
    }
}
