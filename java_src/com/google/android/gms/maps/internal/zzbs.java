package com.google.android.gms.maps.internal;

import android.graphics.Bitmap;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
@Hide
/* loaded from: classes2.dex */
public interface zzbs extends IInterface {
    void onSnapshotReady(Bitmap bitmap) throws RemoteException;

    void zzaa(IObjectWrapper iObjectWrapper) throws RemoteException;
}
