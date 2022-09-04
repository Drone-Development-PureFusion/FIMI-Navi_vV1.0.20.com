package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.GroundOverlay;
/* loaded from: classes2.dex */
final class zzn extends com.google.android.gms.maps.internal.zzy {
    private /* synthetic */ GoogleMap.OnGroundOverlayClickListener zzjag;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(GoogleMap googleMap, GoogleMap.OnGroundOverlayClickListener onGroundOverlayClickListener) {
        this.zzjag = onGroundOverlayClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzx
    public final void zza(com.google.android.gms.maps.model.internal.zzg zzgVar) {
        this.zzjag.onGroundOverlayClick(new GroundOverlay(zzgVar));
    }
}
