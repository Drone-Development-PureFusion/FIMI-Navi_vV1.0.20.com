package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public final class zzbfw implements Parcelable.Creator<zzbfv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbfv createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        boolean z = true;
        int i = 0;
        boolean z2 = false;
        String str = null;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        int i3 = 0;
        String str4 = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 2:
                    str4 = zzbgm.zzq(parcel, readInt);
                    break;
                case 3:
                    i3 = zzbgm.zzg(parcel, readInt);
                    break;
                case 4:
                    i2 = zzbgm.zzg(parcel, readInt);
                    break;
                case 5:
                    str3 = zzbgm.zzq(parcel, readInt);
                    break;
                case 6:
                    str2 = zzbgm.zzq(parcel, readInt);
                    break;
                case 7:
                    z = zzbgm.zzc(parcel, readInt);
                    break;
                case 8:
                    str = zzbgm.zzq(parcel, readInt);
                    break;
                case 9:
                    z2 = zzbgm.zzc(parcel, readInt);
                    break;
                case 10:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzbfv(str4, i3, i2, str3, str2, z, str, z2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbfv[] newArray(int i) {
        return new zzbfv[i];
    }
}
