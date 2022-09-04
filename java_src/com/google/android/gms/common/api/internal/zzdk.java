package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public final class zzdk {
    public static final Status zzgbq = new Status(8, "The connection to Google Play services was lost");
    private static final BasePendingResult<?>[] zzgbr = new BasePendingResult[0];
    private final Map<Api.zzc<?>, Api.zze> zzfyj;
    final Set<BasePendingResult<?>> zzgbs = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
    private final zzdn zzgbt = new zzdl(this);

    public zzdk(Map<Api.zzc<?>, Api.zze> map) {
        this.zzfyj = map;
    }

    public final void release() {
        BasePendingResult[] basePendingResultArr;
        com.google.android.gms.common.api.zze zzeVar = null;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.zzgbs.toArray(zzgbr)) {
            basePendingResult.zza((zzdn) null);
            if (basePendingResult.zzaid() != null) {
                basePendingResult.setResultCallback(null);
                IBinder zzaho = this.zzfyj.get(((zzm) basePendingResult).zzahm()).zzaho();
                if (basePendingResult.isReady()) {
                    basePendingResult.zza(new zzdm(basePendingResult, null, zzaho, null));
                } else if (zzaho == null || !zzaho.isBinderAlive()) {
                    basePendingResult.zza((zzdn) null);
                    basePendingResult.cancel();
                    zzeVar.remove(basePendingResult.zzaid().intValue());
                } else {
                    zzdm zzdmVar = new zzdm(basePendingResult, null, zzaho, null);
                    basePendingResult.zza(zzdmVar);
                    try {
                        zzaho.linkToDeath(zzdmVar, 0);
                    } catch (RemoteException e) {
                        basePendingResult.cancel();
                        zzeVar.remove(basePendingResult.zzaid().intValue());
                    }
                }
                this.zzgbs.remove(basePendingResult);
            } else if (basePendingResult.zzaip()) {
                this.zzgbs.remove(basePendingResult);
            }
        }
    }

    public final void zzald() {
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.zzgbs.toArray(zzgbr)) {
            basePendingResult.zzv(zzgbq);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(BasePendingResult<? extends Result> basePendingResult) {
        this.zzgbs.add(basePendingResult);
        basePendingResult.zza(this.zzgbt);
    }
}
