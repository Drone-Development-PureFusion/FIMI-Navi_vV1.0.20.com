package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.common.time.Clock;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
@Hide
/* loaded from: classes2.dex */
public final class zzk implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        boolean z = true;
        long j = 50;
        float f = 0.0f;
        long j2 = Clock.MAX_TIME;
        int i = Integer.MAX_VALUE;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 2:
                    j = zzbgm.zzi(parcel, readInt);
                    break;
                case 3:
                    f = zzbgm.zzl(parcel, readInt);
                    break;
                case 4:
                    j2 = zzbgm.zzi(parcel, readInt);
                    break;
                case 5:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzj(z, j, f, j2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj[] newArray(int i) {
        return new zzj[i];
    }
}
