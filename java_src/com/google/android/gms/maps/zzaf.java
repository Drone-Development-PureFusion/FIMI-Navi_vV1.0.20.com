package com.google.android.gms.maps;

import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.internal.zzbm;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
/* loaded from: classes2.dex */
final class zzaf extends zzbm {
    private /* synthetic */ StreetViewPanorama.OnStreetViewPanoramaClickListener zzjbz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaf(StreetViewPanorama streetViewPanorama, StreetViewPanorama.OnStreetViewPanoramaClickListener onStreetViewPanoramaClickListener) {
        this.zzjbz = onStreetViewPanoramaClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbl
    public final void onStreetViewPanoramaClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
        this.zzjbz.onStreetViewPanoramaClick(streetViewPanoramaOrientation);
    }
}
