package com.google.android.gms.dynamic;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzh implements zzi {
    private /* synthetic */ zza zzhct;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zza zzaVar) {
        this.zzhct = zzaVar;
    }

    @Override // com.google.android.gms.dynamic.zzi
    public final int getState() {
        return 5;
    }

    @Override // com.google.android.gms.dynamic.zzi
    public final void zzb(LifecycleDelegate lifecycleDelegate) {
        LifecycleDelegate lifecycleDelegate2;
        lifecycleDelegate2 = this.zzhct.zzhcp;
        lifecycleDelegate2.onResume();
    }
}
