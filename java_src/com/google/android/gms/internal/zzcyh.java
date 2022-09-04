package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2.dex */
final class zzcyh extends Api.zza<zzcyt, zzcyk> {
    @Override // com.google.android.gms.common.api.Api.zza
    public final /* synthetic */ zzcyt zza(Context context, Looper looper, com.google.android.gms.common.internal.zzr zzrVar, zzcyk zzcykVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzcyk zzcykVar2 = zzcykVar;
        return new zzcyt(context, looper, true, zzrVar, zzcykVar2 == null ? zzcyk.zzklp : zzcykVar2, connectionCallbacks, onConnectionFailedListener);
    }
}
