package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@KeepForSdk
/* loaded from: classes2.dex */
public class ExperimentTokens extends zzbgl {
    @KeepForSdk
    public static final Parcelable.Creator<ExperimentTokens> CREATOR = new zzh();
    private static byte[][] zzfpb = new byte[0];
    private static ExperimentTokens zzkfz = new ExperimentTokens("", null, zzfpb, zzfpb, zzfpb, zzfpb, null, null);
    private static final zza zzkgi = new zzd();
    private static final zza zzkgj = new zze();
    private static final zza zzkgk = new zzf();
    private static final zza zzkgl = new zzg();
    private String zzkga;
    private byte[] zzkgb;
    private byte[][] zzkgc;
    private byte[][] zzkgd;
    private byte[][] zzkge;
    private byte[][] zzkgf;
    private int[] zzkgg;
    private byte[][] zzkgh;

    /* loaded from: classes2.dex */
    interface zza {
    }

    public ExperimentTokens(String str, byte[] bArr, byte[][] bArr2, byte[][] bArr3, byte[][] bArr4, byte[][] bArr5, int[] iArr, byte[][] bArr6) {
        this.zzkga = str;
        this.zzkgb = bArr;
        this.zzkgc = bArr2;
        this.zzkgd = bArr3;
        this.zzkge = bArr4;
        this.zzkgf = bArr5;
        this.zzkgg = iArr;
        this.zzkgh = bArr6;
    }

    private static void zza(StringBuilder sb, String str, int[] iArr) {
        sb.append(str);
        sb.append("=");
        if (iArr == null) {
            sb.append("null");
            return;
        }
        boolean z = true;
        sb.append("(");
        int length = iArr.length;
        int i = 0;
        while (i < length) {
            int i2 = iArr[i];
            if (!z) {
                sb.append(", ");
            }
            sb.append(i2);
            i++;
            z = false;
        }
        sb.append(")");
    }

    private static void zza(StringBuilder sb, String str, byte[][] bArr) {
        sb.append(str);
        sb.append("=");
        if (bArr == null) {
            sb.append("null");
            return;
        }
        boolean z = true;
        sb.append("(");
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            byte[] bArr2 = bArr[i];
            if (!z) {
                sb.append(", ");
            }
            sb.append("'");
            sb.append(Base64.encodeToString(bArr2, 3));
            sb.append("'");
            i++;
            z = false;
        }
        sb.append(")");
    }

    private static List<String> zzb(byte[][] bArr) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte[] bArr2 : bArr) {
            arrayList.add(Base64.encodeToString(bArr2, 3));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static List<Integer> zzd(int[] iArr) {
        if (iArr == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ExperimentTokens) {
            ExperimentTokens experimentTokens = (ExperimentTokens) obj;
            return zzn.equals(this.zzkga, experimentTokens.zzkga) && Arrays.equals(this.zzkgb, experimentTokens.zzkgb) && zzn.equals(zzb(this.zzkgc), zzb(experimentTokens.zzkgc)) && zzn.equals(zzb(this.zzkgd), zzb(experimentTokens.zzkgd)) && zzn.equals(zzb(this.zzkge), zzb(experimentTokens.zzkge)) && zzn.equals(zzb(this.zzkgf), zzb(experimentTokens.zzkgf)) && zzn.equals(zzd(this.zzkgg), zzd(experimentTokens.zzkgg)) && zzn.equals(zzb(this.zzkgh), zzb(experimentTokens.zzkgh));
        }
        return false;
    }

    public String toString() {
        String sb;
        StringBuilder sb2 = new StringBuilder("ExperimentTokens");
        sb2.append("(");
        if (this.zzkga == null) {
            sb = "null";
        } else {
            String str = this.zzkga;
            sb = new StringBuilder(String.valueOf(str).length() + 2).append("'").append(str).append("'").toString();
        }
        sb2.append(sb);
        sb2.append(", ");
        byte[] bArr = this.zzkgb;
        sb2.append("direct");
        sb2.append("=");
        if (bArr == null) {
            sb2.append("null");
        } else {
            sb2.append("'");
            sb2.append(Base64.encodeToString(bArr, 3));
            sb2.append("'");
        }
        sb2.append(", ");
        zza(sb2, "GAIA", this.zzkgc);
        sb2.append(", ");
        zza(sb2, "PSEUDO", this.zzkgd);
        sb2.append(", ");
        zza(sb2, "ALWAYS", this.zzkge);
        sb2.append(", ");
        zza(sb2, "OTHER", this.zzkgf);
        sb2.append(", ");
        zza(sb2, "weak", this.zzkgg);
        sb2.append(", ");
        zza(sb2, "directs", this.zzkgh);
        sb2.append(")");
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, this.zzkga, false);
        zzbgo.zza(parcel, 3, this.zzkgb, false);
        zzbgo.zza(parcel, 4, this.zzkgc, false);
        zzbgo.zza(parcel, 5, this.zzkgd, false);
        zzbgo.zza(parcel, 6, this.zzkge, false);
        zzbgo.zza(parcel, 7, this.zzkgf, false);
        zzbgo.zza(parcel, 8, this.zzkgg, false);
        zzbgo.zza(parcel, 9, this.zzkgh, false);
        zzbgo.zzai(parcel, zze);
    }
}
