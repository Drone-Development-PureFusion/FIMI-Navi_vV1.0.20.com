package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
/* loaded from: classes2.dex */
final class zzx extends com.google.android.gms.maps.internal.zzo {
    private /* synthetic */ GoogleMap.OnCameraIdleListener zzjaq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(GoogleMap googleMap, GoogleMap.OnCameraIdleListener onCameraIdleListener) {
        this.zzjaq = onCameraIdleListener;
    }

    @Override // com.google.android.gms.maps.internal.zzn
    public final void onCameraIdle() {
        this.zzjaq.onCameraIdle();
    }
}
