package com.google.android.gms.maps.model;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
/* loaded from: classes2.dex */
public final class IndoorLevel {
    private final com.google.android.gms.maps.model.internal.zzm zzjdo;

    @Hide
    public IndoorLevel(com.google.android.gms.maps.model.internal.zzm zzmVar) {
        this.zzjdo = (com.google.android.gms.maps.model.internal.zzm) zzbq.checkNotNull(zzmVar);
    }

    public final void activate() {
        try {
            this.zzjdo.activate();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorLevel)) {
            return false;
        }
        try {
            return this.zzjdo.zzb(((IndoorLevel) obj).zzjdo);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    @NonNull
    public final String getName() {
        try {
            return this.zzjdo.getName();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    @NonNull
    public final String getShortName() {
        try {
            return this.zzjdo.getShortName();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzjdo.hashCodeRemote();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
