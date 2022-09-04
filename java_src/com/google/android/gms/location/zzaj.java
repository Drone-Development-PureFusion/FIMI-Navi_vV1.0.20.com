package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
@Hide
/* loaded from: classes2.dex */
public final class zzaj extends zzbgl {
    public static final Parcelable.Creator<zzaj> CREATOR = new zzak();
    private int zzitb;
    private int zzitc;
    private long zzitd;
    private long zzite;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaj(int i, int i2, long j, long j2) {
        this.zzitb = i;
        this.zzitc = i2;
        this.zzitd = j;
        this.zzite = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzaj zzajVar = (zzaj) obj;
        return this.zzitb == zzajVar.zzitb && this.zzitc == zzajVar.zzitc && this.zzitd == zzajVar.zzitd && this.zzite == zzajVar.zzite;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzitc), Integer.valueOf(this.zzitb), Long.valueOf(this.zzite), Long.valueOf(this.zzitd)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NetworkLocationStatus:");
        sb.append(" Wifi status: ").append(this.zzitb).append(" Cell status: ").append(this.zzitc).append(" elapsed time NS: ").append(this.zzite).append(" system time ms: ").append(this.zzitd);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.zzitb);
        zzbgo.zzc(parcel, 2, this.zzitc);
        zzbgo.zza(parcel, 3, this.zzitd);
        zzbgo.zza(parcel, 4, this.zzite);
        zzbgo.zzai(parcel, zze);
    }
}
