package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
/* loaded from: classes2.dex */
public final class zzi extends zzev implements zzg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final float getBearing() throws RemoteException {
        Parcel zza = zza(12, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final LatLngBounds getBounds() throws RemoteException {
        Parcel zza = zza(10, zzbc());
        LatLngBounds latLngBounds = (LatLngBounds) zzex.zza(zza, LatLngBounds.CREATOR);
        zza.recycle();
        return latLngBounds;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final float getHeight() throws RemoteException {
        Parcel zza = zza(8, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final String getId() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final LatLng getPosition() throws RemoteException {
        Parcel zza = zza(4, zzbc());
        LatLng latLng = (LatLng) zzex.zza(zza, LatLng.CREATOR);
        zza.recycle();
        return latLng;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final IObjectWrapper getTag() throws RemoteException {
        Parcel zza = zza(25, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final float getTransparency() throws RemoteException {
        Parcel zza = zza(18, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final float getWidth() throws RemoteException {
        Parcel zza = zza(7, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final float getZIndex() throws RemoteException {
        Parcel zza = zza(14, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final int hashCodeRemote() throws RemoteException {
        Parcel zza = zza(20, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final boolean isClickable() throws RemoteException {
        Parcel zza = zza(23, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final boolean isVisible() throws RemoteException {
        Parcel zza = zza(16, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void remove() throws RemoteException {
        zzb(1, zzbc());
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void setBearing(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(11, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void setClickable(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(22, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void setDimensions(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void setPosition(LatLng latLng) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, latLng);
        zzb(3, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void setPositionFromBounds(LatLngBounds latLngBounds) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, latLngBounds);
        zzb(9, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void setTag(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(24, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void setTransparency(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(17, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void setVisible(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(15, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void setZIndex(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(13, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void zzad(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(21, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final boolean zzb(zzg zzgVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzgVar);
        Parcel zza = zza(19, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.zzg
    public final void zzf(float f, float f2) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzbc.writeFloat(f2);
        zzb(6, zzbc);
    }
}
