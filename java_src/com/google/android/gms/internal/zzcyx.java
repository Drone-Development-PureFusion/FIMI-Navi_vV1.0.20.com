package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbt;
@Hide
/* loaded from: classes2.dex */
public final class zzcyx implements Parcelable.Creator<zzcyw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcyw createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        int i = 0;
        zzbt zzbtVar = null;
        ConnectionResult connectionResult = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    connectionResult = (ConnectionResult) zzbgm.zza(parcel, readInt, ConnectionResult.CREATOR);
                    break;
                case 3:
                    zzbtVar = (zzbt) zzbgm.zza(parcel, readInt, zzbt.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzcyw(i, connectionResult, zzbtVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcyw[] newArray(int i) {
        return new zzcyw[i];
    }
}
