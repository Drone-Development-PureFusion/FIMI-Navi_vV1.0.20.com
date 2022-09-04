package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzfmo extends zzflm<zzfmo> implements Cloneable {
    private String[] zzpyk = zzflv.EMPTY_STRING_ARRAY;
    private String[] zzpyl = zzflv.EMPTY_STRING_ARRAY;
    private int[] zzpym = zzflv.zzpvy;
    private long[] zzpyn = zzflv.zzpvz;
    private long[] zzpyo = zzflv.zzpvz;

    public zzfmo() {
        this.zzpvl = null;
        this.zzpnr = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    /* renamed from: zzddb */
    public zzfmo clone() {
        try {
            zzfmo zzfmoVar = (zzfmo) super.clone();
            if (this.zzpyk != null && this.zzpyk.length > 0) {
                zzfmoVar.zzpyk = (String[]) this.zzpyk.clone();
            }
            if (this.zzpyl != null && this.zzpyl.length > 0) {
                zzfmoVar.zzpyl = (String[]) this.zzpyl.clone();
            }
            if (this.zzpym != null && this.zzpym.length > 0) {
                zzfmoVar.zzpym = (int[]) this.zzpym.clone();
            }
            if (this.zzpyn != null && this.zzpyn.length > 0) {
                zzfmoVar.zzpyn = (long[]) this.zzpyn.clone();
            }
            if (this.zzpyo != null && this.zzpyo.length > 0) {
                zzfmoVar.zzpyo = (long[]) this.zzpyo.clone();
            }
            return zzfmoVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfmo)) {
            return false;
        }
        zzfmo zzfmoVar = (zzfmo) obj;
        if (zzflq.equals(this.zzpyk, zzfmoVar.zzpyk) && zzflq.equals(this.zzpyl, zzfmoVar.zzpyl) && zzflq.equals(this.zzpym, zzfmoVar.zzpym) && zzflq.equals(this.zzpyn, zzfmoVar.zzpyn) && zzflq.equals(this.zzpyo, zzfmoVar.zzpyo)) {
            return (this.zzpvl == null || this.zzpvl.isEmpty()) ? zzfmoVar.zzpvl == null || zzfmoVar.zzpvl.isEmpty() : this.zzpvl.equals(zzfmoVar.zzpvl);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zzpvl == null || this.zzpvl.isEmpty()) ? 0 : this.zzpvl.hashCode()) + ((((((((((((getClass().getName().hashCode() + 527) * 31) + zzflq.hashCode(this.zzpyk)) * 31) + zzflq.hashCode(this.zzpyl)) * 31) + zzflq.hashCode(this.zzpym)) * 31) + zzflq.hashCode(this.zzpyn)) * 31) + zzflq.hashCode(this.zzpyo)) * 31);
    }

    @Override // com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zza(zzflj zzfljVar) throws IOException {
        while (true) {
            int zzcxx = zzfljVar.zzcxx();
            switch (zzcxx) {
                case 0:
                    break;
                case 10:
                    int zzb = zzflv.zzb(zzfljVar, 10);
                    int length = this.zzpyk == null ? 0 : this.zzpyk.length;
                    String[] strArr = new String[zzb + length];
                    if (length != 0) {
                        System.arraycopy(this.zzpyk, 0, strArr, 0, length);
                    }
                    while (length < strArr.length - 1) {
                        strArr[length] = zzfljVar.readString();
                        zzfljVar.zzcxx();
                        length++;
                    }
                    strArr[length] = zzfljVar.readString();
                    this.zzpyk = strArr;
                    break;
                case 18:
                    int zzb2 = zzflv.zzb(zzfljVar, 18);
                    int length2 = this.zzpyl == null ? 0 : this.zzpyl.length;
                    String[] strArr2 = new String[zzb2 + length2];
                    if (length2 != 0) {
                        System.arraycopy(this.zzpyl, 0, strArr2, 0, length2);
                    }
                    while (length2 < strArr2.length - 1) {
                        strArr2[length2] = zzfljVar.readString();
                        zzfljVar.zzcxx();
                        length2++;
                    }
                    strArr2[length2] = zzfljVar.readString();
                    this.zzpyl = strArr2;
                    break;
                case 24:
                    int zzb3 = zzflv.zzb(zzfljVar, 24);
                    int length3 = this.zzpym == null ? 0 : this.zzpym.length;
                    int[] iArr = new int[zzb3 + length3];
                    if (length3 != 0) {
                        System.arraycopy(this.zzpym, 0, iArr, 0, length3);
                    }
                    while (length3 < iArr.length - 1) {
                        iArr[length3] = zzfljVar.zzcya();
                        zzfljVar.zzcxx();
                        length3++;
                    }
                    iArr[length3] = zzfljVar.zzcya();
                    this.zzpym = iArr;
                    break;
                case 26:
                    int zzli = zzfljVar.zzli(zzfljVar.zzcym());
                    int position = zzfljVar.getPosition();
                    int i = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcya();
                        i++;
                    }
                    zzfljVar.zzmw(position);
                    int length4 = this.zzpym == null ? 0 : this.zzpym.length;
                    int[] iArr2 = new int[i + length4];
                    if (length4 != 0) {
                        System.arraycopy(this.zzpym, 0, iArr2, 0, length4);
                    }
                    while (length4 < iArr2.length) {
                        iArr2[length4] = zzfljVar.zzcya();
                        length4++;
                    }
                    this.zzpym = iArr2;
                    zzfljVar.zzlj(zzli);
                    break;
                case 32:
                    int zzb4 = zzflv.zzb(zzfljVar, 32);
                    int length5 = this.zzpyn == null ? 0 : this.zzpyn.length;
                    long[] jArr = new long[zzb4 + length5];
                    if (length5 != 0) {
                        System.arraycopy(this.zzpyn, 0, jArr, 0, length5);
                    }
                    while (length5 < jArr.length - 1) {
                        jArr[length5] = zzfljVar.zzcxz();
                        zzfljVar.zzcxx();
                        length5++;
                    }
                    jArr[length5] = zzfljVar.zzcxz();
                    this.zzpyn = jArr;
                    break;
                case 34:
                    int zzli2 = zzfljVar.zzli(zzfljVar.zzcym());
                    int position2 = zzfljVar.getPosition();
                    int i2 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcxz();
                        i2++;
                    }
                    zzfljVar.zzmw(position2);
                    int length6 = this.zzpyn == null ? 0 : this.zzpyn.length;
                    long[] jArr2 = new long[i2 + length6];
                    if (length6 != 0) {
                        System.arraycopy(this.zzpyn, 0, jArr2, 0, length6);
                    }
                    while (length6 < jArr2.length) {
                        jArr2[length6] = zzfljVar.zzcxz();
                        length6++;
                    }
                    this.zzpyn = jArr2;
                    zzfljVar.zzlj(zzli2);
                    break;
                case 40:
                    int zzb5 = zzflv.zzb(zzfljVar, 40);
                    int length7 = this.zzpyo == null ? 0 : this.zzpyo.length;
                    long[] jArr3 = new long[zzb5 + length7];
                    if (length7 != 0) {
                        System.arraycopy(this.zzpyo, 0, jArr3, 0, length7);
                    }
                    while (length7 < jArr3.length - 1) {
                        jArr3[length7] = zzfljVar.zzcxz();
                        zzfljVar.zzcxx();
                        length7++;
                    }
                    jArr3[length7] = zzfljVar.zzcxz();
                    this.zzpyo = jArr3;
                    break;
                case 42:
                    int zzli3 = zzfljVar.zzli(zzfljVar.zzcym());
                    int position3 = zzfljVar.getPosition();
                    int i3 = 0;
                    while (zzfljVar.zzcyo() > 0) {
                        zzfljVar.zzcxz();
                        i3++;
                    }
                    zzfljVar.zzmw(position3);
                    int length8 = this.zzpyo == null ? 0 : this.zzpyo.length;
                    long[] jArr4 = new long[i3 + length8];
                    if (length8 != 0) {
                        System.arraycopy(this.zzpyo, 0, jArr4, 0, length8);
                    }
                    while (length8 < jArr4.length) {
                        jArr4[length8] = zzfljVar.zzcxz();
                        length8++;
                    }
                    this.zzpyo = jArr4;
                    zzfljVar.zzlj(zzli3);
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
        if (this.zzpyk != null && this.zzpyk.length > 0) {
            for (int i = 0; i < this.zzpyk.length; i++) {
                String str = this.zzpyk[i];
                if (str != null) {
                    zzflkVar.zzp(1, str);
                }
            }
        }
        if (this.zzpyl != null && this.zzpyl.length > 0) {
            for (int i2 = 0; i2 < this.zzpyl.length; i2++) {
                String str2 = this.zzpyl[i2];
                if (str2 != null) {
                    zzflkVar.zzp(2, str2);
                }
            }
        }
        if (this.zzpym != null && this.zzpym.length > 0) {
            for (int i3 = 0; i3 < this.zzpym.length; i3++) {
                zzflkVar.zzad(3, this.zzpym[i3]);
            }
        }
        if (this.zzpyn != null && this.zzpyn.length > 0) {
            for (int i4 = 0; i4 < this.zzpyn.length; i4++) {
                zzflkVar.zzf(4, this.zzpyn[i4]);
            }
        }
        if (this.zzpyo != null && this.zzpyo.length > 0) {
            for (int i5 = 0; i5 < this.zzpyo.length; i5++) {
                zzflkVar.zzf(5, this.zzpyo[i5]);
            }
        }
        super.zza(zzflkVar);
    }

    @Override // com.google.android.gms.internal.zzflm
    public final /* synthetic */ zzfmo zzdck() throws CloneNotSupportedException {
        return (zzfmo) clone();
    }

    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final /* synthetic */ zzfls zzdcl() throws CloneNotSupportedException {
        return (zzfmo) clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzflm, com.google.android.gms.internal.zzfls
    public final int zzq() {
        int i;
        int zzq = super.zzq();
        if (this.zzpyk == null || this.zzpyk.length <= 0) {
            i = zzq;
        } else {
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < this.zzpyk.length; i4++) {
                String str = this.zzpyk[i4];
                if (str != null) {
                    i3++;
                    i2 += zzflk.zztx(str);
                }
            }
            i = zzq + i2 + (i3 * 1);
        }
        if (this.zzpyl != null && this.zzpyl.length > 0) {
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < this.zzpyl.length; i7++) {
                String str2 = this.zzpyl[i7];
                if (str2 != null) {
                    i6++;
                    i5 += zzflk.zztx(str2);
                }
            }
            i = i + i5 + (i6 * 1);
        }
        if (this.zzpym != null && this.zzpym.length > 0) {
            int i8 = 0;
            for (int i9 = 0; i9 < this.zzpym.length; i9++) {
                i8 += zzflk.zzlx(this.zzpym[i9]);
            }
            i = i + i8 + (this.zzpym.length * 1);
        }
        if (this.zzpyn != null && this.zzpyn.length > 0) {
            int i10 = 0;
            for (int i11 = 0; i11 < this.zzpyn.length; i11++) {
                i10 += zzflk.zzdj(this.zzpyn[i11]);
            }
            i = i + i10 + (this.zzpyn.length * 1);
        }
        if (this.zzpyo == null || this.zzpyo.length <= 0) {
            return i;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.zzpyo.length; i13++) {
            i12 += zzflk.zzdj(this.zzpyo[i13]);
        }
        return i + i12 + (this.zzpyo.length * 1);
    }
}
