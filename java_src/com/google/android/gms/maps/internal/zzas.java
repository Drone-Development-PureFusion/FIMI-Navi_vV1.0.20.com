package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzex;
/* loaded from: classes2.dex */
public abstract class zzas extends zzew implements zzar {
    public zzas() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnMarkerClickListener");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        boolean zza = zza(com.google.android.gms.maps.model.internal.zzq.zzbm(parcel.readStrongBinder()));
        parcel2.writeNoException();
        zzex.zza(parcel2, zza);
        return true;
    }
}
