package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.zzcm;
import com.google.android.gms.location.LocationCallback;
/* loaded from: classes2.dex */
final class zzcga extends zzcgj {
    private /* synthetic */ LocationCallback zzitv;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcga(zzcfy zzcfyVar, GoogleApiClient googleApiClient, LocationCallback locationCallback) {
        super(googleApiClient);
        this.zzitv = locationCallback;
    }

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzchh zzchhVar) throws RemoteException {
        zzchhVar.zzb(zzcm.zzb(this.zzitv, LocationCallback.class.getSimpleName()), new zzcgk(this));
    }
}
