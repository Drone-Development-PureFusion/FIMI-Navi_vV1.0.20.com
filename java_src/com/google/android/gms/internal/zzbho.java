package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public final class zzbho implements Parcelable.Creator<zzbhm> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhm createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 3:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbhm(i2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbhm[] newArray(int i) {
        return new zzbhm[i];
    }
}
