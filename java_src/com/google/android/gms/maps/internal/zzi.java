package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzex;
/* loaded from: classes2.dex */
public abstract class zzi extends zzew implements zzh {
    public zzi() {
        attachInterface(this, "com.google.android.gms.maps.internal.IInfoWindowAdapter");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                IObjectWrapper zzh = zzh(com.google.android.gms.maps.model.internal.zzq.zzbm(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzex.zza(parcel2, zzh);
                return true;
            case 2:
                IObjectWrapper zzi = zzi(com.google.android.gms.maps.model.internal.zzq.zzbm(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzex.zza(parcel2, zzi);
                return true;
            default:
                return false;
        }
    }
}
