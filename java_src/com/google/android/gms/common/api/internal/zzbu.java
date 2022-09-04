package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbu implements zzcy, com.google.android.gms.common.internal.zzj {
    private final zzh<?> zzfsn;
    private final Api.zze zzfwd;
    final /* synthetic */ zzbm zzfzq;
    private com.google.android.gms.common.internal.zzan zzfxp = null;
    private Set<Scope> zzenh = null;
    private boolean zzgad = false;

    public zzbu(zzbm zzbmVar, Api.zze zzeVar, zzh<?> zzhVar) {
        this.zzfzq = zzbmVar;
        this.zzfwd = zzeVar;
        this.zzfsn = zzhVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzakp() {
        if (!this.zzgad || this.zzfxp == null) {
            return;
        }
        this.zzfwd.zza(this.zzfxp, this.zzenh);
    }

    @Override // com.google.android.gms.common.api.internal.zzcy
    @WorkerThread
    public final void zzb(com.google.android.gms.common.internal.zzan zzanVar, Set<Scope> set) {
        if (zzanVar == null || set == null) {
            Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
            zzh(new ConnectionResult(4));
            return;
        }
        this.zzfxp = zzanVar;
        this.zzenh = set;
        zzakp();
    }

    @Override // com.google.android.gms.common.internal.zzj
    public final void zzf(@NonNull ConnectionResult connectionResult) {
        Handler handler;
        handler = this.zzfzq.mHandler;
        handler.post(new zzbv(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.zzcy
    @WorkerThread
    public final void zzh(ConnectionResult connectionResult) {
        Map map;
        map = this.zzfzq.zzfwg;
        ((zzbo) map.get(this.zzfsn)).zzh(connectionResult);
    }
}
