package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
@Hide
/* loaded from: classes2.dex */
public final class zzd implements Parcelable.Creator<GroundOverlayOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        IBinder iBinder = null;
        LatLng latLng = null;
        float f = 0.0f;
        float f2 = 0.0f;
        LatLngBounds latLngBounds = null;
        float f3 = 0.0f;
        float f4 = 0.0f;
        boolean z = false;
        float f5 = 0.0f;
        float f6 = 0.0f;
        float f7 = 0.0f;
        boolean z2 = false;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    iBinder = zzbgm.zzr(parcel, readInt);
                    break;
                case 3:
                    latLng = (LatLng) zzbgm.zza(parcel, readInt, LatLng.CREATOR);
                    break;
                case 4:
                    f = zzbgm.zzl(parcel, readInt);
                    break;
                case 5:
                    f2 = zzbgm.zzl(parcel, readInt);
                    break;
                case 6:
                    latLngBounds = (LatLngBounds) zzbgm.zza(parcel, readInt, LatLngBounds.CREATOR);
                    break;
                case 7:
                    f3 = zzbgm.zzl(parcel, readInt);
                    break;
                case 8:
                    f4 = zzbgm.zzl(parcel, readInt);
                    break;
                case 9:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 10:
                    f5 = zzbgm.zzl(parcel, readInt);
                    break;
                case 11:
                    f6 = zzbgm.zzl(parcel, readInt);
                    break;
                case 12:
                    f7 = zzbgm.zzl(parcel, readInt);
                    break;
                case 13:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new GroundOverlayOptions(iBinder, latLng, f, f2, latLngBounds, f3, f4, z, f5, f6, f7, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GroundOverlayOptions[] newArray(int i) {
        return new GroundOverlayOptions[i];
    }
}
