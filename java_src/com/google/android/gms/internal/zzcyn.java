package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public final class zzcyn implements Parcelable.Creator<zzcym> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcym createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        Intent intent = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 3:
                    intent = (Intent) zzbgm.zza(parcel, readInt, Intent.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzcym(i2, i, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcym[] newArray(int i) {
        return new zzcym[i];
    }
}
