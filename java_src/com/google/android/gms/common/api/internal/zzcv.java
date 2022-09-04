package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.BinderThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzcyg;
import com.google.android.gms.internal.zzcyj;
import com.google.android.gms.internal.zzcyk;
import com.google.android.gms.internal.zzcyo;
import com.google.android.gms.internal.zzcyw;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzcv extends zzcyo implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private static Api.zza<? extends zzcyj, zzcyk> zzgbc = zzcyg.zzegv;
    private final Context mContext;
    private final Handler mHandler;
    private Set<Scope> zzenh;
    private final Api.zza<? extends zzcyj, zzcyk> zzfsa;
    private com.google.android.gms.common.internal.zzr zzfwf;
    private zzcyj zzfxl;
    private zzcy zzgbd;

    @WorkerThread
    public zzcv(Context context, Handler handler, @NonNull com.google.android.gms.common.internal.zzr zzrVar) {
        this(context, handler, zzrVar, zzgbc);
    }

    @WorkerThread
    public zzcv(Context context, Handler handler, @NonNull com.google.android.gms.common.internal.zzr zzrVar, Api.zza<? extends zzcyj, zzcyk> zzaVar) {
        this.mContext = context;
        this.mHandler = handler;
        this.zzfwf = (com.google.android.gms.common.internal.zzr) com.google.android.gms.common.internal.zzbq.checkNotNull(zzrVar, "ClientSettings must not be null");
        this.zzenh = zzrVar.zzamf();
        this.zzfsa = zzaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzc(zzcyw zzcywVar) {
        ConnectionResult zzain = zzcywVar.zzain();
        if (zzain.isSuccess()) {
            com.google.android.gms.common.internal.zzbt zzbfa = zzcywVar.zzbfa();
            ConnectionResult zzain2 = zzbfa.zzain();
            if (!zzain2.isSuccess()) {
                String valueOf = String.valueOf(zzain2);
                Log.wtf("SignInCoordinator", new StringBuilder(String.valueOf(valueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(valueOf).toString(), new Exception());
                this.zzgbd.zzh(zzain2);
                this.zzfxl.disconnect();
                return;
            }
            this.zzgbd.zzb(zzbfa.zzamy(), this.zzenh);
        } else {
            this.zzgbd.zzh(zzain);
        }
        this.zzfxl.disconnect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    @WorkerThread
    public final void onConnected(@Nullable Bundle bundle) {
        this.zzfxl.zza(this);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    @WorkerThread
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.zzgbd.zzh(connectionResult);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    @WorkerThread
    public final void onConnectionSuspended(int i) {
        this.zzfxl.disconnect();
    }

    @WorkerThread
    public final void zza(zzcy zzcyVar) {
        if (this.zzfxl != null) {
            this.zzfxl.disconnect();
        }
        this.zzfwf.zzc(Integer.valueOf(System.identityHashCode(this)));
        this.zzfxl = this.zzfsa.zza(this.mContext, this.mHandler.getLooper(), this.zzfwf, this.zzfwf.zzaml(), this, this);
        this.zzgbd = zzcyVar;
        if (this.zzenh == null || this.zzenh.isEmpty()) {
            this.mHandler.post(new zzcw(this));
        } else {
            this.zzfxl.connect();
        }
    }

    public final zzcyj zzakn() {
        return this.zzfxl;
    }

    public final void zzakz() {
        if (this.zzfxl != null) {
            this.zzfxl.disconnect();
        }
    }

    @Override // com.google.android.gms.internal.zzcyo, com.google.android.gms.internal.zzcyp
    @BinderThread
    public final void zzb(zzcyw zzcywVar) {
        this.mHandler.post(new zzcx(this, zzcywVar));
    }
}
