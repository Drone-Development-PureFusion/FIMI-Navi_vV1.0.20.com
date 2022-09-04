package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
@Hide
/* loaded from: classes2.dex */
public final class zzv implements Parcelable.Creator<VisibleRegion> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VisibleRegion createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        LatLngBounds latLngBounds = null;
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    latLng4 = (LatLng) zzbgm.zza(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    latLng3 = (LatLng) zzbgm.zza(parcel, readInt, LatLng.CREATOR);
                    break;
                case 4:
                    latLng2 = (LatLng) zzbgm.zza(parcel, readInt, LatLng.CREATOR);
                    break;
                case 5:
                    latLng = (LatLng) zzbgm.zza(parcel, readInt, LatLng.CREATOR);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) zzbgm.zza(parcel, readInt, LatLngBounds.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new VisibleRegion(latLng4, latLng3, latLng2, latLng, latLngBounds);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VisibleRegion[] newArray(int i) {
        return new VisibleRegion[i];
    }
}
