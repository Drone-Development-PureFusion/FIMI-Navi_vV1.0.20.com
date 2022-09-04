package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.zzck;
import com.google.android.gms.common.api.internal.zzdo;
import com.google.android.gms.internal.zzcgr;
import com.google.android.gms.internal.zzchh;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
final class zzo extends zzdo<zzchh, LocationCallback> {
    private /* synthetic */ FusedLocationProviderClient zzirn;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzo(FusedLocationProviderClient fusedLocationProviderClient, zzck zzckVar) {
        super(zzckVar);
        this.zzirn = fusedLocationProviderClient;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zzdo
    public final /* synthetic */ void zzc(zzchh zzchhVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzcgr zzc;
        zzchh zzchhVar2 = zzchhVar;
        zzc = this.zzirn.zzc(taskCompletionSource);
        try {
            zzchhVar2.zzb(zzakx(), zzc);
        } catch (RuntimeException e) {
            taskCompletionSource.trySetException(e);
        }
    }
}
