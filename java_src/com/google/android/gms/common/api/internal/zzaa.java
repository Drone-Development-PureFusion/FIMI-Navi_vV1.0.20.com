package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbic;
import com.google.android.gms.internal.zzcyj;
import com.google.android.gms.internal.zzcyk;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* loaded from: classes2.dex */
public final class zzaa implements zzcc {
    private final Looper zzalj;
    private final zzbm zzfsq;
    private final Lock zzfwa;
    private final com.google.android.gms.common.internal.zzr zzfwf;
    private final Map<Api<?>, Boolean> zzfwi;
    private final zzba zzfwj;
    private final com.google.android.gms.common.zzf zzfwk;
    private final Condition zzfwl;
    private final boolean zzfwm;
    private final boolean zzfwn;
    private boolean zzfwp;
    private Map<zzh<?>, ConnectionResult> zzfwq;
    private Map<zzh<?>, ConnectionResult> zzfwr;
    private zzad zzfws;
    private ConnectionResult zzfwt;
    private final Map<Api.zzc<?>, zzz<?>> zzfwg = new HashMap();
    private final Map<Api.zzc<?>, zzz<?>> zzfwh = new HashMap();
    private final Queue<zzm<?, ?>> zzfwo = new LinkedList();

    public zzaa(Context context, Lock lock, Looper looper, com.google.android.gms.common.zzf zzfVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzr zzrVar, Map<Api<?>, Boolean> map2, Api.zza<? extends zzcyj, zzcyk> zzaVar, ArrayList<zzt> arrayList, zzba zzbaVar, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        this.zzfwa = lock;
        this.zzalj = looper;
        this.zzfwl = lock.newCondition();
        this.zzfwk = zzfVar;
        this.zzfwj = zzbaVar;
        this.zzfwi = map2;
        this.zzfwf = zzrVar;
        this.zzfwm = z;
        HashMap hashMap = new HashMap();
        for (Api<?> api : map2.keySet()) {
            hashMap.put(api.zzahm(), api);
        }
        HashMap hashMap2 = new HashMap();
        ArrayList<zzt> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            zzt zztVar = arrayList2.get(i);
            i++;
            zzt zztVar2 = zztVar;
            hashMap2.put(zztVar2.zzfop, zztVar2);
        }
        boolean z5 = false;
        boolean z6 = true;
        boolean z7 = false;
        for (Map.Entry<Api.zzc<?>, Api.zze> entry : map.entrySet()) {
            Api api2 = (Api) hashMap.get(entry.getKey());
            Api.zze value = entry.getValue();
            if (value.zzahn()) {
                z2 = true;
                if (!this.zzfwi.get(api2).booleanValue()) {
                    z3 = z6;
                    z4 = true;
                } else {
                    z3 = z6;
                    z4 = z7;
                }
            } else {
                z2 = z5;
                z3 = false;
                z4 = z7;
            }
            zzz<?> zzzVar = new zzz<>(context, api2, looper, value, (zzt) hashMap2.get(api2), zzrVar, zzaVar);
            this.zzfwg.put(entry.getKey(), zzzVar);
            if (value.zzacc()) {
                this.zzfwh.put(entry.getKey(), zzzVar);
            }
            z5 = z2;
            z6 = z3;
            z7 = z4;
        }
        this.zzfwn = z5 && !z6 && !z7;
        this.zzfsq = zzbm.zzajy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zza(zzz<?> zzzVar, ConnectionResult connectionResult) {
        return !connectionResult.isSuccess() && !connectionResult.hasResolution() && this.zzfwi.get(zzzVar.zzaht()).booleanValue() && zzzVar.zzaix().zzahn() && this.zzfwk.isUserResolvableError(connectionResult.getErrorCode());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025 A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:3:0x0006, B:5:0x000a, B:7:0x0015, B:8:0x001f, B:10:0x0025, B:12:0x0031), top: B:2:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final boolean zzaiy() {
        this.zzfwa.lock();
        try {
            if (!this.zzfwp || !this.zzfwm) {
                return false;
            }
            for (Api.zzc<?> zzcVar : this.zzfwh.keySet()) {
                ConnectionResult zzb = zzb(zzcVar);
                if (zzb == null || !zzb.isSuccess()) {
                    return false;
                }
                while (r2.hasNext()) {
                }
            }
            this.zzfwa.unlock();
            return true;
        } finally {
            this.zzfwa.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaiz() {
        if (this.zzfwf == null) {
            this.zzfwj.zzfyk = Collections.emptySet();
            return;
        }
        HashSet hashSet = new HashSet(this.zzfwf.zzamf());
        Map<Api<?>, com.google.android.gms.common.internal.zzt> zzamh = this.zzfwf.zzamh();
        for (Api<?> api : zzamh.keySet()) {
            ConnectionResult connectionResult = getConnectionResult(api);
            if (connectionResult != null && connectionResult.isSuccess()) {
                hashSet.addAll(zzamh.get(api).zzenh);
            }
        }
        this.zzfwj.zzfyk = hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzaja() {
        while (!this.zzfwo.isEmpty()) {
            zze((zzaa) this.zzfwo.remove());
        }
        this.zzfwj.zzk(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public final ConnectionResult zzajb() {
        int i = 0;
        ConnectionResult connectionResult = null;
        int i2 = 0;
        ConnectionResult connectionResult2 = null;
        for (zzz<?> zzzVar : this.zzfwg.values()) {
            Api<?> zzaht = zzzVar.zzaht();
            ConnectionResult connectionResult3 = this.zzfwq.get(zzzVar.zzahv());
            if (!connectionResult3.isSuccess() && (!this.zzfwi.get(zzaht).booleanValue() || connectionResult3.hasResolution() || this.zzfwk.isUserResolvableError(connectionResult3.getErrorCode()))) {
                if (connectionResult3.getErrorCode() != 4 || !this.zzfwm) {
                    int priority = zzaht.zzahk().getPriority();
                    if (connectionResult2 != null && i2 <= priority) {
                        priority = i2;
                        connectionResult3 = connectionResult2;
                    }
                    i2 = priority;
                    connectionResult2 = connectionResult3;
                } else {
                    int priority2 = zzaht.zzahk().getPriority();
                    if (connectionResult == null || i > priority2) {
                        i = priority2;
                        connectionResult = connectionResult3;
                    }
                }
            }
        }
        return (connectionResult2 == null || connectionResult == null || i2 <= i) ? connectionResult2 : connectionResult;
    }

    @Nullable
    private final ConnectionResult zzb(@NonNull Api.zzc<?> zzcVar) {
        this.zzfwa.lock();
        try {
            zzz<?> zzzVar = this.zzfwg.get(zzcVar);
            if (this.zzfwq != null && zzzVar != null) {
                return this.zzfwq.get(zzzVar.zzahv());
            }
            this.zzfwa.unlock();
            return null;
        } finally {
            this.zzfwa.unlock();
        }
    }

    private final <T extends zzm<? extends Result, ? extends Api.zzb>> boolean zzg(@NonNull T t) {
        Api.zzc<?> zzahm = t.zzahm();
        ConnectionResult zzb = zzb(zzahm);
        if (zzb == null || zzb.getErrorCode() != 4) {
            return false;
        }
        t.zzu(new Status(4, null, this.zzfsq.zza(this.zzfwg.get(zzahm).zzahv(), System.identityHashCode(this.zzfwj))));
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.zzfwl.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        return isConnected() ? ConnectionResult.zzfqt : this.zzfwt != null ? this.zzfwt : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        connect();
        long nanos = timeUnit.toNanos(j);
        while (isConnecting()) {
            if (nanos <= 0) {
                disconnect();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.zzfwl.awaitNanos(nanos);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        return isConnected() ? ConnectionResult.zzfqt : this.zzfwt != null ? this.zzfwt : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final void connect() {
        this.zzfwa.lock();
        try {
            if (this.zzfwp) {
                return;
            }
            this.zzfwp = true;
            this.zzfwq = null;
            this.zzfwr = null;
            this.zzfws = null;
            this.zzfwt = null;
            this.zzfsq.zzaih();
            this.zzfsq.zza(this.zzfwg.values()).addOnCompleteListener(new zzbic(this.zzalj), new zzac(this));
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final void disconnect() {
        this.zzfwa.lock();
        try {
            this.zzfwp = false;
            this.zzfwq = null;
            this.zzfwr = null;
            if (this.zzfws != null) {
                this.zzfws.cancel();
                this.zzfws = null;
            }
            this.zzfwt = null;
            while (!this.zzfwo.isEmpty()) {
                zzm<?, ?> remove = this.zzfwo.remove();
                remove.zza((zzdn) null);
                remove.cancel();
            }
            this.zzfwl.signalAll();
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    @Nullable
    public final ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        return zzb(api.zzahm());
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final boolean isConnected() {
        boolean z;
        this.zzfwa.lock();
        try {
            if (this.zzfwq != null) {
                if (this.zzfwt == null) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final boolean isConnecting() {
        boolean z;
        this.zzfwa.lock();
        try {
            if (this.zzfwq == null) {
                if (this.zzfwp) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final boolean zza(zzcu zzcuVar) {
        this.zzfwa.lock();
        try {
            if (!this.zzfwp || zzaiy()) {
                this.zzfwa.unlock();
                return false;
            }
            this.zzfsq.zzaih();
            this.zzfws = new zzad(this, zzcuVar);
            this.zzfsq.zza(this.zzfwh.values()).addOnCompleteListener(new zzbic(this.zzalj), this.zzfws);
            this.zzfwa.unlock();
            return true;
        } catch (Throwable th) {
            this.zzfwa.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final void zzaia() {
        this.zzfwa.lock();
        try {
            this.zzfsq.zzaia();
            if (this.zzfws != null) {
                this.zzfws.cancel();
                this.zzfws = null;
            }
            if (this.zzfwr == null) {
                this.zzfwr = new ArrayMap(this.zzfwh.size());
            }
            ConnectionResult connectionResult = new ConnectionResult(4);
            for (zzz<?> zzzVar : this.zzfwh.values()) {
                this.zzfwr.put(zzzVar.zzahv(), connectionResult);
            }
            if (this.zzfwq != null) {
                this.zzfwq.putAll(this.zzfwr);
            }
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final void zzais() {
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final <A extends Api.zzb, R extends Result, T extends zzm<R, A>> T zzd(@NonNull T t) {
        if (!this.zzfwm || !zzg((zzaa) t)) {
            if (!isConnected()) {
                this.zzfwo.add(t);
                return t;
            }
            this.zzfwj.zzfyp.zzb(t);
            return (T) this.zzfwg.get(t.zzahm()).zza((zzz<?>) t);
        }
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final <A extends Api.zzb, T extends zzm<? extends Result, A>> T zze(@NonNull T t) {
        Api.zzc<A> zzahm = t.zzahm();
        if (!this.zzfwm || !zzg((zzaa) t)) {
            this.zzfwj.zzfyp.zzb(t);
            return (T) this.zzfwg.get(zzahm).zzb((zzz<?>) t);
        }
        return t;
    }
}
