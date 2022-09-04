package com.google.android.gms.maps;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.IndoorBuilding;
/* loaded from: classes2.dex */
final class zza extends com.google.android.gms.maps.internal.zzaa {
    private /* synthetic */ GoogleMap.OnIndoorStateChangeListener zzizt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(GoogleMap googleMap, GoogleMap.OnIndoorStateChangeListener onIndoorStateChangeListener) {
        this.zzizt = onIndoorStateChangeListener;
    }

    @Override // com.google.android.gms.maps.internal.zzz
    public final void onIndoorBuildingFocused() {
        this.zzizt.onIndoorBuildingFocused();
    }

    @Override // com.google.android.gms.maps.internal.zzz
    public final void zza(com.google.android.gms.maps.model.internal.zzj zzjVar) {
        this.zzizt.onIndoorLevelActivated(new IndoorBuilding(zzjVar));
    }
}
