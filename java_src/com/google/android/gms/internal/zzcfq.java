package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Hide;
@Hide
/* loaded from: classes2.dex */
public class zzcfq extends com.google.android.gms.common.internal.zzab<zzcgw> {
    private final String zzitj;
    protected final zzchr<zzcgw> zzitk = new zzcfr(this);

    public zzcfq(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str, com.google.android.gms.common.internal.zzr zzrVar) {
        super(context, looper, 23, zzrVar, connectionCallbacks, onConnectionFailedListener);
        this.zzitj = str;
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected final Bundle zzabt() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.zzitj);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return queryLocalInterface instanceof zzcgw ? (zzcgw) queryLocalInterface : new zzcgx(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected final String zzhm() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    public final String zzhn() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }
}
