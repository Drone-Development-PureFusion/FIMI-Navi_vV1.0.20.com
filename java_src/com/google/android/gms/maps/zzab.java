package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.zzaq;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzab extends zzaq {
    private /* synthetic */ OnMapReadyCallback zzjbm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzab(MapFragment.zza zzaVar, OnMapReadyCallback onMapReadyCallback) {
        this.zzjbm = onMapReadyCallback;
    }

    @Override // com.google.android.gms.maps.internal.zzap
    public final void zza(IGoogleMapDelegate iGoogleMapDelegate) throws RemoteException {
        this.zzjbm.onMapReady(new GoogleMap(iGoogleMapDelegate));
    }
}
