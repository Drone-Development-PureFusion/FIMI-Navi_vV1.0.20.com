package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import java.util.Collections;
/* loaded from: classes2.dex */
public final class zzaz implements zzbh {
    private final zzbi zzfxd;

    public zzaz(zzbi zzbiVar) {
        this.zzfxd = zzbiVar;
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void begin() {
        for (Api.zze zzeVar : this.zzfxd.zzfyj.values()) {
            zzeVar.disconnect();
        }
        this.zzfxd.zzfvq.zzfyk = Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void connect() {
        this.zzfxd.zzajv();
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final boolean disconnect() {
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void onConnectionSuspended(int i) {
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final <A extends Api.zzb, R extends Result, T extends zzm<R, A>> T zzd(T t) {
        this.zzfxd.zzfvq.zzfwo.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final <A extends Api.zzb, T extends zzm<? extends Result, A>> T zze(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
