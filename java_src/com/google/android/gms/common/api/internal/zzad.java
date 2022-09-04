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
public final class zzad implements OnCompleteListener<Map<zzh<?>, String>> {
    private /* synthetic */ zzaa zzfwu;
    private zzcu zzfwv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad(zzaa zzaaVar, zzcu zzcuVar) {
        this.zzfwu = zzaaVar;
        this.zzfwv = zzcuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void cancel() {
        this.zzfwv.zzacm();
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(@NonNull Task<Map<zzh<?>, String>> task) {
        Lock lock;
        Lock lock2;
        boolean z;
        boolean z2;
        Map map;
        Map map2;
        boolean zza;
        Map map3;
        Map map4;
        Map map5;
        Map map6;
        ConnectionResult zzajb;
        Condition condition;
        Map map7;
        Map map8;
        Map map9;
        lock = this.zzfwu.zzfwa;
        lock.lock();
        try {
            z = this.zzfwu.zzfwp;
            if (!z) {
                this.zzfwv.zzacm();
                return;
            }
            if (task.isSuccessful()) {
                zzaa zzaaVar = this.zzfwu;
                map7 = this.zzfwu.zzfwh;
                zzaaVar.zzfwr = new ArrayMap(map7.size());
                map8 = this.zzfwu.zzfwh;
                for (zzz zzzVar : map8.values()) {
                    map9 = this.zzfwu.zzfwr;
                    map9.put(zzzVar.zzahv(), ConnectionResult.zzfqt);
                }
            } else if (task.getException() instanceof AvailabilityException) {
                AvailabilityException availabilityException = (AvailabilityException) task.getException();
                z2 = this.zzfwu.zzfwn;
                if (z2) {
                    zzaa zzaaVar2 = this.zzfwu;
                    map = this.zzfwu.zzfwh;
                    zzaaVar2.zzfwr = new ArrayMap(map.size());
                    map2 = this.zzfwu.zzfwh;
                    for (zzz zzzVar2 : map2.values()) {
                        Object zzahv = zzzVar2.zzahv();
                        ConnectionResult connectionResult = availabilityException.getConnectionResult(zzzVar2);
                        zza = this.zzfwu.zza(zzzVar2, connectionResult);
                        if (zza) {
                            map3 = this.zzfwu.zzfwr;
                            map3.put(zzahv, new ConnectionResult(16));
                        } else {
                            map4 = this.zzfwu.zzfwr;
                            map4.put(zzahv, connectionResult);
                        }
                    }
                } else {
                    this.zzfwu.zzfwr = availabilityException.zzahr();
                }
            } else {
                Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                this.zzfwu.zzfwr = Collections.emptyMap();
            }
            if (this.zzfwu.isConnected()) {
                map5 = this.zzfwu.zzfwq;
                map6 = this.zzfwu.zzfwr;
                map5.putAll(map6);
                zzajb = this.zzfwu.zzajb();
                if (zzajb == null) {
                    this.zzfwu.zzaiz();
                    this.zzfwu.zzaja();
                    condition = this.zzfwu.zzfwl;
                    condition.signalAll();
                }
            }
            this.zzfwv.zzacm();
        } finally {
            lock2 = this.zzfwu.zzfwa;
            lock2.unlock();
        }
    }
}
