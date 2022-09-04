package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.common.api.internal.zzcl;
import com.google.android.gms.location.LocationListener;
/* loaded from: classes2.dex */
final class zzchg implements zzcl<LocationListener> {
    private /* synthetic */ Location zziuj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzchg(zzchf zzchfVar, Location location) {
        this.zziuj = location;
    }

    @Override // com.google.android.gms.common.api.internal.zzcl
    public final void zzajh() {
    }

    @Override // com.google.android.gms.common.api.internal.zzcl
    public final /* synthetic */ void zzu(LocationListener locationListener) {
        locationListener.onLocationChanged(this.zziuj);
    }
}
