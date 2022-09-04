package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.CameraPosition;
/* loaded from: classes2.dex */
final class zzt extends com.google.android.gms.maps.internal.zzm {
    private /* synthetic */ GoogleMap.OnCameraChangeListener zzjam;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(GoogleMap googleMap, GoogleMap.OnCameraChangeListener onCameraChangeListener) {
        this.zzjam = onCameraChangeListener;
    }

    @Override // com.google.android.gms.maps.internal.zzl
    public final void onCameraChange(CameraPosition cameraPosition) {
        this.zzjam.onCameraChange(cameraPosition);
    }
}
