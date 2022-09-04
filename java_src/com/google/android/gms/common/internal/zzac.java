package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.GoogleApiClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzac implements zzf {
    private /* synthetic */ GoogleApiClient.ConnectionCallbacks zzggj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zzggj = connectionCallbacks;
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final void onConnected(@Nullable Bundle bundle) {
        this.zzggj.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final void onConnectionSuspended(int i) {
        this.zzggj.onConnectionSuspended(i);
    }
}
