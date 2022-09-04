package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
/* JADX INFO: Access modifiers changed from: package-private */
@Hide
/* loaded from: classes2.dex */
public final class zzh extends Handler {
    private /* synthetic */ zzd zzgfk;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzh(zzd zzdVar, Looper looper) {
        super(looper);
        this.zzgfk = zzdVar;
    }

    private static void zza(Message message) {
        zzi zziVar = (zzi) message.obj;
        zziVar.zzamb();
        zziVar.unregister();
    }

    private static boolean zzb(Message message) {
        return message.what == 2 || message.what == 1 || message.what == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        zzf zzfVar;
        zzf zzfVar2;
        ConnectionResult connectionResult;
        boolean zzalz;
        ConnectionResult connectionResult2;
        boolean z;
        PendingIntent pendingIntent = null;
        if (this.zzgfk.zzgfh.get() != message.arg1) {
            if (!zzb(message)) {
                return;
            }
            zza(message);
        } else if ((message.what == 1 || message.what == 7 || message.what == 4 || message.what == 5) && !this.zzgfk.isConnecting()) {
            zza(message);
        } else if (message.what == 4) {
            this.zzgfk.zzgff = new ConnectionResult(message.arg2);
            zzalz = this.zzgfk.zzalz();
            if (zzalz) {
                z = this.zzgfk.zzgfg;
                if (!z) {
                    this.zzgfk.zza(3, (int) null);
                    return;
                }
            }
            connectionResult2 = this.zzgfk.zzgff;
            ConnectionResult connectionResult3 = connectionResult2 != null ? this.zzgfk.zzgff : new ConnectionResult(8);
            this.zzgfk.zzgew.zzf(connectionResult3);
            this.zzgfk.onConnectionFailed(connectionResult3);
        } else if (message.what == 5) {
            connectionResult = this.zzgfk.zzgff;
            ConnectionResult connectionResult4 = connectionResult != null ? this.zzgfk.zzgff : new ConnectionResult(8);
            this.zzgfk.zzgew.zzf(connectionResult4);
            this.zzgfk.onConnectionFailed(connectionResult4);
        } else if (message.what == 3) {
            if (message.obj instanceof PendingIntent) {
                pendingIntent = (PendingIntent) message.obj;
            }
            ConnectionResult connectionResult5 = new ConnectionResult(message.arg2, pendingIntent);
            this.zzgfk.zzgew.zzf(connectionResult5);
            this.zzgfk.onConnectionFailed(connectionResult5);
        } else if (message.what == 6) {
            this.zzgfk.zza(5, (int) null);
            zzfVar = this.zzgfk.zzgfb;
            if (zzfVar != null) {
                zzfVar2 = this.zzgfk.zzgfb;
                zzfVar2.onConnectionSuspended(message.arg2);
            }
            this.zzgfk.onConnectionSuspended(message.arg2);
            this.zzgfk.zza(5, 1, (int) null);
        } else if (message.what == 2 && !this.zzgfk.isConnected()) {
            zza(message);
        } else if (zzb(message)) {
            ((zzi) message.obj).zzamc();
        } else {
            Log.wtf("GmsClient", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
        }
    }
}
