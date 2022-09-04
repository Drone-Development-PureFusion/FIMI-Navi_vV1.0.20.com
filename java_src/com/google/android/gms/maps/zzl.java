package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.ILocationSourceDelegate;
/* loaded from: classes2.dex */
final class zzl extends ILocationSourceDelegate.zza {
    private /* synthetic */ LocationSource zzjae;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(GoogleMap googleMap, LocationSource locationSource) {
        this.zzjae = locationSource;
    }

    @Override // com.google.android.gms.maps.internal.ILocationSourceDelegate
    public final void activate(com.google.android.gms.maps.internal.zzah zzahVar) {
        this.zzjae.activate(new zzm(this, zzahVar));
    }

    @Override // com.google.android.gms.maps.internal.ILocationSourceDelegate
    public final void deactivate() {
        this.zzjae.deactivate();
    }
}
