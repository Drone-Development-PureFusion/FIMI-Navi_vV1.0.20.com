package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public final class zzcz extends zzcb {
    private final zzn<Status> zzgbf;

    public zzcz(zzn<Status> zznVar) {
        this.zzgbf = zznVar;
    }

    @Override // com.google.android.gms.common.api.internal.zzca
    public final void zzn(Status status) {
        this.zzgbf.setResult(status);
    }
}
