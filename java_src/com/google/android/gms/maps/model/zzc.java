package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
import java.util.ArrayList;
@Hide
/* loaded from: classes2.dex */
public final class zzc implements Parcelable.Creator<CircleOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        double d = 0.0d;
        ArrayList arrayList = null;
        boolean z = false;
        boolean z2 = false;
        float f = 0.0f;
        int i = 0;
        int i2 = 0;
        float f2 = 0.0f;
        LatLng latLng = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    latLng = (LatLng) zzbgm.zza(parcel, readInt, LatLng.CREATOR);
                    break;
                case 3:
                    d = zzbgm.zzn(parcel, readInt);
                    break;
                case 4:
                    f2 = zzbgm.zzl(parcel, readInt);
                    break;
                case 5:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 6:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 7:
                    f = zzbgm.zzl(parcel, readInt);
                    break;
                case 8:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 9:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 10:
                    arrayList = zzbgm.zzc(parcel, readInt, PatternItem.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new CircleOptions(latLng, d, f2, i2, i, f, z2, z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CircleOptions[] newArray(int i) {
        return new CircleOptions[i];
    }
}
