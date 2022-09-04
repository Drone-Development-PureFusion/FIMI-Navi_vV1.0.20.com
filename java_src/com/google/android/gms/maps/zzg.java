package com.google.android.gms.maps;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.Marker;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzg extends com.google.android.gms.maps.internal.zzi {
    private /* synthetic */ GoogleMap.InfoWindowAdapter zzizz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(GoogleMap googleMap, GoogleMap.InfoWindowAdapter infoWindowAdapter) {
        this.zzizz = infoWindowAdapter;
    }

    @Override // com.google.android.gms.maps.internal.zzh
    public final IObjectWrapper zzh(com.google.android.gms.maps.model.internal.zzp zzpVar) {
        return com.google.android.gms.dynamic.zzn.zzz(this.zzizz.getInfoWindow(new Marker(zzpVar)));
    }

    @Override // com.google.android.gms.maps.internal.zzh
    public final IObjectWrapper zzi(com.google.android.gms.maps.model.internal.zzp zzpVar) {
        return com.google.android.gms.dynamic.zzn.zzz(this.zzizz.getInfoContents(new Marker(zzpVar)));
    }
}
