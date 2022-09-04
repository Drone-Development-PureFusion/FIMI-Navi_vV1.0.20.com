package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class zzab<T extends IInterface> extends zzd<T> implements Api.zze, zzaf {
    private final Account zzeho;
    private final Set<Scope> zzenh;
    private final zzr zzfwf;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzab(Context context, Looper looper, int i, zzr zzrVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, zzag.zzcp(context), GoogleApiAvailability.getInstance(), i, zzrVar, (GoogleApiClient.ConnectionCallbacks) zzbq.checkNotNull(connectionCallbacks), (GoogleApiClient.OnConnectionFailedListener) zzbq.checkNotNull(onConnectionFailedListener));
    }

    private zzab(Context context, Looper looper, zzag zzagVar, GoogleApiAvailability googleApiAvailability, int i, zzr zzrVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, zzagVar, googleApiAvailability, i, connectionCallbacks == null ? null : new zzac(connectionCallbacks), onConnectionFailedListener == null ? null : new zzad(onConnectionFailedListener), zzrVar.zzamj());
        this.zzfwf = zzrVar;
        this.zzeho = zzrVar.getAccount();
        Set<Scope> zzamg = zzrVar.zzamg();
        Set<Scope> zzb = zzb(zzamg);
        for (Scope scope : zzb) {
            if (!zzamg.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        this.zzenh = zzb;
    }

    @Override // com.google.android.gms.common.internal.zzd
    public final Account getAccount() {
        return this.zzeho;
    }

    @Override // com.google.android.gms.common.api.Api.zze
    public final int zzahq() {
        return -1;
    }

    @Override // com.google.android.gms.common.internal.zzd
    public com.google.android.gms.common.zzc[] zzalu() {
        return new com.google.android.gms.common.zzc[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    public final Set<Scope> zzaly() {
        return this.zzenh;
    }

    protected final zzr zzamr() {
        return this.zzfwf;
    }

    @Hide
    @NonNull
    protected Set<Scope> zzb(@NonNull Set<Scope> set) {
        return set;
    }
}
