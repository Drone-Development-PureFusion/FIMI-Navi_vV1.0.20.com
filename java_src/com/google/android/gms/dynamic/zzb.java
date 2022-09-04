package com.google.android.gms.dynamic;

import java.util.Iterator;
import java.util.LinkedList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzb implements zzo<T> {
    private /* synthetic */ zza zzhct;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(zza zzaVar) {
        this.zzhct = zzaVar;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.google.android.gms.dynamic.zzo
    public final void zza(LifecycleDelegate lifecycleDelegate) {
        LinkedList linkedList;
        LinkedList linkedList2;
        LifecycleDelegate lifecycleDelegate2;
        this.zzhct.zzhcp = lifecycleDelegate;
        linkedList = this.zzhct.zzhcr;
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            lifecycleDelegate2 = this.zzhct.zzhcp;
            ((zzi) it.next()).zzb(lifecycleDelegate2);
        }
        linkedList2 = this.zzhct.zzhcr;
        linkedList2.clear();
        this.zzhct.zzhcq = null;
    }
}
