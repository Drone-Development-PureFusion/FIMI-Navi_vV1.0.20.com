package com.google.android.gms.location;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public interface zzu extends IInterface {
    void onLocationAvailability(LocationAvailability locationAvailability) throws RemoteException;

    void onLocationResult(LocationResult locationResult) throws RemoteException;
}
