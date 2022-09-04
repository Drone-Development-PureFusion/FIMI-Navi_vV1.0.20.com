package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.ActivityTransitionRequest;
/* loaded from: classes2.dex */
final class zzcfn extends zzcfp {
    private /* synthetic */ PendingIntent zzhmu;
    private /* synthetic */ ActivityTransitionRequest zziti;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcfn(zzcfk zzcfkVar, GoogleApiClient googleApiClient, ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.zziti = activityTransitionRequest;
        this.zzhmu = pendingIntent;
    }

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzchh zzchhVar) throws RemoteException {
        zzchhVar.zza(this.zziti, this.zzhmu, this);
    }
}
