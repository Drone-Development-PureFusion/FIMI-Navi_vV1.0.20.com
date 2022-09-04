package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.zzz;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzs implements TileProvider {
    private final zzz zzjes;
    private /* synthetic */ TileOverlayOptions zzjet;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(TileOverlayOptions tileOverlayOptions) {
        zzz zzzVar;
        this.zzjet = tileOverlayOptions;
        zzzVar = this.zzjet.zzjep;
        this.zzjes = zzzVar;
    }

    @Override // com.google.android.gms.maps.model.TileProvider
    public final Tile getTile(int i, int i2, int i3) {
        try {
            return this.zzjes.getTile(i, i2, i3);
        } catch (RemoteException e) {
            return null;
        }
    }
}
