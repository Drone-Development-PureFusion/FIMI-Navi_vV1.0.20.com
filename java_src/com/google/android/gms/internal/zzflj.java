package com.google.android.gms.internal;

import com.fimi.x8sdk.command.FcCollection;
import java.io.IOException;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* loaded from: classes2.dex */
public final class zzflj {
    private final byte[] buffer;
    private int zzpoc;
    private int zzpoh;
    private int zzpoj;
    private final int zzpom;
    private final int zzpvi;
    private int zzpvj;
    private int zzpvk;
    private int zzpok = Integer.MAX_VALUE;
    private int zzpod = 64;
    private int zzpoe = NTLMConstants.FLAG_UNIDENTIFIED_9;

    private zzflj(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.zzpvi = i;
        int i3 = i + i2;
        this.zzpvj = i3;
        this.zzpom = i3;
        this.zzpvk = i;
    }

    public static zzflj zzbe(byte[] bArr) {
        return zzo(bArr, 0, bArr.length);
    }

    private final void zzcyu() {
        this.zzpvj += this.zzpoh;
        int i = this.zzpvj;
        if (i <= this.zzpok) {
            this.zzpoh = 0;
            return;
        }
        this.zzpoh = i - this.zzpok;
        this.zzpvj -= this.zzpoh;
    }

    private final byte zzcyv() throws IOException {
        if (this.zzpvk == this.zzpvj) {
            throw zzflr.zzdcn();
        }
        byte[] bArr = this.buffer;
        int i = this.zzpvk;
        this.zzpvk = i + 1;
        return bArr[i];
    }

    private final void zzlk(int i) throws IOException {
        if (i < 0) {
            throw zzflr.zzdco();
        }
        if (this.zzpvk + i > this.zzpok) {
            zzlk(this.zzpok - this.zzpvk);
            throw zzflr.zzdcn();
        } else if (i > this.zzpvj - this.zzpvk) {
            throw zzflr.zzdcn();
        } else {
            this.zzpvk += i;
        }
    }

    public static zzflj zzo(byte[] bArr, int i, int i2) {
        return new zzflj(bArr, 0, i2);
    }

    public final int getPosition() {
        return this.zzpvk - this.zzpvi;
    }

    public final byte[] readBytes() throws IOException {
        int zzcym = zzcym();
        if (zzcym < 0) {
            throw zzflr.zzdco();
        }
        if (zzcym == 0) {
            return zzflv.zzpwe;
        }
        if (zzcym > this.zzpvj - this.zzpvk) {
            throw zzflr.zzdcn();
        }
        byte[] bArr = new byte[zzcym];
        System.arraycopy(this.buffer, this.zzpvk, bArr, 0, zzcym);
        this.zzpvk = zzcym + this.zzpvk;
        return bArr;
    }

    public final String readString() throws IOException {
        int zzcym = zzcym();
        if (zzcym < 0) {
            throw zzflr.zzdco();
        }
        if (zzcym > this.zzpvj - this.zzpvk) {
            throw zzflr.zzdcn();
        }
        String str = new String(this.buffer, this.zzpvk, zzcym, zzflq.UTF_8);
        this.zzpvk = zzcym + this.zzpvk;
        return str;
    }

    public final void zza(zzfls zzflsVar) throws IOException {
        int zzcym = zzcym();
        if (this.zzpoc >= this.zzpod) {
            throw zzflr.zzdcq();
        }
        int zzli = zzli(zzcym);
        this.zzpoc++;
        zzflsVar.zza(this);
        zzlf(0);
        this.zzpoc--;
        zzlj(zzli);
    }

    public final void zza(zzfls zzflsVar, int i) throws IOException {
        if (this.zzpoc >= this.zzpod) {
            throw zzflr.zzdcq();
        }
        this.zzpoc++;
        zzflsVar.zza(this);
        zzlf((i << 3) | 4);
        this.zzpoc--;
    }

    public final byte[] zzao(int i, int i2) {
        if (i2 == 0) {
            return zzflv.zzpwe;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.zzpvi + i, bArr, 0, i2);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzap(int i, int i2) {
        if (i > this.zzpvk - this.zzpvi) {
            throw new IllegalArgumentException(new StringBuilder(50).append("Position ").append(i).append(" is beyond current ").append(this.zzpvk - this.zzpvi).toString());
        } else if (i < 0) {
            throw new IllegalArgumentException(new StringBuilder(24).append("Bad position ").append(i).toString());
        } else {
            this.zzpvk = this.zzpvi + i;
            this.zzpoj = i2;
        }
    }

    public final int zzcxx() throws IOException {
        if (this.zzpvk == this.zzpvj) {
            this.zzpoj = 0;
            return 0;
        }
        this.zzpoj = zzcym();
        if (this.zzpoj != 0) {
            return this.zzpoj;
        }
        throw new zzflr("Protocol message contained an invalid tag (zero).");
    }

    public final long zzcxz() throws IOException {
        return zzcyr();
    }

    public final int zzcya() throws IOException {
        return zzcym();
    }

    public final boolean zzcyd() throws IOException {
        return zzcym() != 0;
    }

    public final long zzcyl() throws IOException {
        long zzcyr = zzcyr();
        return (-(zzcyr & 1)) ^ (zzcyr >>> 1);
    }

    public final int zzcym() throws IOException {
        byte zzcyv = zzcyv();
        if (zzcyv >= 0) {
            return zzcyv;
        }
        int i = zzcyv & Byte.MAX_VALUE;
        byte zzcyv2 = zzcyv();
        if (zzcyv2 >= 0) {
            return i | (zzcyv2 << 7);
        }
        int i2 = i | ((zzcyv2 & Byte.MAX_VALUE) << 7);
        byte zzcyv3 = zzcyv();
        if (zzcyv3 >= 0) {
            return i2 | (zzcyv3 << 14);
        }
        int i3 = i2 | ((zzcyv3 & Byte.MAX_VALUE) << 14);
        byte zzcyv4 = zzcyv();
        if (zzcyv4 >= 0) {
            return i3 | (zzcyv4 << 21);
        }
        int i4 = i3 | ((zzcyv4 & Byte.MAX_VALUE) << 21);
        byte zzcyv5 = zzcyv();
        int i5 = i4 | (zzcyv5 << FcCollection.MSG_SET_FC_RETURE_HOME_RESUME);
        if (zzcyv5 >= 0) {
            return i5;
        }
        for (int i6 = 0; i6 < 5; i6++) {
            if (zzcyv() >= 0) {
                return i5;
            }
        }
        throw zzflr.zzdcp();
    }

    public final int zzcyo() {
        if (this.zzpok == Integer.MAX_VALUE) {
            return -1;
        }
        return this.zzpok - this.zzpvk;
    }

    public final long zzcyr() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte zzcyv = zzcyv();
            j |= (zzcyv & Byte.MAX_VALUE) << i;
            if ((zzcyv & 128) == 0) {
                return j;
            }
        }
        throw zzflr.zzdcp();
    }

    public final int zzcys() throws IOException {
        return (zzcyv() & 255) | ((zzcyv() & 255) << 8) | ((zzcyv() & 255) << 16) | ((zzcyv() & 255) << 24);
    }

    public final long zzcyt() throws IOException {
        byte zzcyv = zzcyv();
        byte zzcyv2 = zzcyv();
        return ((zzcyv2 & 255) << 8) | (zzcyv & 255) | ((zzcyv() & 255) << 16) | ((zzcyv() & 255) << 24) | ((zzcyv() & 255) << 32) | ((zzcyv() & 255) << 40) | ((zzcyv() & 255) << 48) | ((zzcyv() & 255) << 56);
    }

    public final void zzlf(int i) throws zzflr {
        if (this.zzpoj != i) {
            throw new zzflr("Protocol message end-group tag did not match expected tag.");
        }
    }

    public final boolean zzlg(int i) throws IOException {
        int zzcxx;
        switch (i & 7) {
            case 0:
                zzcym();
                return true;
            case 1:
                zzcyt();
                return true;
            case 2:
                zzlk(zzcym());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzcys();
                return true;
            default:
                throw new zzflr("Protocol message tag had invalid wire type.");
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

    public final int zzli(int i) throws zzflr {
        if (i < 0) {
            throw zzflr.zzdco();
        }
        int i2 = this.zzpvk + i;
        int i3 = this.zzpok;
        if (i2 > i3) {
            throw zzflr.zzdcn();
        }
        this.zzpok = i2;
        zzcyu();
        return i3;
    }

    public final void zzlj(int i) {
        this.zzpok = i;
        zzcyu();
    }

    public final void zzmw(int i) {
        zzap(i, this.zzpoj);
    }
}
