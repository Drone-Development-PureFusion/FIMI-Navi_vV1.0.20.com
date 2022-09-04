package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public final class zzchq implements Parcelable.Creator<zzchp> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzchp createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        String str = null;
        int i = 0;
        short s = 0;
        double d = 0.0d;
        double d2 = 0.0d;
        float f = 0.0f;
        long j = 0;
        int i2 = 0;
        int i3 = -1;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 2:
                    j = zzbgm.zzi(parcel, readInt);
                    break;
                case 3:
                    s = zzbgm.zzf(parcel, readInt);
                    break;
                case 4:
                    d = zzbgm.zzn(parcel, readInt);
                    break;
                case 5:
                    d2 = zzbgm.zzn(parcel, readInt);
                    break;
                case 6:
                    f = zzbgm.zzl(parcel, readInt);
                    break;
                case 7:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 8:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 9:
                    i3 = zzbgm.zzg(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzchp(str, i, s, d, d2, f, j, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzchp[] newArray(int i) {
        return new zzchp[i];
    }
}
