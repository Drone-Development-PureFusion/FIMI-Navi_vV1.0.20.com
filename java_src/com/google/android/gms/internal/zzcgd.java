package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
final class zzcgd extends zzcgj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcgd(zzcfy zzcfyVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzchh zzchhVar) throws RemoteException {
        zzchhVar.zza((zzcgr) new zzcgk(this));
    }
}
