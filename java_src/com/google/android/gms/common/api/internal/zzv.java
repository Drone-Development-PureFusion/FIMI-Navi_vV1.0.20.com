package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.util.ArrayMap;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzcyj;
import com.google.android.gms.internal.zzcyk;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzv implements zzcc {
    private final Context mContext;
    private final Looper zzalj;
    private final zzba zzfvq;
    private final zzbi zzfvr;
    private final zzbi zzfvs;
    private final Map<Api.zzc<?>, zzbi> zzfvt;
    private final Api.zze zzfvv;
    private Bundle zzfvw;
    private final Lock zzfwa;
    private final Set<zzcu> zzfvu = Collections.newSetFromMap(new WeakHashMap());
    private ConnectionResult zzfvx = null;
    private ConnectionResult zzfvy = null;
    private boolean zzfvz = false;
    private int zzfwb = 0;

    private zzv(Context context, zzba zzbaVar, Lock lock, Looper looper, com.google.android.gms.common.zzf zzfVar, Map<Api.zzc<?>, Api.zze> map, Map<Api.zzc<?>, Api.zze> map2, com.google.android.gms.common.internal.zzr zzrVar, Api.zza<? extends zzcyj, zzcyk> zzaVar, Api.zze zzeVar, ArrayList<zzt> arrayList, ArrayList<zzt> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.mContext = context;
        this.zzfvq = zzbaVar;
        this.zzfwa = lock;
        this.zzalj = looper;
        this.zzfvv = zzeVar;
        this.zzfvr = new zzbi(context, this.zzfvq, lock, looper, zzfVar, map2, null, map4, null, arrayList2, new zzx(this, null));
        this.zzfvs = new zzbi(context, this.zzfvq, lock, looper, zzfVar, map, zzrVar, map3, zzaVar, arrayList, new zzy(this, null));
        ArrayMap arrayMap = new ArrayMap();
        for (Api.zzc<?> zzcVar : map2.keySet()) {
            arrayMap.put(zzcVar, this.zzfvr);
        }
        for (Api.zzc<?> zzcVar2 : map.keySet()) {
            arrayMap.put(zzcVar2, this.zzfvs);
        }
        this.zzfvt = Collections.unmodifiableMap(arrayMap);
    }

    public static zzv zza(Context context, zzba zzbaVar, Lock lock, Looper looper, com.google.android.gms.common.zzf zzfVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzr zzrVar, Map<Api<?>, Boolean> map2, Api.zza<? extends zzcyj, zzcyk> zzaVar, ArrayList<zzt> arrayList) {
        Api.zze zzeVar = null;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        for (Map.Entry<Api.zzc<?>, Api.zze> entry : map.entrySet()) {
            Api.zze value = entry.getValue();
            if (value.zzacn()) {
                zzeVar = value;
            }
            if (value.zzacc()) {
                arrayMap.put(entry.getKey(), value);
            } else {
                arrayMap2.put(entry.getKey(), value);
            }
        }
        com.google.android.gms.common.internal.zzbq.zza(!arrayMap.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        ArrayMap arrayMap3 = new ArrayMap();
        ArrayMap arrayMap4 = new ArrayMap();
        for (Api<?> api : map2.keySet()) {
            Api.zzc<?> zzahm = api.zzahm();
            if (arrayMap.containsKey(zzahm)) {
                arrayMap3.put(api, map2.get(api));
            } else if (!arrayMap2.containsKey(zzahm)) {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            } else {
                arrayMap4.put(api, map2.get(api));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList<zzt> arrayList4 = arrayList;
        int size = arrayList4.size();
        int i = 0;
        while (i < size) {
            zzt zztVar = arrayList4.get(i);
            i++;
            zzt zztVar2 = zztVar;
            if (arrayMap3.containsKey(zztVar2.zzfop)) {
                arrayList2.add(zztVar2);
            } else if (!arrayMap4.containsKey(zztVar2.zzfop)) {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            } else {
                arrayList3.add(zztVar2);
            }
        }
        return new zzv(context, zzbaVar, lock, looper, zzfVar, arrayMap, arrayMap2, zzrVar, zzaVar, zzeVar, arrayList2, arrayList3, arrayMap3, arrayMap4);
    }

    private final void zza(ConnectionResult connectionResult) {
        switch (this.zzfwb) {
            case 2:
                this.zzfvq.zzc(connectionResult);
            case 1:
                zzaiu();
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                break;
        }
        this.zzfwb = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzait() {
        if (!zzb(this.zzfvx)) {
            if (this.zzfvx != null && zzb(this.zzfvy)) {
                this.zzfvs.disconnect();
                zza(this.zzfvx);
            } else if (this.zzfvx == null || this.zzfvy == null) {
            } else {
                ConnectionResult connectionResult = this.zzfvx;
                if (this.zzfvs.zzfzb < this.zzfvr.zzfzb) {
                    connectionResult = this.zzfvy;
                }
                zza(connectionResult);
            }
        } else if (zzb(this.zzfvy) || zzaiv()) {
            switch (this.zzfwb) {
                case 2:
                    this.zzfvq.zzk(this.zzfvw);
                case 1:
                    zzaiu();
                    break;
                default:
                    Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                    break;
            }
            this.zzfwb = 0;
        } else if (this.zzfvy == null) {
        } else {
            if (this.zzfwb == 1) {
                zzaiu();
                return;
            }
            zza(this.zzfvy);
            this.zzfvr.disconnect();
        }
    }

    private final void zzaiu() {
        for (zzcu zzcuVar : this.zzfvu) {
            zzcuVar.zzacm();
        }
        this.zzfvu.clear();
    }

    private final boolean zzaiv() {
        return this.zzfvy != null && this.zzfvy.getErrorCode() == 4;
    }

    @Nullable
    private final PendingIntent zzaiw() {
        if (this.zzfvv == null) {
            return null;
        }
        return PendingIntent.getActivity(this.mContext, System.identityHashCode(this.zzfvq), this.zzfvv.getSignInIntent(), NTLMConstants.FLAG_UNIDENTIFIED_10);
    }

    private static boolean zzb(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zze(int i, boolean z) {
        this.zzfvq.zzf(i, z);
        this.zzfvy = null;
        this.zzfvx = null;
    }

    private final boolean zzf(zzm<? extends Result, ? extends Api.zzb> zzmVar) {
        Api.zzc<? extends Api.zzb> zzahm = zzmVar.zzahm();
        com.google.android.gms.common.internal.zzbq.checkArgument(this.zzfvt.containsKey(zzahm), "GoogleApiClient is not configured to use the API required for this call.");
        return this.zzfvt.get(zzahm).equals(this.zzfvs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzj(Bundle bundle) {
        if (this.zzfvw == null) {
            this.zzfvw = bundle;
        } else if (bundle == null) {
        } else {
            this.zzfvw.putAll(bundle);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final void connect() {
        this.zzfwb = 2;
        this.zzfvz = false;
        this.zzfvy = null;
        this.zzfvx = null;
        this.zzfvr.connect();
        this.zzfvs.connect();
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final void disconnect() {
        this.zzfvy = null;
        this.zzfvx = null;
        this.zzfwb = 0;
        this.zzfvr.disconnect();
        this.zzfvs.disconnect();
        zzaiu();
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.zzfvs.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.zzfvr.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    @Nullable
    public final ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        return this.zzfvt.get(api.zzahm()).equals(this.zzfvs) ? zzaiv() ? new ConnectionResult(4, zzaiw()) : this.zzfvs.getConnectionResult(api) : this.zzfvr.getConnectionResult(api);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        if (r2.zzfwb == 1) goto L12;
     */
    @Override // com.google.android.gms.common.api.internal.zzcc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean isConnected() {
        boolean z = true;
        this.zzfwa.lock();
        try {
            if (this.zzfvr.isConnected()) {
                if (!this.zzfvs.isConnected() && !zzaiv()) {
                }
                return z;
            }
            z = false;
            return z;
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final boolean isConnecting() {
        this.zzfwa.lock();
        try {
            return this.zzfwb == 2;
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final boolean zza(zzcu zzcuVar) {
        this.zzfwa.lock();
        try {
            if ((!isConnecting() && !isConnected()) || this.zzfvs.isConnected()) {
                this.zzfwa.unlock();
                return false;
            }
            this.zzfvu.add(zzcuVar);
            if (this.zzfwb == 0) {
                this.zzfwb = 1;
            }
            this.zzfvy = null;
            this.zzfvs.connect();
            return true;
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final void zzaia() {
        this.zzfwa.lock();
        try {
            boolean isConnecting = isConnecting();
            this.zzfvs.disconnect();
            this.zzfvy = new ConnectionResult(4);
            if (isConnecting) {
                new Handler(this.zzalj).post(new zzw(this));
            } else {
                zzaiu();
            }
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final void zzais() {
        this.zzfvr.zzais();
        this.zzfvs.zzais();
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final <A extends Api.zzb, R extends Result, T extends zzm<R, A>> T zzd(@NonNull T t) {
        if (zzf((zzm<? extends Result, ? extends Api.zzb>) t)) {
            if (!zzaiv()) {
                return (T) this.zzfvs.zzd(t);
            }
            t.zzu(new Status(4, null, zzaiw()));
            return t;
        }
        return (T) this.zzfvr.zzd(t);
    }

    @Override // com.google.android.gms.common.api.internal.zzcc
    public final <A extends Api.zzb, T extends zzm<? extends Result, A>> T zze(@NonNull T t) {
        if (zzf((zzm<? extends Result, ? extends Api.zzb>) t)) {
            if (!zzaiv()) {
                return (T) this.zzfvs.zze(t);
            }
            t.zzu(new Status(4, null, zzaiw()));
            return t;
        }
        return (T) this.zzfvr.zze(t);
    }
}
