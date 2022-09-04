package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
/* loaded from: classes2.dex */
public final class zzo extends zzev implements zzm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
    }

    @Override // com.google.android.gms.maps.model.internal.zzm
    public final void activate() throws RemoteException {
        zzb(3, zzbc());
    }

    @Override // com.google.android.gms.maps.model.internal.zzm
    public final String getName() throws RemoteException {
        Parcel zza = zza(1, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.maps.model.internal.zzm
    public final String getShortName() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.maps.model.internal.zzm
    public final int hashCodeRemote() throws RemoteException {
        Parcel zza = zza(5, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.zzm
    public final boolean zzb(zzm zzmVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzmVar);
        Parcel zza = zza(4, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }
}
