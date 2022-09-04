package com.google.android.gms.internal;

import com.google.android.gms.common.api.internal.zzcl;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
/* loaded from: classes2.dex */
final class zzchc implements zzcl<LocationCallback> {
    private /* synthetic */ LocationResult zziuh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzchc(zzchb zzchbVar, LocationResult locationResult) {
        this.zziuh = locationResult;
    }

    @Override // com.google.android.gms.common.api.internal.zzcl
    public final void zzajh() {
    }

    @Override // com.google.android.gms.common.api.internal.zzcl
    public final /* synthetic */ void zzu(LocationCallback locationCallback) {
        locationCallback.onLocationResult(this.zziuh);
    }
}
