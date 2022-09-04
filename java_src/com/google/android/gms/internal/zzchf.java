package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.common.api.internal.zzci;
import com.google.android.gms.location.LocationListener;
/* loaded from: classes2.dex */
final class zzchf extends com.google.android.gms.location.zzy {
    private final zzci<LocationListener> zzgbb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzchf(zzci<LocationListener> zzciVar) {
        this.zzgbb = zzciVar;
    }

    @Override // com.google.android.gms.location.zzx
    public final synchronized void onLocationChanged(Location location) {
        this.zzgbb.zza(new zzchg(this, location));
    }

    public final synchronized void release() {
        this.zzgbb.clear();
    }
}
