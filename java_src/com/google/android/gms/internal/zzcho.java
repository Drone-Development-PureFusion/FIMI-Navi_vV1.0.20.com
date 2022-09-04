package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public final class zzcho implements Parcelable.Creator<zzchn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzchn createFromParcel(Parcel parcel) {
        int zzd = zzbgm.zzd(parcel);
        int i = 1;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        PendingIntent pendingIntent = null;
        IBinder iBinder3 = null;
        zzchl zzchlVar = null;
        while (parcel.dataPosition() < zzd) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = zzbgm.zzg(parcel, readInt);
                    break;
                case 2:
                    zzchlVar = (zzchl) zzbgm.zza(parcel, readInt, zzchl.CREATOR);
                    break;
                case 3:
                    iBinder3 = zzbgm.zzr(parcel, readInt);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) zzbgm.zza(parcel, readInt, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinder2 = zzbgm.zzr(parcel, readInt);
                    break;
                case 6:
                    iBinder = zzbgm.zzr(parcel, readInt);
                    break;
                default:
                    zzbgm.zzb(parcel, readInt);
                    break;
            }
        }
        zzbgm.zzaf(parcel, zzd);
        return new zzchn(i, zzchlVar, iBinder3, pendingIntent, iBinder2, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzchn[] newArray(int i) {
        return new zzchn[i];
    }
}
