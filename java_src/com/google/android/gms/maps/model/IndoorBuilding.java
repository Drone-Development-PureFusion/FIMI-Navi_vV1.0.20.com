package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class IndoorBuilding {
    @NonNull
    private final com.google.android.gms.maps.model.internal.zzj zzjdl;
    @NonNull
    private final zza zzjdm;

    @Hide
    /* loaded from: classes2.dex */
    static class zza {
        @Hide
        public static final zza zzjdn = new zza();

        private zza() {
        }

        @Hide
        @NonNull
        public static IndoorLevel zza(@NonNull com.google.android.gms.maps.model.internal.zzm zzmVar) {
            return new IndoorLevel(zzmVar);
        }

        @Hide
        @NonNull
        public static com.google.android.gms.maps.model.internal.zzm zzbg(IBinder iBinder) {
            return com.google.android.gms.maps.model.internal.zzn.zzbl(iBinder);
        }
    }

    @Hide
    public IndoorBuilding(@NonNull com.google.android.gms.maps.model.internal.zzj zzjVar) {
        this(zzjVar, zza.zzjdn);
    }

    @Hide
    private IndoorBuilding(@NonNull com.google.android.gms.maps.model.internal.zzj zzjVar, @NonNull zza zzaVar) {
        this.zzjdl = (com.google.android.gms.maps.model.internal.zzj) zzbq.checkNotNull(zzjVar, "delegate");
        this.zzjdm = (zza) zzbq.checkNotNull(zzaVar, "shim");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorBuilding)) {
            return false;
        }
        try {
            return this.zzjdl.zzb(((IndoorBuilding) obj).zzjdl);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getActiveLevelIndex() {
        try {
            return this.zzjdl.getActiveLevelIndex();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getDefaultLevelIndex() {
        try {
            return this.zzjdl.getDefaultLevelIndex();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final List<IndoorLevel> getLevels() {
        try {
            List<IBinder> levels = this.zzjdl.getLevels();
            ArrayList arrayList = new ArrayList(levels.size());
            for (IBinder iBinder : levels) {
                arrayList.add(zza.zza(zza.zzbg(iBinder)));
            }
            return arrayList;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzjdl.hashCodeRemote();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isUnderground() {
        try {
            return this.zzjdl.isUnderground();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
