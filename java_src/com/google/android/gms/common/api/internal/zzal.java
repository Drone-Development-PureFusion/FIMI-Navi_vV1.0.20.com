package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public final class zzal implements zzbh {
    private final zzbi zzfxd;
    private boolean zzfxe = false;

    public zzal(zzbi zzbiVar) {
        this.zzfxd = zzbiVar;
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void begin() {
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void connect() {
        if (this.zzfxe) {
            this.zzfxe = false;
            this.zzfxd.zza(new zzan(this, this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final boolean disconnect() {
        if (this.zzfxe) {
            return false;
        }
        if (!this.zzfxd.zzfvq.zzajt()) {
            this.zzfxd.zzg(null);
            return true;
        }
        this.zzfxe = true;
        for (zzdh zzdhVar : this.zzfxd.zzfvq.zzfyo) {
            zzdhVar.zzalb();
        }
        return false;
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void onConnectionSuspended(int i) {
        this.zzfxd.zzg(null);
        this.zzfxd.zzfzc.zzf(i, this.zzfxe);
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzaji() {
        if (this.zzfxe) {
            this.zzfxe = false;
            this.zzfxd.zzfvq.zzfyp.release();
            disconnect();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final <A extends Api.zzb, R extends Result, T extends zzm<R, A>> T zzd(T t) {
        return (T) zze(t);
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final <A extends Api.zzb, T extends zzm<? extends Result, A>> T zze(T t) {
        try {
            this.zzfxd.zzfvq.zzfyp.zzb(t);
            zzba zzbaVar = this.zzfxd.zzfvq;
            Api.zze zzeVar = zzbaVar.zzfyj.get(t.zzahm());
            com.google.android.gms.common.internal.zzbq.checkNotNull(zzeVar, "Appropriate Api was not requested.");
            if (zzeVar.isConnected() || !this.zzfxd.zzfyy.containsKey(t.zzahm())) {
                boolean z = zzeVar instanceof com.google.android.gms.common.internal.zzbz;
                Api.zzg zzgVar = zzeVar;
                if (z) {
                    zzgVar = com.google.android.gms.common.internal.zzbz.zzanb();
                }
                t.zzb(zzgVar);
            } else {
                t.zzu(new Status(17));
            }
        } catch (DeadObjectException e) {
            this.zzfxd.zza(new zzam(this, this));
        }
        return t;
    }
}
