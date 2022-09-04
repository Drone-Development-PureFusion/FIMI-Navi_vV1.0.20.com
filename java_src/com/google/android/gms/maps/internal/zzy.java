package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzew;
/* loaded from: classes2.dex */
public abstract class zzy extends zzew implements zzx {
    public zzy() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnGroundOverlayClickListener");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        zza(com.google.android.gms.maps.model.internal.zzh.zzbj(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
