package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public abstract class zzbfq extends zzew implements zzbfp {
    public zzbfq() {
        attachInterface(this, "com.google.android.gms.clearcut.internal.IClearcutLoggerCallbacks");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzo((Status) zzex.zza(parcel, Status.CREATOR));
                break;
            case 2:
                zzp((Status) zzex.zza(parcel, Status.CREATOR));
                break;
            case 3:
                zza((Status) zzex.zza(parcel, Status.CREATOR), parcel.readLong());
                break;
            case 4:
                zzq((Status) zzex.zza(parcel, Status.CREATOR));
                break;
            case 5:
                zzb((Status) zzex.zza(parcel, Status.CREATOR), parcel.readLong());
                break;
            case 6:
                zza((Status) zzex.zza(parcel, Status.CREATOR), (com.google.android.gms.clearcut.zze[]) parcel.createTypedArray(com.google.android.gms.clearcut.zze.CREATOR));
                break;
            case 7:
                zza((DataHolder) zzex.zza(parcel, DataHolder.CREATOR));
                break;
            case 8:
                zza((Status) zzex.zza(parcel, Status.CREATOR), (com.google.android.gms.clearcut.zzc) zzex.zza(parcel, com.google.android.gms.clearcut.zzc.CREATOR));
                break;
            case 9:
                zzb((Status) zzex.zza(parcel, Status.CREATOR), (com.google.android.gms.clearcut.zzc) zzex.zza(parcel, com.google.android.gms.clearcut.zzc.CREATOR));
                break;
            default:
                return false;
        }
        return true;
    }
}
