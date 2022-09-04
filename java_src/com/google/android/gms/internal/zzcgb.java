package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
final class zzcgb extends zzcgj {
    private /* synthetic */ boolean zzitw;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcgb(zzcfy zzcfyVar, GoogleApiClient googleApiClient, boolean z) {
        super(googleApiClient);
        this.zzitw = z;
    }

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzchh zzchhVar) throws RemoteException {
        zzchhVar.zzbo(this.zzitw);
        setResult((zzcgb) Status.zzftq);
    }
}
