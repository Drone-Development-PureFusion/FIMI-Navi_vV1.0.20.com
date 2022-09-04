package com.google.android.gms.maps;

import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.internal.zzbo;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
/* loaded from: classes2.dex */
final class zzag extends zzbo {
    private /* synthetic */ StreetViewPanorama.OnStreetViewPanoramaLongClickListener zzjca;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzag(StreetViewPanorama streetViewPanorama, StreetViewPanorama.OnStreetViewPanoramaLongClickListener onStreetViewPanoramaLongClickListener) {
        this.zzjca = onStreetViewPanoramaLongClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbn
    public final void onStreetViewPanoramaLongClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
        this.zzjca.onStreetViewPanoramaLongClick(streetViewPanoramaOrientation);
    }
}
