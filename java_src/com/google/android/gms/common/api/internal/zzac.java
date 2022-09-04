package com.google.android.gms.common.api.internal;

import android.support.annotation.NonNull;
import android.support.p001v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzac implements OnCompleteListener<Map<zzh<?>, String>> {
    private /* synthetic */ zzaa zzfwu;

    private zzac(zzaa zzaaVar) {
        this.zzfwu = zzaaVar;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<Map<zzh<?>, String>> task) {
        Lock lock;
        Lock lock2;
        boolean z;
        boolean z2;
        ConnectionResult zzajb;
        Map map;
        Map map2;
        boolean zza;
        Map map3;
        Map map4;
        Map map5;
        ConnectionResult connectionResult;
        zzba zzbaVar;
        ConnectionResult connectionResult2;
        Condition condition;
        Map map6;
        Map map7;
        ConnectionResult zzajb2;
        Map map8;
        Map map9;
        Map map10;
        lock = this.zzfwu.zzfwa;
        lock.lock();
        try {
            z = this.zzfwu.zzfwp;
            if (!z) {
                return;
            }
            if (task.isSuccessful()) {
                zzaa zzaaVar = this.zzfwu;
                map8 = this.zzfwu.zzfwg;
                zzaaVar.zzfwq = new ArrayMap(map8.size());
                map9 = this.zzfwu.zzfwg;
                for (zzz zzzVar : map9.values()) {
                    map10 = this.zzfwu.zzfwq;
                    map10.put(zzzVar.zzahv(), ConnectionResult.zzfqt);
                }
            } else if (task.getException() instanceof AvailabilityException) {
                AvailabilityException availabilityException = (AvailabilityException) task.getException();
                z2 = this.zzfwu.zzfwn;
                if (z2) {
                    zzaa zzaaVar2 = this.zzfwu;
                    map = this.zzfwu.zzfwg;
                    zzaaVar2.zzfwq = new ArrayMap(map.size());
                    map2 = this.zzfwu.zzfwg;
                    for (zzz zzzVar2 : map2.values()) {
                        Object zzahv = zzzVar2.zzahv();
                        ConnectionResult connectionResult3 = availabilityException.getConnectionResult(zzzVar2);
                        zza = this.zzfwu.zza(zzzVar2, connectionResult3);
                        if (zza) {
                            map3 = this.zzfwu.zzfwq;
                            map3.put(zzahv, new ConnectionResult(16));
                        } else {
                            map4 = this.zzfwu.zzfwq;
                            map4.put(zzahv, connectionResult3);
                        }
                    }
                } else {
                    this.zzfwu.zzfwq = availabilityException.zzahr();
                }
                zzaa zzaaVar3 = this.zzfwu;
                zzajb = this.zzfwu.zzajb();
                zzaaVar3.zzfwt = zzajb;
            } else {
                Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                this.zzfwu.zzfwq = Collections.emptyMap();
                this.zzfwu.zzfwt = new ConnectionResult(8);
            }
            map5 = this.zzfwu.zzfwr;
            if (map5 != null) {
                map6 = this.zzfwu.zzfwq;
                map7 = this.zzfwu.zzfwr;
                map6.putAll(map7);
                zzaa zzaaVar4 = this.zzfwu;
                zzajb2 = this.zzfwu.zzajb();
                zzaaVar4.zzfwt = zzajb2;
            }
            connectionResult = this.zzfwu.zzfwt;
            if (connectionResult == null) {
                this.zzfwu.zzaiz();
                this.zzfwu.zzaja();
            } else {
                this.zzfwu.zzfwp = false;
                zzbaVar = this.zzfwu.zzfwj;
                connectionResult2 = this.zzfwu.zzfwt;
                zzbaVar.zzc(connectionResult2);
            }
            condition = this.zzfwu.zzfwl;
            condition.signalAll();
        } finally {
            lock2 = this.zzfwu.zzfwa;
            lock2.unlock();
        }
    }
}
