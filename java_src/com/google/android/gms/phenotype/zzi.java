package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes2.dex */
public final class zzi extends zzbgl implements Comparable<zzi> {
    public static final Parcelable.Creator<zzi> CREATOR = new zzk();
    private static Comparator<zzi> zzkgq = new zzj();
    public final String name;
    private String zzgim;
    private boolean zzili;
    private double zzilk;
    private long zzkgm;
    private byte[] zzkgn;
    private int zzkgo;
    public final int zzkgp;

    public zzi(String str, long j, boolean z, double d, String str2, byte[] bArr, int i, int i2) {
        this.name = str;
        this.zzkgm = j;
        this.zzili = z;
        this.zzilk = d;
        this.zzgim = str2;
        this.zzkgn = bArr;
        this.zzkgo = i;
        this.zzkgp = i2;
    }

    private static int compare(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzi zziVar) {
        zzi zziVar2 = zziVar;
        int compareTo = this.name.compareTo(zziVar2.name);
        if (compareTo != 0) {
            return compareTo;
        }
        int compare = compare(this.zzkgo, zziVar2.zzkgo);
        if (compare != 0) {
            return compare;
        }
        switch (this.zzkgo) {
            case 1:
                long j = this.zzkgm;
                long j2 = zziVar2.zzkgm;
                if (j < j2) {
                    return -1;
                }
                return j != j2 ? 1 : 0;
            case 2:
                boolean z = this.zzili;
                if (z == zziVar2.zzili) {
                    return 0;
                }
                return z ? 1 : -1;
            case 3:
                return Double.compare(this.zzilk, zziVar2.zzilk);
            case 4:
                String str = this.zzgim;
                String str2 = zziVar2.zzgim;
                if (str == str2) {
                    return 0;
                }
                if (str == null) {
                    return -1;
                }
                if (str2 != null) {
                    return str.compareTo(str2);
                }
                return 1;
            case 5:
                if (this.zzkgn == zziVar2.zzkgn) {
                    return 0;
                }
                if (this.zzkgn == null) {
                    return -1;
                }
                if (zziVar2.zzkgn == null) {
                    return 1;
                }
                for (int i = 0; i < Math.min(this.zzkgn.length, zziVar2.zzkgn.length); i++) {
                    int i2 = this.zzkgn[i] - zziVar2.zzkgn[i];
                    if (i2 != 0) {
                        return i2;
                    }
                }
                return compare(this.zzkgn.length, zziVar2.zzkgn.length);
            default:
                throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.zzkgo).toString());
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzi) {
            zzi zziVar = (zzi) obj;
            if (!zzn.equals(this.name, zziVar.name) || this.zzkgo != zziVar.zzkgo || this.zzkgp != zziVar.zzkgp) {
                return false;
            }
            switch (this.zzkgo) {
                case 1:
                    return this.zzkgm == zziVar.zzkgm;
                case 2:
                    return this.zzili == zziVar.zzili;
                case 3:
                    return this.zzilk == zziVar.zzilk;
                case 4:
                    return zzn.equals(this.zzgim, zziVar.zzgim);
                case 5:
                    return Arrays.equals(this.zzkgn, zziVar.zzkgn);
                default:
                    throw new AssertionError(new StringBuilder(31).append("Invalid enum value: ").append(this.zzkgo).toString());
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Flag(");
        sb.append(this.name);
        sb.append(", ");
        switch (this.zzkgo) {
            case 1:
                sb.append(this.zzkgm);
                break;
            case 2:
                sb.append(this.zzili);
                break;
            case 3:
                sb.append(this.zzilk);
                break;
            case 4:
                sb.append("'");
                sb.append(this.zzgim);
                sb.append("'");
                break;
            case 5:
                if (this.zzkgn != null) {
                    sb.append("'");
                    sb.append(Base64.encodeToString(this.zzkgn, 3));
                    sb.append("'");
                    break;
                } else {
                    sb.append("null");
                    break;
                }
            default:
                String str = this.name;
                throw new AssertionError(new StringBuilder(String.valueOf(str).length() + 27).append("Invalid type: ").append(str).append(", ").append(this.zzkgo).toString());
        }
        sb.append(", ");
        sb.append(this.zzkgo);
        sb.append(", ");
        sb.append(this.zzkgp);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, this.name, false);
        zzbgo.zza(parcel, 3, this.zzkgm);
        zzbgo.zza(parcel, 4, this.zzili);
        zzbgo.zza(parcel, 5, this.zzilk);
        zzbgo.zza(parcel, 6, this.zzgim, false);
        zzbgo.zza(parcel, 7, this.zzkgn, false);
        zzbgo.zzc(parcel, 8, this.zzkgo);
        zzbgo.zzc(parcel, 9, this.zzkgp);
        zzbgo.zzai(parcel, zze);
    }
}
