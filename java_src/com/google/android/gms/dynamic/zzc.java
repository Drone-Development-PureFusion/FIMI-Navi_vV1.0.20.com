package com.google.android.gms.dynamic;

import android.app.Activity;
import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzc implements zzi {
    private /* synthetic */ Activity val$activity;
    private /* synthetic */ Bundle zzaik;
    private /* synthetic */ zza zzhct;
    private /* synthetic */ Bundle zzhcu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(zza zzaVar, Activity activity, Bundle bundle, Bundle bundle2) {
        this.zzhct = zzaVar;
        this.val$activity = activity;
        this.zzhcu = bundle;
        this.zzaik = bundle2;
    }

    @Override // com.google.android.gms.dynamic.zzi
    public final int getState() {
        return 0;
    }

    @Override // com.google.android.gms.dynamic.zzi
    public final void zzb(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        lifecycleDelegate2 = this.zzhct.zzhcp;
        lifecycleDelegate2.onInflate(this.val$activity, this.zzhcu, this.zzaik);
    }
}
