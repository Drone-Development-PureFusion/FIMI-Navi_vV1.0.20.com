package com.google.android.gms.maps;

import com.google.android.gms.maps.StreetViewPanorama;
import com.google.android.gms.maps.internal.zzbk;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
/* loaded from: classes2.dex */
final class zzad extends zzbk {
    private /* synthetic */ StreetViewPanorama.OnStreetViewPanoramaChangeListener zzjbx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad(StreetViewPanorama streetViewPanorama, StreetViewPanorama.OnStreetViewPanoramaChangeListener onStreetViewPanoramaChangeListener) {
        this.zzjbx = onStreetViewPanoramaChangeListener;
    }

    @Override // com.google.android.gms.maps.internal.zzbj
    public final void onStreetViewPanoramaChange(StreetViewPanoramaLocation streetViewPanoramaLocation) {
        this.zzjbx.onStreetViewPanoramaChange(streetViewPanoramaLocation);
    }
}
