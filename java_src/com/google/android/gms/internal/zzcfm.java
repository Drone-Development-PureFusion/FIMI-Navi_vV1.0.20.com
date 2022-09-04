package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
final class zzcfm extends zzcfp {
    private /* synthetic */ PendingIntent zzith;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcfm(zzcfk zzcfkVar, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.zzith = pendingIntent;
    }

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzchh zzchhVar) throws RemoteException {
        zzchhVar.zzc(this.zzith);
        setResult((zzcfm) Status.zzftq);
    }
}
