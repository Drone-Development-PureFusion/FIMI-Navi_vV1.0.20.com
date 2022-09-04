package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
import java.util.ArrayList;
@Hide
/* loaded from: classes2.dex */
public final class zzag implements Parcelable.Creator<LocationSettingsRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsRequest createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        zzae zzaeVar = null;
        boolean z = false;
        boolean z2 = false;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    arrayList = zzbgm.zzc(parcel, readInt, LocationRequest.CREATOR);
                    break;
                case 2:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 3:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 4:
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
                case 5:
                    zzaeVar = (zzae) zzbgm.zza(parcel, readInt, zzae.CREATOR);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new LocationSettingsRequest(arrayList, z2, z, zzaeVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsRequest[] newArray(int i) {
        return new LocationSettingsRequest[i];
    }
}
