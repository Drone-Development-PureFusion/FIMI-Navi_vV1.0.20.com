package com.google.android.gms.maps.model;

import com.google.android.gms.maps.model.internal.zzaa;
/* loaded from: classes2.dex */
final class zzt extends zzaa {
    private /* synthetic */ TileProvider zzjeu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(TileOverlayOptions tileOverlayOptions, TileProvider tileProvider) {
        this.zzjeu = tileProvider;
    }

    @Override // com.google.android.gms.maps.model.internal.zzz
    public final Tile getTile(int i, int i2, int i3) {
        return this.zzjeu.getTile(i, i2, i3);
    }
}
