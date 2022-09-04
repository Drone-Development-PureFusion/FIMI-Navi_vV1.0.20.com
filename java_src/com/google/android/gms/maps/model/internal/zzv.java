package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
import com.google.android.gms.maps.model.Cap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzv extends zzev implements IPolylineDelegate {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IPolylineDelegate");
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final boolean equalsRemote(IPolylineDelegate iPolylineDelegate) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iPolylineDelegate);
        Parcel zza = zza(15, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final int getColor() throws RemoteException {
        Parcel zza = zza(8, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final Cap getEndCap() throws RemoteException {
        Parcel zza = zza(22, zzbc());
        Cap cap = (Cap) zzex.zza(zza, Cap.CREATOR);
        zza.recycle();
        return cap;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final String getId() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final int getJointType() throws RemoteException {
        Parcel zza = zza(24, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final List<PatternItem> getPattern() throws RemoteException {
        Parcel zza = zza(26, zzbc());
        ArrayList createTypedArrayList = zza.createTypedArrayList(PatternItem.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final List<LatLng> getPoints() throws RemoteException {
        Parcel zza = zza(4, zzbc());
        ArrayList createTypedArrayList = zza.createTypedArrayList(LatLng.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final Cap getStartCap() throws RemoteException {
        Parcel zza = zza(20, zzbc());
        Cap cap = (Cap) zzex.zza(zza, Cap.CREATOR);
        zza.recycle();
        return cap;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final IObjectWrapper getTag() throws RemoteException {
        Parcel zza = zza(28, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final float getWidth() throws RemoteException {
        Parcel zza = zza(6, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final float getZIndex() throws RemoteException {
        Parcel zza = zza(10, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final int hashCodeRemote() throws RemoteException {
        Parcel zza = zza(16, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final boolean isClickable() throws RemoteException {
        Parcel zza = zza(18, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final boolean isGeodesic() throws RemoteException {
        Parcel zza = zza(14, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final boolean isVisible() throws RemoteException {
        Parcel zza = zza(12, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void remove() throws RemoteException {
        zzb(1, zzbc());
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setClickable(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(17, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setColor(int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzb(7, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setEndCap(Cap cap) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, cap);
        zzb(21, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setGeodesic(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(13, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setJointType(int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzb(23, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setPattern(List<PatternItem> list) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeTypedList(list);
        zzb(25, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setPoints(List<LatLng> list) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeTypedList(list);
        zzb(3, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setStartCap(Cap cap) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, cap);
        zzb(19, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setTag(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzb(27, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setVisible(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(11, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setWidth(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.maps.model.internal.IPolylineDelegate
    public final void setZIndex(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(9, zzbc);
    }
}
