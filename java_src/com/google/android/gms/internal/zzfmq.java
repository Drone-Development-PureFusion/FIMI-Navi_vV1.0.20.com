package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class zzfmq extends zzflm<zzfmq> implements Cloneable {
    private byte[] zzpyq = zzflv.zzpwe;
    private String zzpyr = "";
    private byte[][] zzpys = zzflv.zzpwd;
    private boolean zzpyt = false;

    public zzfmq() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    /* renamed from: zzddd */
    public zzfmq clone() {
        try {
            zzfmq zzfmqVar = (zzfmq) super.clone();
            if (this.zzpys != null && this.zzpys.length > 0) {
                zzfmqVar.zzpys = (byte[][]) this.zzpys.clone();
            }
            return zzfmqVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfmq)) {
            return false;
        }
        zzfmq zzfmqVar = (zzfmq) obj;
        if (!Arrays.equals(this.zzpyq, zzfmqVar.zzpyq)) {
            return false;
        }
        if (this.zzpyr == null) {
            if (zzfmqVar.zzpyr != null) {
                return false;
            }
        } else if (!this.zzpyr.equals(zzfmqVar.zzpyr)) {
            return false;
        }
        if (zzflq.zza(this.zzpys, zzfmqVar.zzpys) && this.zzpyt == zzfmqVar.zzpyt) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzfmqVar.zzpvl == null || zzfmqVar.zzpvl.isEmpty() : this.zzpvl.equals(zzfmqVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        int i = 0;
        int hashCode = ((this.zzpyt ? 1231 : 1237) + (((((this.zzpyr == null ? 0 : this.zzpyr.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + Arrays.hashCode(this.zzpyq)) * 31)) * 31) + zzflq.zzd(this.zzpys)) * 31)) * 31;
        if (this.zzpvl != null && !this.zzpvl.isEmpty()) {
            i = this.zzpvl.hashCode();
        }
        return hashCode + i;
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    break;
                case 10:
                    this.zzpyq = zzfljVar.readBytes();
                    break;
                case 18:
                    int zzb = zzflv.zzb(zzfljVar, 18);
                    int length = this.zzpys == null ? 0 : this.zzpys.length;
                    byte[][] bArr = new byte[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzpys, 0, bArr, 0, length);
                    }
                    while (length < bArr.length - 1) {
                        bArr[length] = zzfljVar.readBytes();
                        zzfljVar.zzcxx();
                        length++;
                    }
                    bArr[length] = zzfljVar.readBytes();
                    this.zzpys = bArr;
                    break;
                case 24:
                    this.zzpyt = zzfljVar.zzcyd();
                    break;
                case 34:
                    this.zzpyr = zzfljVar.readString();
                    break;
                default:
                    if (super.zza(zzfljVar, zzcxx)) {
                        break;
                    } else {
                        break;
                    }
            }
        }
        return this;
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final void zza(zzflk zzflkVar) throws IOException {
        if (!Arrays.equals(this.zzpyq, zzflv.zzpwe)) {
            zzflkVar.zzc(1, this.zzpyq);
        }
        if (this.zzpys != null && this.zzpys.length > 0) {
            for (int i = 0; i < this.zzpys.length; i++) {
                byte[] bArr = this.zzpys[i];
                if (bArr != null) {
                    zzflkVar.zzc(2, bArr);
                }
            }
        }
        if (this.zzpyt) {
            zzflkVar.zzl(3, this.zzpyt);
        }
        if (this.zzpyr != null && !this.zzpyr.equals("")) {
            zzflkVar.zzp(4, this.zzpyr);
        }
        super.zza(zzflkVar);
    }

    @Override // com.google.android.gms.internal.zzflm
    public final /* synthetic */ zzfmq zzdck() throws CloneNotSupportedException {
        return (zzfmq) clone();
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zzdcl() throws CloneNotSupportedException {
        return (zzfmq) clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int i;
        int zzq = super.zzq();
        if (!Arrays.equals(this.zzpyq, zzflv.zzpwe)) {
            zzq += zzflk.zzd(1, this.zzpyq);
        }
        if (this.zzpys != null && this.zzpys.length > 0) {
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (i2 < this.zzpys.length) {
                byte[] bArr = this.zzpys[i2];
                if (bArr != null) {
                    i4++;
                    i = zzflk.zzbg(bArr) + i3;
                } else {
                    i = i3;
                }
                i2++;
                i3 = i;
            }
            zzq = zzq + i3 + (i4 * 1);
        }
        if (this.zzpyt) {
            zzq += zzflk.zzlw(3) + 1;
        }
        return (this.zzpyr == null || this.zzpyr.equals("")) ? zzq : zzq + zzflk.zzq(4, this.zzpyr);
    }
}
