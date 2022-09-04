package com.google.android.gms.internal;

import com.fimi.x8sdk.command.FcCollection;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfhe extends zzfhb {
    private final byte[] buffer;
    private int pos;
    private int zzpoh;
    private int zzpoj;
    private int zzpok;
    private final InputStream zzpol;
    private int zzpom;
    private int zzpon;
    private zzfhf zzpoo;

    private zzfhe(InputStream inputStream, int i) {
        super();
        this.zzpok = Integer.MAX_VALUE;
        this.zzpoo = null;
        zzfhz.zzc(inputStream, "input");
        this.zzpol = inputStream;
        this.buffer = new byte[i];
        this.zzpom = 0;
        this.pos = 0;
        this.zzpon = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b2, code lost:
        if (r4[r3] < 0) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final long zzcyr() throws IOException {
        long j;
        int i = this.pos;
        if (this.zzpom != i) {
            byte[] bArr = this.buffer;
            int i2 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                this.pos = i2;
                return b;
            } else if (this.zzpom - i2 >= 9) {
                int i3 = i2 + 1;
                int i4 = b ^ (bArr[i2] << 7);
                if (i4 < 0) {
                    j = i4 ^ (-128);
                } else {
                    int i5 = i3 + 1;
                    int i6 = i4 ^ (bArr[i3] << 14);
                    if (i6 >= 0) {
                        j = i6 ^ 16256;
                        i3 = i5;
                    } else {
                        i3 = i5 + 1;
                        int i7 = i6 ^ (bArr[i5] << 21);
                        if (i7 < 0) {
                            j = i7 ^ (-2080896);
                        } else {
                            int i8 = i3 + 1;
                            long j2 = i7 ^ (bArr[i3] << 28);
                            if (j2 >= 0) {
                                j = j2 ^ 266354560;
                                i3 = i8;
                            } else {
                                i3 = i8 + 1;
                                long j3 = j2 ^ (bArr[i8] << 35);
                                if (j3 < 0) {
                                    j = j3 ^ (-34093383808L);
                                } else {
                                    int i9 = i3 + 1;
                                    long j4 = j3 ^ (bArr[i3] << 42);
                                    if (j4 >= 0) {
                                        j = j4 ^ 4363953127296L;
                                        i3 = i9;
                                    } else {
                                        i3 = i9 + 1;
                                        long j5 = j4 ^ (bArr[i9] << 49);
                                        if (j5 < 0) {
                                            j = j5 ^ (-558586000294016L);
                                        } else {
                                            int i10 = i3 + 1;
                                            j = (j5 ^ (bArr[i3] << 56)) ^ 71499008037633920L;
                                            i3 = j < 0 ? i10 + 1 : i10;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.pos = i3;
                return j;
            }
        }
        return zzcyn();
    }

    private final int zzcys() throws IOException {
        int i = this.pos;
        if (this.zzpom - i < 4) {
            zzlm(4);
            i = this.pos;
        }
        byte[] bArr = this.buffer;
        this.pos = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long zzcyt() throws IOException {
        int i = this.pos;
        if (this.zzpom - i < 8) {
            zzlm(8);
            i = this.pos;
        }
        byte[] bArr = this.buffer;
        this.pos = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    private final void zzcyu() {
        this.zzpom += this.zzpoh;
        int i = this.zzpon + this.zzpom;
        if (i <= this.zzpok) {
            this.zzpoh = 0;
            return;
        }
        this.zzpoh = i - this.zzpok;
        this.zzpom -= this.zzpoh;
    }

    private final byte zzcyv() throws IOException {
        if (this.pos == this.zzpom) {
            zzlm(1);
        }
        byte[] bArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i];
    }

    private final void zzlm(int i) throws IOException {
        if (!zzln(i)) {
            if (i <= (this.zzpoe - this.zzpon) - this.pos) {
                throw zzfie.zzdae();
            }
            throw zzfie.zzdal();
        }
    }

    private final boolean zzln(int i) throws IOException {
        while (this.pos + i > this.zzpom) {
            if (i > (this.zzpoe - this.zzpon) - this.pos || this.zzpon + this.pos + i > this.zzpok) {
                return false;
            }
            int i2 = this.pos;
            if (i2 > 0) {
                if (this.zzpom > i2) {
                    System.arraycopy(this.buffer, i2, this.buffer, 0, this.zzpom - i2);
                }
                this.zzpon += i2;
                this.zzpom -= i2;
                this.pos = 0;
            }
            int read = this.zzpol.read(this.buffer, this.zzpom, Math.min(this.buffer.length - this.zzpom, (this.zzpoe - this.zzpon) - this.zzpom));
            if (read == 0 || read < -1 || read > this.buffer.length) {
                throw new IllegalStateException(new StringBuilder(102).append("InputStream#read(byte[]) returned invalid result: ").append(read).append("\nThe InputStream implementation is buggy.").toString());
            }
            if (read <= 0) {
                return false;
            }
            this.zzpom = read + this.zzpom;
            zzcyu();
            if (this.zzpom >= i) {
                return true;
            }
        }
        throw new IllegalStateException(new StringBuilder(77).append("refillBuffer() called when ").append(i).append(" bytes were already available in buffer").toString());
    }

    private final byte[] zzlo(int i) throws IOException {
        byte[] zzlp = zzlp(i);
        if (zzlp != null) {
            return zzlp;
        }
        int i2 = this.pos;
        int i3 = this.zzpom - this.pos;
        this.zzpon += this.zzpom;
        this.pos = 0;
        this.zzpom = 0;
        List<byte[]> zzlq = zzlq(i - i3);
        byte[] bArr = new byte[i];
        System.arraycopy(this.buffer, i2, bArr, 0, i3);
        Iterator<byte[]> it = zzlq.iterator();
        while (true) {
            int i4 = i3;
            if (!it.hasNext()) {
                return bArr;
            }
            byte[] next = it.next();
            System.arraycopy(next, 0, bArr, i4, next.length);
            i3 = next.length + i4;
        }
    }

    private final byte[] zzlp(int i) throws IOException {
        if (i == 0) {
            return zzfhz.EMPTY_BYTE_ARRAY;
        }
        if (i < 0) {
            throw zzfie.zzdaf();
        }
        int i2 = this.zzpon + this.pos + i;
        if (i2 - this.zzpoe > 0) {
            throw zzfie.zzdal();
        }
        if (i2 > this.zzpok) {
            zzlk((this.zzpok - this.zzpon) - this.pos);
            throw zzfie.zzdae();
        }
        int i3 = this.zzpom - this.pos;
        int i4 = i - i3;
        if (i4 >= 4096 && i4 > this.zzpol.available()) {
            return null;
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.buffer, this.pos, bArr, 0, i3);
        this.zzpon += this.zzpom;
        this.pos = 0;
        this.zzpom = 0;
        while (i3 < bArr.length) {
            int read = this.zzpol.read(bArr, i3, i - i3);
            if (read == -1) {
                throw zzfie.zzdae();
            }
            this.zzpon += read;
            i3 += read;
        }
        return bArr;
    }

    private final List<byte[]> zzlq(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            byte[] bArr = new byte[Math.min(i, 4096)];
            int i2 = 0;
            while (i2 < bArr.length) {
                int read = this.zzpol.read(bArr, i2, bArr.length - i2);
                if (read == -1) {
                    throw zzfie.zzdae();
                }
                this.zzpon += read;
                i2 += read;
            }
            i -= bArr.length;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(zzcyt());
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(zzcys());
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final String readString() throws IOException {
        int zzcym = zzcym();
        if (zzcym > 0 && zzcym <= this.zzpom - this.pos) {
            String str = new String(this.buffer, this.pos, zzcym, zzfhz.UTF_8);
            this.pos = zzcym + this.pos;
            return str;
        } else if (zzcym == 0) {
            return "";
        } else {
            if (zzcym > this.zzpom) {
                return new String(zzlo(zzcym), zzfhz.UTF_8);
            }
            zzlm(zzcym);
            String str2 = new String(this.buffer, this.pos, zzcym, zzfhz.UTF_8);
            this.pos = zzcym + this.pos;
            return str2;
        }
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final <T extends zzfhu<T, ?>> T zza(T t, zzfhm zzfhmVar) throws IOException {
        int zzcym = zzcym();
        if (this.zzpoc >= this.zzpod) {
            throw zzfie.zzdak();
        }
        int zzli = zzli(zzcym);
        this.zzpoc++;
        T t2 = (T) zzfhu.zza(t, this, zzfhmVar);
        zzlf(0);
        this.zzpoc--;
        zzlj(zzli);
        return t2;
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final void zza(zzfjd zzfjdVar, zzfhm zzfhmVar) throws IOException {
        int zzcym = zzcym();
        if (this.zzpoc >= this.zzpod) {
            throw zzfie.zzdak();
        }
        int zzli = zzli(zzcym);
        this.zzpoc++;
        zzfjdVar.zzb(this, zzfhmVar);
        zzlf(0);
        this.zzpoc--;
        zzlj(zzli);
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzcxx() throws IOException {
        if (zzcyp()) {
            this.zzpoj = 0;
            return 0;
        }
        this.zzpoj = zzcym();
        if ((this.zzpoj >>> 3) != 0) {
            return this.zzpoj;
        }
        throw zzfie.zzdah();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final long zzcxy() throws IOException {
        return zzcyr();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final long zzcxz() throws IOException {
        return zzcyr();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzcya() throws IOException {
        return zzcym();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final long zzcyb() throws IOException {
        return zzcyt();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzcyc() throws IOException {
        return zzcys();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final boolean zzcyd() throws IOException {
        return zzcyr() != 0;
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final String zzcye() throws IOException {
        byte[] zzlo;
        int zzcym = zzcym();
        int i = this.pos;
        if (zzcym <= this.zzpom - i && zzcym > 0) {
            byte[] bArr = this.buffer;
            this.pos = i + zzcym;
            zzlo = bArr;
        } else if (zzcym == 0) {
            return "";
        } else {
            if (zzcym <= this.zzpom) {
                zzlm(zzcym);
                zzlo = this.buffer;
                this.pos = zzcym;
                i = 0;
            } else {
                zzlo = zzlo(zzcym);
                i = 0;
            }
        }
        if (!zzfks.zzl(zzlo, i, i + zzcym)) {
            throw zzfie.zzdam();
        }
        return new String(zzlo, i, zzcym, zzfhz.UTF_8);
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final zzfgs zzcyf() throws IOException {
        int zzcym = zzcym();
        if (zzcym <= this.zzpom - this.pos && zzcym > 0) {
            zzfgs zzf = zzfgs.zzf(this.buffer, this.pos, zzcym);
            this.pos = zzcym + this.pos;
            return zzf;
        } else if (zzcym == 0) {
            return zzfgs.zzpnw;
        } else {
            byte[] zzlp = zzlp(zzcym);
            if (zzlp != null) {
                return zzfgs.zzba(zzlp);
            }
            int i = this.pos;
            int i2 = this.zzpom - this.pos;
            this.zzpon += this.zzpom;
            this.pos = 0;
            this.zzpom = 0;
            List<byte[]> zzlq = zzlq(zzcym - i2);
            ArrayList arrayList = new ArrayList(zzlq.size() + 1);
            arrayList.add(zzfgs.zzf(this.buffer, i, i2));
            for (byte[] bArr : zzlq) {
                arrayList.add(zzfgs.zzba(bArr));
            }
            return zzfgs.zzg(arrayList);
        }
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzcyg() throws IOException {
        return zzcym();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzcyh() throws IOException {
        return zzcym();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzcyi() throws IOException {
        return zzcys();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final long zzcyj() throws IOException {
        return zzcyt();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzcyk() throws IOException {
        return zzll(zzcym());
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final long zzcyl() throws IOException {
        return zzct(zzcyr());
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
        if (r3[r2] < 0) goto L34;
     */
    @Override // com.google.android.gms.internal.zzfhb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzcym() throws IOException {
        int i;
        int i2 = this.pos;
        if (this.zzpom != i2) {
            byte[] bArr = this.buffer;
            int i3 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.pos = i3;
                return b;
            } else if (this.zzpom - i3 >= 9) {
                int i4 = i3 + 1;
                int i5 = b ^ (bArr[i3] << 7);
                if (i5 < 0) {
                    i = i5 ^ (-128);
                } else {
                    int i6 = i4 + 1;
                    int i7 = i5 ^ (bArr[i4] << 14);
                    if (i7 >= 0) {
                        i = i7 ^ 16256;
                        i4 = i6;
                    } else {
                        i4 = i6 + 1;
                        int i8 = i7 ^ (bArr[i6] << 21);
                        if (i8 < 0) {
                            i = i8 ^ (-2080896);
                        } else {
                            int i9 = i4 + 1;
                            byte b2 = bArr[i4];
                            i = (i8 ^ (b2 << FcCollection.MSG_SET_FC_RETURE_HOME_RESUME)) ^ 266354560;
                            if (b2 < 0) {
                                i4 = i9 + 1;
                                if (bArr[i9] < 0) {
                                    i9 = i4 + 1;
                                    if (bArr[i4] < 0) {
                                        i4 = i9 + 1;
                                        if (bArr[i9] < 0) {
                                            i9 = i4 + 1;
                                            if (bArr[i4] < 0) {
                                                i4 = i9 + 1;
                                            }
                                        }
                                    }
                                }
                            }
                            i4 = i9;
                        }
                    }
                }
                this.pos = i4;
                return i;
            }
        }
        return (int) zzcyn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.zzfhb
    public final long zzcyn() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzcyv = zzcyv();
            j |= (zzcyv & Byte.MAX_VALUE) << i;
            if ((zzcyv & 128) == 0) {
                return j;
            }
        }
        throw zzfie.zzdag();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzcyo() {
        if (this.zzpok == Integer.MAX_VALUE) {
            return -1;
        }
        return this.zzpok - (this.zzpon + this.pos);
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final boolean zzcyp() throws IOException {
        return this.pos == this.zzpom && !zzln(1);
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzcyq() {
        return this.zzpon + this.pos;
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final void zzlf(int i) throws zzfie {
        if (this.zzpoj != i) {
            throw zzfie.zzdai();
        }
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final boolean zzlg(int i) throws IOException {
        int zzcxx;
        int i2 = 0;
        switch (i & 7) {
            case 0:
                if (this.zzpom - this.pos < 10) {
                    while (i2 < 10) {
                        if (zzcyv() >= 0) {
                            return true;
                        }
                        i2++;
                    }
                    throw zzfie.zzdag();
                }
                while (i2 < 10) {
                    byte[] bArr = this.buffer;
                    int i3 = this.pos;
                    this.pos = i3 + 1;
                    if (bArr[i3] >= 0) {
                        return true;
                    }
                    i2++;
                }
                throw zzfie.zzdag();
            case 1:
                zzlk(8);
                return true;
            case 2:
                zzlk(zzcym());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzlk(4);
                return true;
            default:
                throw zzfie.zzdaj();
        }
        do {
            zzcxx = zzcxx();
            if (zzcxx != 0) {
            }
            zzlf(((i >>> 3) << 3) | 4);
            return true;
        } while (zzlg(zzcxx));
        zzlf(((i >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzli(int i) throws zzfie {
        if (i < 0) {
            throw zzfie.zzdaf();
        }
        int i2 = this.zzpon + this.pos + i;
        int i3 = this.zzpok;
        if (i2 > i3) {
            throw zzfie.zzdae();
        }
        this.zzpok = i2;
        zzcyu();
        return i3;
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final void zzlj(int i) {
        this.zzpok = i;
        zzcyu();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final void zzlk(int i) throws IOException {
        if (i <= this.zzpom - this.pos && i >= 0) {
            this.pos += i;
        } else if (i < 0) {
            throw zzfie.zzdaf();
        } else {
            if (this.zzpon + this.pos + i > this.zzpok) {
                zzlk((this.zzpok - this.zzpon) - this.pos);
                throw zzfie.zzdae();
            }
            int i2 = this.zzpom - this.pos;
            this.pos = this.zzpom;
            zzlm(1);
            while (i - i2 > this.zzpom) {
                i2 += this.zzpom;
                this.pos = this.zzpom;
                zzlm(1);
            }
            this.pos = i - i2;
        }
    }
}
