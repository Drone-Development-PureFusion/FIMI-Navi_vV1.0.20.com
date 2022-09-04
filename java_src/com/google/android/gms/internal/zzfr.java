package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class zzfr extends zzev implements zzfp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    }

    @Override // com.google.android.gms.internal.zzfp
    public final String getId() throws RemoteException {
        Parcel zza = zza(1, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.zzfp
    public final boolean zzb(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, true);
        Parcel zza = zza(2, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzfp
    public final boolean zzbn() throws RemoteException {
        Parcel zza = zza(6, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }
}
