package com.google.android.gms.internal;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
final class zzcgc extends zzcgj {
    private /* synthetic */ Location zzitx;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcgc(zzcfy zzcfyVar, GoogleApiClient googleApiClient, Location location) {
        super(googleApiClient);
        this.zzitx = location;
    }

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzchh zzchhVar) throws RemoteException {
        zzchhVar.zzc(this.zzitx);
        setResult((zzcgc) Status.zzftq);
    }
}
