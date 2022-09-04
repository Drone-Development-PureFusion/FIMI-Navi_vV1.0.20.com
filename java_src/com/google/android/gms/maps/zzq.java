package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzbg;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
/* loaded from: classes2.dex */
final class zzq extends zzbg {
    private /* synthetic */ GoogleMap.OnPolylineClickListener zzjaj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(GoogleMap googleMap, GoogleMap.OnPolylineClickListener onPolylineClickListener) {
        this.zzjaj = onPolylineClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbf
    public final void zza(IPolylineDelegate iPolylineDelegate) {
        this.zzjaj.onPolylineClick(new Polyline(iPolylineDelegate));
    }
}
