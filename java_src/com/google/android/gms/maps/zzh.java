package com.google.android.gms.maps;

import android.location.Location;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzay;
/* loaded from: classes2.dex */
final class zzh extends zzay {
    private /* synthetic */ GoogleMap.OnMyLocationChangeListener zzjaa;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(GoogleMap googleMap, GoogleMap.OnMyLocationChangeListener onMyLocationChangeListener) {
        this.zzjaa = onMyLocationChangeListener;
    }

    @Override // com.google.android.gms.maps.internal.zzax
    public final void zzz(IObjectWrapper iObjectWrapper) {
        this.zzjaa.onMyLocationChange((Location) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper));
    }
}
