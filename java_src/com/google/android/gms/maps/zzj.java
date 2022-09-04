package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.internal.zzba;
/* loaded from: classes2.dex */
final class zzj extends zzba {
    private /* synthetic */ GoogleMap.OnMyLocationClickListener zzjac;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(GoogleMap googleMap, GoogleMap.OnMyLocationClickListener onMyLocationClickListener) {
        this.zzjac = onMyLocationClickListener;
    }

    @Override // com.google.android.gms.maps.internal.zzaz
    public final void onMyLocationClick(@NonNull Location location) throws RemoteException {
        this.zzjac.onMyLocationClick(location);
    }
}
