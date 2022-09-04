package com.google.android.gms.common.api.internal;

import android.support.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzq implements Runnable {
    private final zzp zzfux;
    final /* synthetic */ zzo zzfuy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(zzo zzoVar, zzp zzpVar) {
        this.zzfuy = zzoVar;
        this.zzfux = zzpVar;
    }

    @Override // java.lang.Runnable
    @MainThread
    public final void run() {
        if (!this.zzfuy.mStarted) {
            return;
        }
        ConnectionResult zzain = this.zzfux.zzain();
        if (zzain.hasResolution()) {
            this.zzfuy.zzgam.startActivityForResult(GoogleApiActivity.zza(this.zzfuy.getActivity(), zzain.getResolution(), this.zzfux.zzaim(), false), 1);
        } else if (this.zzfuy.zzftg.isUserResolvableError(zzain.getErrorCode())) {
            this.zzfuy.zzftg.zza(this.zzfuy.getActivity(), this.zzfuy.zzgam, zzain.getErrorCode(), 2, this.zzfuy);
        } else if (zzain.getErrorCode() != 18) {
            this.zzfuy.zza(zzain, this.zzfux.zzaim());
        } else {
            GoogleApiAvailability.zza(this.zzfuy.getActivity().getApplicationContext(), new zzr(this, GoogleApiAvailability.zza(this.zzfuy.getActivity(), this.zzfuy)));
        }
    }
}
