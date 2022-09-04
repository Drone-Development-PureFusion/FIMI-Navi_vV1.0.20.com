package com.google.android.gms.maps;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.maps.LocationSource;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* loaded from: classes2.dex */
final class zzm implements LocationSource.OnLocationChangedListener {
    private /* synthetic */ com.google.android.gms.maps.internal.zzah zzjaf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(zzl zzlVar, com.google.android.gms.maps.internal.zzah zzahVar) {
        this.zzjaf = zzahVar;
    }

    @Override // com.google.android.gms.maps.LocationSource.OnLocationChangedListener
    public final void onLocationChanged(Location location) {
        try {
            this.zzjaf.zzd(location);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
