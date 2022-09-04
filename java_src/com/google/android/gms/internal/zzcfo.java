package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
final class zzcfo extends zzcfp {
    private /* synthetic */ PendingIntent zzhmu;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcfo(zzcfk zzcfkVar, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.zzhmu = pendingIntent;
    }

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzchh zzchhVar) throws RemoteException {
        zzchhVar.zza(this.zzhmu, this);
    }
}
