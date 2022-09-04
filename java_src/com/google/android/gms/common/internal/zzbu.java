package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzbgm;
@Hide
/* loaded from: classes2.dex */
public final class zzbu implements Parcelable.Creator<zzbt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbt createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        boolean z = false;
        boolean z2 = false;
        ConnectionResult connectionResult = null;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    iBinder = zzbgm.zzr(parcel, readInt);
                    break;
                case 3:
                    connectionResult = (ConnectionResult) zzbgm.zza(parcel, readInt, ConnectionResult.CREATOR);
                    break;
                case 4:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 5:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbt(i, iBinder, connectionResult, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbt[] newArray(int i) {
        return new zzbt[i];
    }
}
