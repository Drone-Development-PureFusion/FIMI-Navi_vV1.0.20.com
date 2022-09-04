package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzbe;
import com.google.android.gms.maps.model.Polygon;
/* loaded from: classes2.dex */
final class zzp extends zzbe {
    private /* synthetic */ GoogleMap.OnPolygonClickListener zzjai;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(GoogleMap googleMap, GoogleMap.OnPolygonClickListener onPolygonClickListener) {
        this.zzjai = onPolygonClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbd
    public final void zza(com.google.android.gms.maps.model.internal.zzs zzsVar) {
        this.zzjai.onPolygonClick(new Polygon(zzsVar));
    }
}
