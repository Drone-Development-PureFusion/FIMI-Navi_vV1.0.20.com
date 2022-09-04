package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbg;
import com.google.android.gms.internal.zzbfv;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import com.google.android.gms.internal.zzfmr;
import com.google.android.gms.phenotype.ExperimentTokens;
import java.util.Arrays;
@Hide
/* loaded from: classes2.dex */
public final class zze extends zzbgl {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();
    public final ClearcutLogger.zzb zzfpm;
    private boolean zzfps;
    public final zzfmr zzfpt;
    public zzbfv zzfpz;
    public byte[] zzfqa;
    private int[] zzfqb;
    private String[] zzfqc;
    private int[] zzfqd;
    private byte[][] zzfqe;
    private ExperimentTokens[] zzfqf;
    public final ClearcutLogger.zzb zzfqg;

    public zze(zzbfv zzbfvVar, zzfmr zzfmrVar, ClearcutLogger.zzb zzbVar, ClearcutLogger.zzb zzbVar2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, ExperimentTokens[] experimentTokensArr, boolean z) {
        this.zzfpz = zzbfvVar;
        this.zzfpt = zzfmrVar;
        this.zzfpm = zzbVar;
        this.zzfqg = null;
        this.zzfqb = iArr;
        this.zzfqc = null;
        this.zzfqd = iArr2;
        this.zzfqe = null;
        this.zzfqf = null;
        this.zzfps = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(zzbfv zzbfvVar, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z, ExperimentTokens[] experimentTokensArr) {
        this.zzfpz = zzbfvVar;
        this.zzfqa = bArr;
        this.zzfqb = iArr;
        this.zzfqc = strArr;
        this.zzfpt = null;
        this.zzfpm = null;
        this.zzfqg = null;
        this.zzfqd = iArr2;
        this.zzfqe = bArr2;
        this.zzfqf = experimentTokensArr;
        this.zzfps = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zze)) {
            return false;
        }
        zze zzeVar = (zze) obj;
        return zzbg.equal(this.zzfpz, zzeVar.zzfpz) && Arrays.equals(this.zzfqa, zzeVar.zzfqa) && Arrays.equals(this.zzfqb, zzeVar.zzfqb) && Arrays.equals(this.zzfqc, zzeVar.zzfqc) && zzbg.equal(this.zzfpt, zzeVar.zzfpt) && zzbg.equal(this.zzfpm, zzeVar.zzfpm) && zzbg.equal(this.zzfqg, zzeVar.zzfqg) && Arrays.equals(this.zzfqd, zzeVar.zzfqd) && Arrays.deepEquals(this.zzfqe, zzeVar.zzfqe) && Arrays.equals(this.zzfqf, zzeVar.zzfqf) && this.zzfps == zzeVar.zzfps;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzfpz, this.zzfqa, this.zzfqb, this.zzfqc, this.zzfpt, this.zzfpm, this.zzfqg, this.zzfqd, this.zzfqe, this.zzfqf, Boolean.valueOf(this.zzfps)});
    }

    public final String toString() {
        return "LogEventParcelable[" + this.zzfpz + ", LogEventBytes: " + (this.zzfqa == null ? null : new String(this.zzfqa)) + ", TestCodes: " + Arrays.toString(this.zzfqb) + ", MendelPackages: " + Arrays.toString(this.zzfqc) + ", LogEvent: " + this.zzfpt + ", ExtensionProducer: " + this.zzfpm + ", VeProducer: " + this.zzfqg + ", ExperimentIDs: " + Arrays.toString(this.zzfqd) + ", ExperimentTokens: " + Arrays.toString(this.zzfqe) + ", ExperimentTokensParcelables: " + Arrays.toString(this.zzfqf) + ", AddPhenotypeExperimentTokens: " + this.zzfps + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, (Parcelable) this.zzfpz, i, false);
        zzbgo.zza(parcel, 3, this.zzfqa, false);
        zzbgo.zza(parcel, 4, this.zzfqb, false);
        zzbgo.zza(parcel, 5, this.zzfqc, false);
        zzbgo.zza(parcel, 6, this.zzfqd, false);
        zzbgo.zza(parcel, 7, this.zzfqe, false);
        zzbgo.zza(parcel, 8, this.zzfps);
        zzbgo.zza(parcel, 9, (Parcelable[]) this.zzfqf, i, false);
        zzbgo.zzai(parcel, zze);
    }
}
