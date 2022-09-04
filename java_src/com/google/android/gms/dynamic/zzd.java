package com.google.android.gms.dynamic;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzd implements zzi {
    private /* synthetic */ Bundle zzaik;
    private /* synthetic */ zza zzhct;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zza zzaVar, Bundle bundle) {
        this.zzhct = zzaVar;
        this.zzaik = bundle;
    }

    @Override // com.google.android.gms.dynamic.zzi
    public final int getState() {
        return 1;
    }

    @Override // com.google.android.gms.dynamic.zzi
    public final void zzb(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        lifecycleDelegate2 = this.zzhct.zzhcp;
        lifecycleDelegate2.onCreate(this.zzaik);
    }
}
