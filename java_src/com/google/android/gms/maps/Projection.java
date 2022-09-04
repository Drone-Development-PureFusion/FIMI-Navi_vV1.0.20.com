package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.maps.internal.IProjectionDelegate;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.VisibleRegion;
/* loaded from: classes2.dex */
public final class Projection {
    private final IProjectionDelegate zzjbv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Projection(IProjectionDelegate iProjectionDelegate) {
        this.zzjbv = iProjectionDelegate;
    }

    public final LatLng fromScreenLocation(Point point) {
        try {
            return this.zzjbv.fromScreenLocation(com.google.android.gms.dynamic.zzn.zzz(point));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final VisibleRegion getVisibleRegion() {
        try {
            return this.zzjbv.getVisibleRegion();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Point toScreenLocation(LatLng latLng) {
        try {
            return (Point) com.google.android.gms.dynamic.zzn.zzy(this.zzjbv.toScreenLocation(latLng));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
