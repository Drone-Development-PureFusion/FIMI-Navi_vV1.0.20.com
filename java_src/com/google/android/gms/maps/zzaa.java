package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
@Hide
/* loaded from: classes2.dex */
public final class zzaa implements Parcelable.Creator<GoogleMapOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        byte b = -1;
        byte b2 = -1;
        int i = 0;
        CameraPosition cameraPosition = null;
        byte b3 = -1;
        byte b4 = -1;
        byte b5 = -1;
        byte b6 = -1;
        byte b7 = -1;
        byte b8 = -1;
        byte b9 = -1;
        byte b10 = -1;
        byte b11 = -1;
        Float f = null;
        Float f2 = null;
        LatLngBounds latLngBounds = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    b = zzbgm.zze(parcel, readInt);
                    break;
                case 3:
                    b2 = zzbgm.zze(parcel, readInt);
                    break;
                case 4:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) zzbgm.zza(parcel, readInt, CameraPosition.CREATOR);
                    break;
                case 6:
                    b3 = zzbgm.zze(parcel, readInt);
                    break;
                case 7:
                    b4 = zzbgm.zze(parcel, readInt);
                    break;
                case 8:
                    b5 = zzbgm.zze(parcel, readInt);
                    break;
                case 9:
                    b6 = zzbgm.zze(parcel, readInt);
                    break;
                case 10:
                    b7 = zzbgm.zze(parcel, readInt);
                    break;
                case 11:
                    b8 = zzbgm.zze(parcel, readInt);
                    break;
                case 12:
                    b9 = zzbgm.zze(parcel, readInt);
                    break;
                case 13:
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
                case 14:
                    b10 = zzbgm.zze(parcel, readInt);
                    break;
                case 15:
                    b11 = zzbgm.zze(parcel, readInt);
                    break;
                case 16:
                    f = zzbgm.zzm(parcel, readInt);
                    break;
                case 17:
                    f2 = zzbgm.zzm(parcel, readInt);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) zzbgm.zza(parcel, readInt, LatLngBounds.CREATOR);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new GoogleMapOptions(b, b2, i, cameraPosition, b3, b4, b5, b6, b7, b8, b9, b10, b11, f, f2, latLngBounds);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions[] newArray(int i) {
        return new GoogleMapOptions[i];
    }
}
