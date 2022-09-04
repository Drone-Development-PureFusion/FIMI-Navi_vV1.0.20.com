package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzchh;
/* loaded from: classes2.dex */
final class zzad extends Api.zza<zzchh, Api.ApiOptions.NoOptions> {
    @Override // com.google.android.gms.common.api.Api.zza
    public final /* synthetic */ zzchh zza(Context context, Looper looper, com.google.android.gms.common.internal.zzr zzrVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return new zzchh(context, looper, connectionCallbacks, onConnectionFailedListener, "locationServices", zzrVar);
    }
}
