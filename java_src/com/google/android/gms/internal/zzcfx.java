package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public final class zzcfx implements Parcelable.Creator<zzcfw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcfw createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        int i = 1;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        zzcfu zzcfuVar = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    zzcfuVar = (zzcfu) zzbgm.zza(parcel, readInt, zzcfu.CREATOR);
                    break;
                case 3:
                    iBinder2 = zzbgm.zzr(parcel, readInt);
                    break;
                case 4:
                    iBinder = zzbgm.zzr(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzcfw(i, zzcfuVar, iBinder2, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcfw[] newArray(int i) {
        return new zzcfw[i];
    }
}
