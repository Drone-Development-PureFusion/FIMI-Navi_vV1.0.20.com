package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationStatusCodes;
/* loaded from: classes2.dex */
final class zzchj extends zzcgv {
    private com.google.android.gms.common.api.internal.zzn<Status> zziul;

    public zzchj(com.google.android.gms.common.api.internal.zzn<Status> zznVar) {
        this.zziul = zznVar;
    }

    private final void zzel(int i) {
        if (this.zziul == null) {
            Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times");
            return;
        }
        this.zziul.setResult(LocationStatusCodes.zzek(LocationStatusCodes.zzej(i)));
        this.zziul = null;
    }

    @Override // com.google.android.gms.internal.zzcgu
    public final void zza(int i, PendingIntent pendingIntent) {
        zzel(i);
    }

    @Override // com.google.android.gms.internal.zzcgu
    public final void zza(int i, String[] strArr) {
        Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
    }

    @Override // com.google.android.gms.internal.zzcgu
    public final void zzb(int i, String[] strArr) {
        zzel(i);
    }
}
