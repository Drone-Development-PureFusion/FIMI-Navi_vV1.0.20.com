package com.google.android.gms.maps;

import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.internal.zzbi;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
/* loaded from: classes2.dex */
final class zzae extends zzbi {
    private /* synthetic */ StreetViewPanorama.OnStreetViewPanoramaCameraChangeListener zzjby;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzae(StreetViewPanorama streetViewPanorama, StreetViewPanorama.OnStreetViewPanoramaCameraChangeListener onStreetViewPanoramaCameraChangeListener) {
        this.zzjby = onStreetViewPanoramaCameraChangeListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbh
    public final void onStreetViewPanoramaCameraChange(StreetViewPanoramaCamera streetViewPanoramaCamera) {
        this.zzjby.onStreetViewPanoramaCameraChange(streetViewPanoramaCamera);
    }
}
