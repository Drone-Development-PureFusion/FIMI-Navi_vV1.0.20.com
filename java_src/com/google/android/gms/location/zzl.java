package com.google.android.gms.location;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.zzde;
import com.google.android.gms.internal.zzchh;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
final class zzl extends zzde<zzchh, Location> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(FusedLocationProviderClient fusedLocationProviderClient) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zzde
    public final /* synthetic */ void zza(zzchh zzchhVar, TaskCompletionSource<Location> taskCompletionSource) throws RemoteException {
        taskCompletionSource.setResult(zzchhVar.getLastLocation());
    }
}
