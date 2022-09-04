package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.Marker;
/* loaded from: classes2.dex */
final class zze extends com.google.android.gms.maps.internal.zzag {
    private /* synthetic */ GoogleMap.OnInfoWindowLongClickListener zzizx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(GoogleMap googleMap, GoogleMap.OnInfoWindowLongClickListener onInfoWindowLongClickListener) {
        this.zzizx = onInfoWindowLongClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzaf
    public final void zzf(com.google.android.gms.maps.model.internal.zzp zzpVar) {
        this.zzizx.onInfoWindowLongClick(new Marker(zzpVar));
    }
}
