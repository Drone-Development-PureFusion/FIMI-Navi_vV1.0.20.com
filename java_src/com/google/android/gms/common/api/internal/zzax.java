package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzcyj;
import java.util.concurrent.locks.Lock;
/* loaded from: classes2.dex */
final class zzax implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private /* synthetic */ zzao zzfxt;

    private zzax(zzao zzaoVar) {
        this.zzfxt = zzaoVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzax(zzao zzaoVar, zzap zzapVar) {
        this(zzaoVar);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzcyj zzcyjVar;
        zzcyjVar = this.zzfxt.zzfxl;
        zzcyjVar.zza(new zzav(this.zzfxt));
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        boolean zzd;
        lock = this.zzfxt.zzfwa;
        lock.lock();
        try {
            zzd = this.zzfxt.zzd(connectionResult);
            if (zzd) {
                this.zzfxt.zzajn();
                this.zzfxt.zzajl();
            } else {
                this.zzfxt.zze(connectionResult);
            }
        } finally {
            lock2 = this.zzfxt.zzfwa;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
