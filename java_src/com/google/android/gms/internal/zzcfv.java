package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.util.ArrayList;
@Hide
/* loaded from: classes2.dex */
public final class zzcfv implements Parcelable.Creator<zzcfu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcfu createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        com.google.android.gms.location.zzj zzjVar = zzcfu.zzitn;
        ArrayList arrayList = zzcfu.zzitm;
        String str = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    zzjVar = (com.google.android.gms.location.zzj) zzbgm.zza(parcel, readInt, com.google.android.gms.location.zzj.CREATOR);
                    break;
                case 2:
                    arrayList = zzbgm.zzc(parcel, readInt, zzcfs.CREATOR);
                    break;
                case 3:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzcfu(zzjVar, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcfu[] newArray(int i) {
        return new zzcfu[i];
    }
}
