package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbr;
@Hide
/* loaded from: classes2.dex */
public final class zzcyv implements Parcelable.Creator<zzcyu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcyu createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        int i = 0;
        zzbr zzbrVar = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    zzbrVar = (zzbr) zzbgm.zza(parcel, readInt, zzbr.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzcyu(i, zzbrVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcyu[] newArray(int i) {
        return new zzcyu[i];
    }
}
