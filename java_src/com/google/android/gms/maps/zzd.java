package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.Marker;
/* loaded from: classes2.dex */
final class zzd extends com.google.android.gms.maps.internal.zzac {
    private /* synthetic */ GoogleMap.OnInfoWindowClickListener zzizw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(GoogleMap googleMap, GoogleMap.OnInfoWindowClickListener onInfoWindowClickListener) {
        this.zzizw = onInfoWindowClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzab
    public final void zze(com.google.android.gms.maps.model.internal.zzp zzpVar) {
        this.zzizw.onInfoWindowClick(new Marker(zzpVar));
    }
}
