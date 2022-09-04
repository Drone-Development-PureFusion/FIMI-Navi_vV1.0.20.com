package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class zzcgt extends zzev implements zzcgr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcgt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.zzcgr
    public final void zza(zzcgl zzcglVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzcglVar);
        zzc(1, zzbc);
    }
}
