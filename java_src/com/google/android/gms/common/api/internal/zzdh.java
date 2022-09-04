package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public final class zzdh<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {
    private final WeakReference<GoogleApiClient> zzfve;
    private final zzdj zzgbm;
    private ResultTransform<? super R, ? extends Result> zzgbh = null;
    private zzdh<? extends Result> zzgbi = null;
    private volatile ResultCallbacks<? super R> zzgbj = null;
    private PendingResult<R> zzgbk = null;
    private final Object zzfvc = new Object();
    private Status zzgbl = null;
    private boolean zzgbn = false;

    public zzdh(WeakReference<GoogleApiClient> weakReference) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(weakReference, "GoogleApiClient reference must not be null");
        this.zzfve = weakReference;
        GoogleApiClient googleApiClient = this.zzfve.get();
        this.zzgbm = new zzdj(this, googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    private final void zzala() {
        if (this.zzgbh == null && this.zzgbj == null) {
            return;
        }
        GoogleApiClient googleApiClient = this.zzfve.get();
        if (!this.zzgbn && this.zzgbh != null && googleApiClient != null) {
            googleApiClient.zza(this);
            this.zzgbn = true;
        }
        if (this.zzgbl != null) {
            zzx(this.zzgbl);
        } else if (this.zzgbk == null) {
        } else {
            this.zzgbk.setResultCallback(this);
        }
    }

    private final boolean zzalc() {
        return (this.zzgbj == null || this.zzfve.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzd(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                Log.w("TransformedResultImpl", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzd(Status status) {
        synchronized (this.zzfvc) {
            this.zzgbl = status;
            zzx(this.zzgbl);
        }
    }

    private final void zzx(Status status) {
        synchronized (this.zzfvc) {
            if (this.zzgbh != null) {
                Status onFailure = this.zzgbh.onFailure(status);
                com.google.android.gms.common.internal.zzbq.checkNotNull(onFailure, "onFailure must not return null");
                this.zzgbi.zzd(onFailure);
            } else if (zzalc()) {
                this.zzgbj.onFailure(status);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final void andFinally(@NonNull ResultCallbacks<? super R> resultCallbacks) {
        boolean z = true;
        synchronized (this.zzfvc) {
            com.google.android.gms.common.internal.zzbq.zza(this.zzgbj == null, "Cannot call andFinally() twice.");
            if (this.zzgbh != null) {
                z = false;
            }
            com.google.android.gms.common.internal.zzbq.zza(z, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.zzgbj = resultCallbacks;
            zzala();
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(R r) {
        synchronized (this.zzfvc) {
            if (!r.getStatus().isSuccess()) {
                zzd(r.getStatus());
                zzd(r);
            } else if (this.zzgbh != null) {
                zzcs.zzajx().submit(new zzdi(this, r));
            } else if (zzalc()) {
                this.zzgbj.onSuccess(r);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    @NonNull
    public final <S extends Result> TransformedResult<S> then(@NonNull ResultTransform<? super R, ? extends S> resultTransform) {
        zzdh<? extends Result> zzdhVar;
        boolean z = true;
        synchronized (this.zzfvc) {
            com.google.android.gms.common.internal.zzbq.zza(this.zzgbh == null, "Cannot call then() twice.");
            if (this.zzgbj != null) {
                z = false;
            }
            com.google.android.gms.common.internal.zzbq.zza(z, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.zzgbh = resultTransform;
            zzdhVar = new zzdh<>(this.zzfve);
            this.zzgbi = zzdhVar;
            zzala();
        }
        return zzdhVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zza(PendingResult<?> pendingResult) {
        synchronized (this.zzfvc) {
            this.zzgbk = pendingResult;
            zzala();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzalb() {
        this.zzgbj = null;
    }
}
