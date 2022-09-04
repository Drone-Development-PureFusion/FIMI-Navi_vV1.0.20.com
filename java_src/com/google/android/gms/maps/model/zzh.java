package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
@Hide
/* loaded from: classes2.dex */
public final class zzh implements Parcelable.Creator<MarkerOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MarkerOptions createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f3 = 0.0f;
        float f4 = 0.5f;
        float f5 = 0.0f;
        float f6 = 1.0f;
        float f7 = 0.0f;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    latLng = (LatLng) zzbgm.zza(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 4:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 5:
                    iBinder = zzbgm.zzr(parcel, readInt);
                    break;
                case 6:
                    f = zzbgm.zzl(parcel, readInt);
                    break;
                case 7:
                    f2 = zzbgm.zzl(parcel, readInt);
                    break;
                case 8:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 9:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 10:
                    z3 = zzbgm.zzc(parcel, readInt);
                    break;
                case 11:
                    f3 = zzbgm.zzl(parcel, readInt);
                    break;
                case 12:
                    f4 = zzbgm.zzl(parcel, readInt);
                    break;
                case 13:
                    f5 = zzbgm.zzl(parcel, readInt);
                    break;
                case 14:
                    f6 = zzbgm.zzl(parcel, readInt);
                    break;
                case 15:
                    f7 = zzbgm.zzl(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new MarkerOptions(latLng, str, str2, iBinder, f, f2, z, z2, z3, f3, f4, f5, f6, f7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MarkerOptions[] newArray(int i) {
        return new MarkerOptions[i];
    }
}
