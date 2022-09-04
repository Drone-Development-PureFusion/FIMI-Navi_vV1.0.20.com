package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
@Hide
/* loaded from: classes2.dex */
public final class zzae extends zzbgl {
    public static final Parcelable.Creator<zzae> CREATOR = new zzaf();
    private final String zzfaz;
    private final String zzisn;
    private final String zziso;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Hide
    public zzae(String str, String str2, String str3) {
        this.zzfaz = str;
        this.zzisn = str2;
        this.zziso = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 1, this.zzisn, false);
        zzbgo.zza(parcel, 2, this.zziso, false);
        zzbgo.zza(parcel, 5, this.zzfaz, false);
        zzbgo.zzai(parcel, zze);
    }
}
