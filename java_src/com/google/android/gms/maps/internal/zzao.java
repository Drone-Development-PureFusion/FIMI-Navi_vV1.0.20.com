package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.maps.model.LatLng;
/* loaded from: classes2.dex */
public abstract class zzao extends zzew implements zzan {
    public zzao() {
        attachInterface(this, "com.google.android.gms.maps.internal.IOnMapLongClickListener");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        if (i != 1) {
            return false;
        }
        onMapLongClick((LatLng) zzex.zza(parcel, LatLng.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
