package com.google.android.gms.internal;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzfgz extends zzfgy {
    protected final byte[] zzjwl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfgz(byte[] bArr) {
        this.zzjwl = bArr;
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzfgs) && size() == ((zzfgs) obj).size()) {
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof zzfgz)) {
                return obj.equals(this);
            }
            int zzcxt = zzcxt();
            int zzcxt2 = ((zzfgz) obj).zzcxt();
            if (zzcxt != 0 && zzcxt2 != 0 && zzcxt != zzcxt2) {
                return false;
            }
            return zza((zzfgz) obj, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.zzfgs
    public int size() {
        return this.zzjwl.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.zzfgs
    public final void zza(zzfgr zzfgrVar) throws IOException {
        zzfgrVar.zze(this.zzjwl, zzcxu(), size());
    }

    @Override // com.google.android.gms.internal.zzfgy
    final boolean zza(zzfgs zzfgsVar, int i, int i2) {
        if (i2 > zzfgsVar.size()) {
            throw new IllegalArgumentException(new StringBuilder(40).append("Length too large: ").append(i2).append(size()).toString());
        } else if (i + i2 > zzfgsVar.size()) {
            throw new IllegalArgumentException(new StringBuilder(59).append("Ran off end of other: ").append(i).append(", ").append(i2).append(", ").append(zzfgsVar.size()).toString());
        } else if (!(zzfgsVar instanceof zzfgz)) {
            return zzfgsVar.zzaa(i, i + i2).equals(zzaa(0, i2));
        } else {
            zzfgz zzfgzVar = (zzfgz) zzfgsVar;
            byte[] bArr = this.zzjwl;
            byte[] bArr2 = zzfgzVar.zzjwl;
            int zzcxu = zzcxu() + i2;
            int zzcxu2 = zzcxu();
            int zzcxu3 = zzfgzVar.zzcxu() + i;
            while (zzcxu2 < zzcxu) {
                if (bArr[zzcxu2] != bArr2[zzcxu3]) {
                    return false;
                }
                zzcxu2++;
                zzcxu3++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final zzfgs zzaa(int i, int i2) {
        int zzh = zzh(i, i2, size());
        return zzh == 0 ? zzfgs.zzpnw : new zzfgv(this.zzjwl, zzcxu() + i, zzh);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfgs
    public void zzb(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzjwl, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.zzfgs
    public final zzfhb zzcxq() {
        return zzfhb.zzb(this.zzjwl, zzcxu(), size(), true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int zzcxu() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzfgs
    public final int zzg(int i, int i2, int i3) {
        return zzfhz.zza(i, this.zzjwl, zzcxu() + i2, i3);
    }

    @Override // com.google.android.gms.internal.zzfgs
    public byte zzld(int i) {
        return this.zzjwl[i];
    }
}
