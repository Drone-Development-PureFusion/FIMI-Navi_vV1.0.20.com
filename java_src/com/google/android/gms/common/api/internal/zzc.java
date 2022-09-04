package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.support.annotation.NonNull;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zzm;
/* loaded from: classes2.dex */
public final class zzc<A extends zzm<? extends Result, Api.zzb>> extends zza {
    private A zzftx;

    public zzc(int i, A a) {
        super(i);
        this.zzftx = a;
    }

    @Override // com.google.android.gms.common.api.internal.zza
    public final void zza(@NonNull zzae zzaeVar, boolean z) {
        zzaeVar.zza(this.zzftx, z);
    }

    @Override // com.google.android.gms.common.api.internal.zza
    public final void zza(zzbo<?> zzboVar) throws DeadObjectException {
        try {
            this.zzftx.zzb(zzboVar.zzaix());
        } catch (RuntimeException e) {
            String simpleName = e.getClass().getSimpleName();
            String localizedMessage = e.getLocalizedMessage();
            this.zzftx.zzu(new Status(10, new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length()).append(simpleName).append(": ").append(localizedMessage).toString()));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zza
    public final void zzs(@NonNull Status status) {
        this.zzftx.zzu(status);
    }
}
