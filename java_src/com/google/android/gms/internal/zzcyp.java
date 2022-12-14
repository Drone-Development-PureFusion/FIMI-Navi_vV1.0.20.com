package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public interface zzcyp extends IInterface {
    void zza(ConnectionResult connectionResult, zzcym zzcymVar) throws RemoteException;

    void zza(Status status, GoogleSignInAccount googleSignInAccount) throws RemoteException;

    void zzas(Status status) throws RemoteException;

    void zzat(Status status) throws RemoteException;

    void zzb(zzcyw zzcywVar) throws RemoteException;
}
