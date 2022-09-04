package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzl extends zzev implements zzj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
    }

    @Override // com.google.android.gms.maps.model.internal.zzj
    public final int getActiveLevelIndex() throws RemoteException {
        Parcel zza = zza(1, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.zzj
    public final int getDefaultLevelIndex() throws RemoteException {
        Parcel zza = zza(2, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.zzj
    public final List<IBinder> getLevels() throws RemoteException {
        Parcel zza = zza(3, zzbc());
        ArrayList<IBinder> createBinderArrayList = zza.createBinderArrayList();
        zza.recycle();
        return createBinderArrayList;
    }

    @Override // com.google.android.gms.maps.model.internal.zzj
    public final int hashCodeRemote() throws RemoteException {
        Parcel zza = zza(6, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.maps.model.internal.zzj
    public final boolean isUnderground() throws RemoteException {
        Parcel zza = zza(4, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.maps.model.internal.zzj
    public final boolean zzb(zzj zzjVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzjVar);
        Parcel zza = zza(5, zzbc);
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }
}
