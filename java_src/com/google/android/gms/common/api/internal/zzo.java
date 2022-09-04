package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public abstract class zzo extends LifecycleCallback implements DialogInterface.OnCancelListener {
    protected volatile boolean mStarted;
    protected final GoogleApiAvailability zzftg;
    protected final AtomicReference<zzp> zzfut;
    private final Handler zzfuu;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzo(zzcf zzcfVar) {
        this(zzcfVar, GoogleApiAvailability.getInstance());
    }

    private zzo(zzcf zzcfVar, GoogleApiAvailability googleApiAvailability) {
        super(zzcfVar);
        this.zzfut = new AtomicReference<>(null);
        this.zzfuu = new Handler(Looper.getMainLooper());
        this.zzftg = googleApiAvailability;
    }

    private static int zza(@Nullable zzp zzpVar) {
        if (zzpVar == null) {
            return -1;
        }
        return zzpVar.zzaim();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onActivityResult(int i, int i2, Intent intent) {
        boolean z;
        int i3 = 13;
        zzp zzpVar = this.zzfut.get();
        switch (i) {
            case 1:
                if (i2 != -1) {
                    if (i2 == 0) {
                        if (intent != null) {
                            i3 = intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13);
                        }
                        zzp zzpVar2 = new zzp(new ConnectionResult(i3, null), zza(zzpVar));
                        this.zzfut.set(zzpVar2);
                        zzpVar = zzpVar2;
                        z = false;
                        break;
                    }
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 2:
                int isGooglePlayServicesAvailable = this.zzftg.isGooglePlayServicesAvailable(getActivity());
                z = isGooglePlayServicesAvailable == 0;
                if (zzpVar == null) {
                    return;
                }
                if (zzpVar.zzain().getErrorCode() == 18 && isGooglePlayServicesAvailable == 18) {
                    return;
                }
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            zzail();
        } else if (zzpVar == null) {
        } else {
            zza(zzpVar.zzain(), zzpVar.zzaim());
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        zza(new ConnectionResult(13, null), zza(this.zzfut.get()));
        zzail();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.zzfut.set(bundle.getBoolean("resolving_error", false) ? new zzp(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        zzp zzpVar = this.zzfut.get();
        if (zzpVar != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", zzpVar.zzaim());
            bundle.putInt("failed_status", zzpVar.zzain().getErrorCode());
            bundle.putParcelable("failed_resolution", zzpVar.zzain().getResolution());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStart() {
        super.onStart();
        this.mStarted = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStop() {
        super.onStop();
        this.mStarted = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zza(ConnectionResult connectionResult, int i);

    protected abstract void zzaih();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzail() {
        this.zzfut.set(null);
        zzaih();
    }

    public final void zzb(ConnectionResult connectionResult, int i) {
        zzp zzpVar = new zzp(connectionResult, i);
        if (this.zzfut.compareAndSet(null, zzpVar)) {
            this.zzfuu.post(new zzq(this, zzpVar));
        }
    }
}
