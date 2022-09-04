package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.support.annotation.BinderThread;
import com.google.android.gms.common.ConnectionResult;
/* JADX INFO: Access modifiers changed from: package-private */
@Hide
/* loaded from: classes2.dex */
public abstract class zze extends zzi<Boolean> {
    private int statusCode;
    private Bundle zzgfj;
    private /* synthetic */ zzd zzgfk;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public zze(zzd zzdVar, int i, Bundle bundle) {
        super(zzdVar, true);
        this.zzgfk = zzdVar;
        this.statusCode = i;
        this.zzgfj = bundle;
    }

    protected abstract boolean zzama();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzi
    public final void zzamb() {
    }

    protected abstract void zzj(ConnectionResult connectionResult);

    @Override // com.google.android.gms.common.internal.zzi
    protected final /* synthetic */ void zzw(Boolean bool) {
        PendingIntent pendingIntent = null;
        if (bool == null) {
            this.zzgfk.zza(1, (int) null);
            return;
        }
        switch (this.statusCode) {
            case 0:
                if (zzama()) {
                    return;
                }
                this.zzgfk.zza(1, (int) null);
                zzj(new ConnectionResult(8, null));
                return;
            case 10:
                this.zzgfk.zza(1, (int) null);
                throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
            default:
                this.zzgfk.zza(1, (int) null);
                if (this.zzgfj != null) {
                    pendingIntent = (PendingIntent) this.zzgfj.getParcelable("pendingIntent");
                }
                zzj(new ConnectionResult(this.statusCode, pendingIntent));
                return;
        }
    }
}
