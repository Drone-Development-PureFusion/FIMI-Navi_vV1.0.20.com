package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.common.time.Clock;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
@Hide
/* loaded from: classes2.dex */
public final class zzab implements Parcelable.Creator<LocationRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        int i = 102;
        long j = 3600000;
        long j2 = 600000;
        boolean z = false;
        long j3 = Clock.MAX_TIME;
        int i2 = Integer.MAX_VALUE;
        float f = 0.0f;
        long j4 = 0;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    j = zzbgm.zzi(parcel, readInt);
                    break;
                case 3:
                    j2 = zzbgm.zzi(parcel, readInt);
                    break;
                case 4:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 5:
                    j3 = zzbgm.zzi(parcel, readInt);
                    break;
                case 6:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 7:
                    f = zzbgm.zzl(parcel, readInt);
                    break;
                case 8:
                    j4 = zzbgm.zzi(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new LocationRequest(i, j, j2, z, j3, i2, f, j4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest[] newArray(int i) {
        return new LocationRequest[i];
    }
}
