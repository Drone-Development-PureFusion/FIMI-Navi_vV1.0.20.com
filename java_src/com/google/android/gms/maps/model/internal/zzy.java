package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
/* loaded from: classes2.dex */
public final class zzy extends zzev implements zzw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final void clearTileCache() throws RemoteException {
        zzb(2, zzbc());
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final boolean getFadeIn() throws RemoteException {
        Parcel zza = zza(11, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final String getId() throws RemoteException {
        Parcel zza = zza(3, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final float getTransparency() throws RemoteException {
        Parcel zza = zza(13, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final float getZIndex() throws RemoteException {
        Parcel zza = zza(5, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final int hashCodeRemote() throws RemoteException {
        Parcel zza = zza(9, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final boolean isVisible() throws RemoteException {
        Parcel zza = zza(7, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final void remove() throws RemoteException {
        zzb(1, zzbc());
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final void setFadeIn(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(10, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final void setTransparency(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(12, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final void setVisible(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(6, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final void setZIndex(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(4, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzw
    public final boolean zza(zzw zzwVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzwVar);
        Parcel zza = zza(8, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }
}
