package com.google.android.gms.internal;

import com.fimi.x8sdk.command.FcCollection;
import java.io.IOException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfhd extends zzfhb {
    private final byte[] buffer;
    private final boolean immutable;
    private int limit;
    private int pos;
    private int zzpoh;
    private int zzpoi;
    private int zzpoj;
    private int zzpok;

    private zzfhd(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzpok = Integer.MAX_VALUE;
        this.buffer = bArr;
        this.limit = i + i2;
        this.pos = i;
        this.zzpoi = this.pos;
        this.immutable = z;
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
        if (this.limit != i) {
            byte[] bArr = this.buffer;
            int i2 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                this.pos = i2;
                return b;
            } else if (this.limit - i2 >= 9) {
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
        if (this.limit - i < 4) {
            throw zzfie.zzdae();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long zzcyt() throws IOException {
        int i = this.pos;
        if (this.limit - i < 8) {
            throw zzfie.zzdae();
        }
        byte[] bArr = this.buffer;
        this.pos = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    private final void zzcyu() {
        this.limit += this.zzpoh;
        int i = this.limit - this.zzpoi;
        if (i <= this.zzpok) {
            this.zzpoh = 0;
            return;
        }
        this.zzpoh = i - this.zzpok;
        this.limit -= this.zzpoh;
    }

    private final byte zzcyv() throws IOException {
        if (this.pos == this.limit) {
            throw zzfie.zzdae();
        }
        byte[] bArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        return bArr[i];
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
        if (zzcym > 0 && zzcym <= this.limit - this.pos) {
            String str = new String(this.buffer, this.pos, zzcym, zzfhz.UTF_8);
            this.pos = zzcym + this.pos;
            return str;
        } else if (zzcym == 0) {
            return "";
        } else {
            if (zzcym >= 0) {
                throw zzfie.zzdae();
            }
            throw zzfie.zzdaf();
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
        int zzcym = zzcym();
        if (zzcym <= 0 || zzcym > this.limit - this.pos) {
            if (zzcym == 0) {
                return "";
            }
            if (zzcym > 0) {
                throw zzfie.zzdae();
            }
            throw zzfie.zzdaf();
        } else if (!zzfks.zzl(this.buffer, this.pos, this.pos + zzcym)) {
            throw zzfie.zzdam();
        } else {
            int i = this.pos;
            this.pos += zzcym;
            return new String(this.buffer, i, zzcym, zzfhz.UTF_8);
        }
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final zzfgs zzcyf() throws IOException {
        byte[] bArr;
        int zzcym = zzcym();
        if (zzcym > 0 && zzcym <= this.limit - this.pos) {
            zzfgs zzf = zzfgs.zzf(this.buffer, this.pos, zzcym);
            this.pos = zzcym + this.pos;
            return zzf;
        } else if (zzcym == 0) {
            return zzfgs.zzpnw;
        } else {
            if (zzcym > 0 && zzcym <= this.limit - this.pos) {
                int i = this.pos;
                this.pos = zzcym + this.pos;
                bArr = Arrays.copyOfRange(this.buffer, i, this.pos);
            } else if (zzcym > 0) {
                throw zzfie.zzdae();
            } else {
                if (zzcym != 0) {
                    throw zzfie.zzdaf();
                }
                bArr = zzfhz.EMPTY_BYTE_ARRAY;
            }
            return zzfgs.zzba(bArr);
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
        if (this.limit != i2) {
            byte[] bArr = this.buffer;
            int i3 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.pos = i3;
                return b;
            } else if (this.limit - i3 >= 9) {
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
        return this.zzpok - zzcyq();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final boolean zzcyp() throws IOException {
        return this.pos == this.limit;
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final int zzcyq() {
        return this.pos - this.zzpoi;
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
                if (this.limit - this.pos < 10) {
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
        int zzcyq = zzcyq() + i;
        int i2 = this.zzpok;
        if (zzcyq > i2) {
            throw zzfie.zzdae();
        }
        this.zzpok = zzcyq;
        zzcyu();
        return i2;
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final void zzlj(int i) {
        this.zzpok = i;
        zzcyu();
    }

    @Override // com.google.android.gms.internal.zzfhb
    public final void zzlk(int i) throws IOException {
        if (i >= 0 && i <= this.limit - this.pos) {
            this.pos += i;
        } else if (i >= 0) {
            throw zzfie.zzdae();
        } else {
            throw zzfie.zzdaf();
        }
    }
}
