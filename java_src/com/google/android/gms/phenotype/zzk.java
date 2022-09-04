package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgm;
@Hide
/* loaded from: classes2.dex */
public final class zzk implements Parcelable.Creator<zzi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        long j = 0;
        double d = 0.0d;
        int i = 0;
        int i2 = 0;
        byte[] bArr = null;
        String str = null;
        boolean z = false;
        String str2 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 3:
                    j = zzbgm.zzi(parcel, readInt);
                    break;
                case 4:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 5:
                    d = zzbgm.zzn(parcel, readInt);
                    break;
                case 6:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 7:
                    bArr = zzbgm.zzt(parcel, readInt);
                    break;
                case 8:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 9:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzi(str2, j, z, d, str, bArr, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi[] newArray(int i) {
        return new zzi[i];
    }
}
