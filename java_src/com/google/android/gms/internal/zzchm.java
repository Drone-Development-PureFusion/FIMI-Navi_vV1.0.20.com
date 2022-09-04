package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.location.LocationRequest;
import java.util.List;
@Hide
/* loaded from: classes2.dex */
public final class zzchm implements Parcelable.Creator<zzchl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzchl createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        List<zzcfs> list = zzchl.zzitm;
        String str = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        String str2 = null;
        LocationRequest locationRequest = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    locationRequest = (LocationRequest) zzbgm.zza(parcel, readInt, LocationRequest.CREATOR);
                    break;
                case 2:
                case 3:
                case 4:
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
                case 5:
                    list = zzbgm.zzc(parcel, readInt, zzcfs.CREATOR);
                    break;
                case 6:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 7:
                    z3 = zzbgm.zzc(parcel, readInt);
                    break;
                case 8:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 9:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 10:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzchl(locationRequest, list, str2, z3, z2, z, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzchl[] newArray(int i) {
        return new zzchl[i];
    }
}
