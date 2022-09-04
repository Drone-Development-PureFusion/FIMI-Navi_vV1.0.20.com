package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
/* loaded from: classes2.dex */
final class zzv extends com.google.android.gms.maps.internal.zzs {
    private /* synthetic */ GoogleMap.OnCameraMoveListener zzjao;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(GoogleMap googleMap, GoogleMap.OnCameraMoveListener onCameraMoveListener) {
        this.zzjao = onCameraMoveListener;
    }

    @Override // com.google.android.gms.maps.internal.zzr
    public final void onCameraMove() {
        this.zzjao.onCameraMove();
    }
}
