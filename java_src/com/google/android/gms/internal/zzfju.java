package com.google.android.gms.internal;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
final class zzfju extends InputStream {
    private int mark;
    private zzfjt zzpsa;
    private zzfgy zzpsb;
    private int zzpsc;
    private int zzpsd;
    private int zzpse;
    private /* synthetic */ zzfjq zzpsf;

    public zzfju(zzfjq zzfjqVar) {
        this.zzpsf = zzfjqVar;
        initialize();
    }

    private final void initialize() {
        this.zzpsa = new zzfjt(this.zzpsf);
        this.zzpsb = (zzfgy) this.zzpsa.next();
        this.zzpsc = this.zzpsb.size();
        this.zzpsd = 0;
        this.zzpse = 0;
    }

    private final void zzdbj() {
        if (this.zzpsb == null || this.zzpsd != this.zzpsc) {
            return;
        }
        this.zzpse += this.zzpsc;
        this.zzpsd = 0;
        if (this.zzpsa.hasNext()) {
            this.zzpsb = (zzfgy) this.zzpsa.next();
            this.zzpsc = this.zzpsb.size();
            return;
        }
        this.zzpsb = null;
        this.zzpsc = 0;
    }

    private final int zzk(byte[] bArr, int i, int i2) {
        int i3 = i2;
        int i4 = i;
        while (true) {
            if (i3 <= 0) {
                break;
            }
            zzdbj();
            if (this.zzpsb != null) {
                int min = Math.min(this.zzpsc - this.zzpsd, i3);
                if (bArr != null) {
                    this.zzpsb.zza(bArr, this.zzpsd, i4, min);
                    i4 += min;
                }
                this.zzpsd += min;
                i3 -= min;
            } else if (i3 == i2) {
                return -1;
            }
        }
        return i2 - i3;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.zzpsf.size() - (this.zzpse + this.zzpsd);
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.mark = this.zzpse + this.zzpsd;
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        zzdbj();
        if (this.zzpsb == null) {
            return -1;
        }
        zzfgy zzfgyVar = this.zzpsb;
        int i = this.zzpsd;
        this.zzpsd = i + 1;
        return zzfgyVar.zzld(i) & 255;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        if (i >= 0 && i2 >= 0 && i2 <= bArr.length - i) {
            return zzk(bArr, i, i2);
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        initialize();
        zzk(null, 0, this.mark);
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (j > 2147483647L) {
            j = 2147483647L;
        }
        return zzk(null, 0, (int) j);
    }
}
