package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzf extends zzev implements zzd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ICircleDelegate");
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final LatLng getCenter() throws RemoteException {
        Parcel zza = zza(4, zzbc());
        LatLng latLng = (LatLng) zzex.zza(zza, LatLng.CREATOR);
        zza.recycle();
        return latLng;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final int getFillColor() throws RemoteException {
        Parcel zza = zza(12, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final String getId() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final double getRadius() throws RemoteException {
        Parcel zza = zza(6, zzbc());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final int getStrokeColor() throws RemoteException {
        Parcel zza = zza(10, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final List<PatternItem> getStrokePattern() throws RemoteException {
        Parcel zza = zza(22, zzbc());
        ArrayList createTypedArrayList = zza.createTypedArrayList(PatternItem.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final float getStrokeWidth() throws RemoteException {
        Parcel zza = zza(8, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final IObjectWrapper getTag() throws RemoteException {
        Parcel zza = zza(24, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final float getZIndex() throws RemoteException {
        Parcel zza = zza(14, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final int hashCodeRemote() throws RemoteException {
        Parcel zza = zza(18, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final boolean isClickable() throws RemoteException {
        Parcel zza = zza(20, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final boolean isVisible() throws RemoteException {
        Parcel zza = zza(16, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void remove() throws RemoteException {
        zzb(1, zzbc());
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void setCenter(LatLng latLng) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, latLng);
        zzb(3, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void setClickable(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(19, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void setFillColor(int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzb(11, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void setRadius(double d) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeDouble(d);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void setStrokeColor(int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzb(9, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void setStrokePattern(List<PatternItem> list) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeTypedList(list);
        zzb(21, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void setStrokeWidth(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(7, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void setTag(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(23, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void setVisible(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(15, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final void setZIndex(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(13, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.zzd
    public final boolean zzb(zzd zzdVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzdVar);
        Parcel zza = zza(17, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }
}
