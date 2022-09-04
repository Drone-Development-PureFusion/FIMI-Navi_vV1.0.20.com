package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.maps.model.Tile;
/* loaded from: classes2.dex */
public final class zzab extends zzev implements zzz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzab(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    }

    @Override // com.google.android.gms.maps.model.internal.zzz
    public final Tile getTile(int i, int i2, int i3) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzbc.writeInt(i2);
        zzbc.writeInt(i3);
        Parcel zza = zza(1, zzbc);
        Tile tile = (Tile) zzex.zza(zza, Tile.CREATOR);
        zza.recycle();
        return tile;
    }
}
