package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.zzcm;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
/* loaded from: classes2.dex */
final class zzcfz extends zzcgj {
    private /* synthetic */ LocationRequest zzitt;
    private /* synthetic */ LocationListener zzitu;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcfz(zzcfy zzcfyVar, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener) {
        super(googleApiClient);
        this.zzitt = locationRequest;
        this.zzitu = locationListener;
    }

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzchh zzchhVar) throws RemoteException {
        zzchhVar.zza(this.zzitt, zzcm.zzb(this.zzitu, zzchz.zzaxp(), LocationListener.class.getSimpleName()), new zzcgk(this));
    }
}
