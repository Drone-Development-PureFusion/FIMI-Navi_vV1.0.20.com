package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
/* loaded from: classes2.dex */
public final class zzc extends zzev implements zza {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    }

    @Override // com.google.android.gms.maps.model.internal.zza
    public final IObjectWrapper zzaxx() throws RemoteException {
        Parcel zza = zza(4, zzbc());
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.maps.model.internal.zza
    public final IObjectWrapper zzd(Bitmap bitmap) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, bitmap);
        Parcel zza = zza(6, zzbc);
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.maps.model.internal.zza
    public final IObjectWrapper zze(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        Parcel zza = zza(5, zzbc);
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.maps.model.internal.zza
    public final IObjectWrapper zzeo(int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        Parcel zza = zza(1, zzbc);
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.maps.model.internal.zza
    public final IObjectWrapper zziu(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        Parcel zza = zza(2, zzbc);
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.maps.model.internal.zza
    public final IObjectWrapper zziv(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        Parcel zza = zza(3, zzbc);
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }

    @Override // com.google.android.gms.maps.model.internal.zza
    public final IObjectWrapper zziw(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        Parcel zza = zza(7, zzbc);
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }
}
