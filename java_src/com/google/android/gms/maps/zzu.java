package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
/* loaded from: classes2.dex */
final class zzu extends com.google.android.gms.maps.internal.zzu {
    private /* synthetic */ GoogleMap.OnCameraMoveStartedListener zzjan;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(GoogleMap googleMap, GoogleMap.OnCameraMoveStartedListener onCameraMoveStartedListener) {
        this.zzjan = onCameraMoveStartedListener;
    }

    @Override // com.google.android.gms.maps.internal.zzt
    public final void onCameraMoveStarted(int i) {
        this.zzjan.onCameraMoveStarted(i);
    }
}
