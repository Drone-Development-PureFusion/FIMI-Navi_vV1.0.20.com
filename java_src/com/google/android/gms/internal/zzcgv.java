package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public abstract class zzcgv extends zzew implements zzcgu {
    public zzcgv() {
        attachInterface(this, "com.google.android.gms.location.internal.IGeofencerCallbacks");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zza(parcel.readInt(), parcel.createStringArray());
                break;
            case 2:
                zzb(parcel.readInt(), parcel.createStringArray());
                break;
            case 3:
                zza(parcel.readInt(), (PendingIntent) zzex.zza(parcel, PendingIntent.CREATOR));
                break;
            default:
                return false;
        }
        return true;
    }
}
