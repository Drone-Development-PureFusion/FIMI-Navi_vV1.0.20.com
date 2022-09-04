package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzau;
import com.google.android.gms.maps.model.Marker;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzc extends zzau {
    private /* synthetic */ GoogleMap.OnMarkerDragListener zzizv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(GoogleMap googleMap, GoogleMap.OnMarkerDragListener onMarkerDragListener) {
        this.zzizv = onMarkerDragListener;
    }

    @Override // com.google.android.gms.maps.internal.zzat
    public final void zzb(com.google.android.gms.maps.model.internal.zzp zzpVar) {
        this.zzizv.onMarkerDragStart(new Marker(zzpVar));
    }

    @Override // com.google.android.gms.maps.internal.zzat
    public final void zzc(com.google.android.gms.maps.model.internal.zzp zzpVar) {
        this.zzizv.onMarkerDragEnd(new Marker(zzpVar));
    }

    @Override // com.google.android.gms.maps.internal.zzat
    public final void zzd(com.google.android.gms.maps.model.internal.zzp zzpVar) {
        this.zzizv.onMarkerDrag(new Marker(zzpVar));
    }
}
