package com.google.android.gms.maps.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public interface zzc extends IInterface {
    void onCancel() throws RemoteException;

    void onFinish() throws RemoteException;
}
