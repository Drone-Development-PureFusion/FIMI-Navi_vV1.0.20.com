package com.google.android.gms.maps.internal;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzew;
import com.google.android.gms.internal.zzex;
/* loaded from: classes2.dex */
public abstract class zzbt extends zzew implements zzbs {
    public zzbt() {
        attachInterface(this, "com.google.android.gms.maps.internal.ISnapshotReadyCallback");
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                onSnapshotReady((Bitmap) zzex.zza(parcel, Bitmap.CREATOR));
                break;
            case 2:
                zzaa(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
