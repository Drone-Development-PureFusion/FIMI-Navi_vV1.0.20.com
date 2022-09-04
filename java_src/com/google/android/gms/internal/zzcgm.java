package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public final class zzcgm implements Parcelable.Creator<zzcgl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcgl createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        Status status = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    status = (Status) zzbgm.zza(parcel, readInt, Status.CREATOR);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzcgl(status);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcgl[] newArray(int i) {
        return new zzcgl[i];
    }
}
