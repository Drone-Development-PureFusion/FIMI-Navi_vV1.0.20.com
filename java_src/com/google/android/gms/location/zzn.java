package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.zzci;
import com.google.android.gms.common.api.internal.zzcq;
import com.google.android.gms.internal.zzchh;
import com.google.android.gms.internal.zzchl;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
final class zzn extends zzcq<zzchh, LocationCallback> {
    private /* synthetic */ zzci zzhsp;
    private /* synthetic */ zzchl zzirm;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzn(FusedLocationProviderClient fusedLocationProviderClient, zzci zzciVar, zzchl zzchlVar, zzci zzciVar2) {
        super(zzciVar);
        this.zzirm = zzchlVar;
        this.zzhsp = zzciVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zzcq
    public final /* synthetic */ void zzb(zzchh zzchhVar, TaskCompletionSource taskCompletionSource) throws RemoteException {
        zzchhVar.zza(this.zzirm, this.zzhsp, new FusedLocationProviderClient.zza(taskCompletionSource));
    }
}
