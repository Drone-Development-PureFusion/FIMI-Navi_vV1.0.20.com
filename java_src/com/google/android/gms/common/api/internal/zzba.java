package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.p001v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbgs;
import com.google.android.gms.internal.zzcyj;
import com.google.android.gms.internal.zzcyk;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
/* loaded from: classes2.dex */
public final class zzba extends GoogleApiClient implements zzcd {
    private final Context mContext;
    private final Looper zzalj;
    private final int zzfte;
    private final GoogleApiAvailability zzftg;
    private Api.zza<? extends zzcyj, zzcyk> zzfth;
    private final Lock zzfwa;
    private com.google.android.gms.common.internal.zzr zzfwf;
    private Map<Api<?>, Boolean> zzfwi;
    private final com.google.android.gms.common.internal.zzae zzfyc;
    private volatile boolean zzfye;
    private final zzbf zzfyh;
    private zzbx zzfyi;
    final Map<Api.zzc<?>, Api.zze> zzfyj;
    private final ArrayList<zzt> zzfym;
    private Integer zzfyn;
    final zzdk zzfyp;
    private zzcc zzfyd = null;
    final Queue<zzm<?, ?>> zzfwo = new LinkedList();
    private long zzfyf = 120000;
    private long zzfyg = 5000;
    Set<Scope> zzfyk = new HashSet();
    private final zzcm zzfyl = new zzcm();
    Set<zzdh> zzfyo = null;
    private final com.google.android.gms.common.internal.zzaf zzfyq = new zzbb(this);
    private boolean zzftk = false;

    public zzba(Context context, Lock lock, Looper looper, com.google.android.gms.common.internal.zzr zzrVar, GoogleApiAvailability googleApiAvailability, Api.zza<? extends zzcyj, zzcyk> zzaVar, Map<Api<?>, Boolean> map, List<GoogleApiClient.ConnectionCallbacks> list, List<GoogleApiClient.OnConnectionFailedListener> list2, Map<Api.zzc<?>, Api.zze> map2, int i, int i2, ArrayList<zzt> arrayList, boolean z) {
        this.zzfyn = null;
        this.mContext = context;
        this.zzfwa = lock;
        this.zzfyc = new com.google.android.gms.common.internal.zzae(looper, this.zzfyq);
        this.zzalj = looper;
        this.zzfyh = new zzbf(this, looper);
        this.zzftg = googleApiAvailability;
        this.zzfte = i;
        if (this.zzfte >= 0) {
            this.zzfyn = Integer.valueOf(i2);
        }
        this.zzfwi = map;
        this.zzfyj = map2;
        this.zzfym = arrayList;
        this.zzfyp = new zzdk(this.zzfyj);
        for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : list) {
            this.zzfyc.registerConnectionCallbacks(connectionCallbacks);
        }
        for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : list2) {
            this.zzfyc.registerConnectionFailedListener(onConnectionFailedListener);
        }
        this.zzfwf = zzrVar;
        this.zzfth = zzaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resume() {
        this.zzfwa.lock();
        try {
            if (this.zzfye) {
                zzajq();
            }
        } finally {
            this.zzfwa.unlock();
        }
    }

    public static int zza(Iterable<Api.zze> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (Api.zze zzeVar : iterable) {
            if (zzeVar.zzacc()) {
                z3 = true;
            }
            z2 = zzeVar.zzacn() ? true : z2;
        }
        if (z3) {
            return (!z2 || !z) ? 1 : 2;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(GoogleApiClient googleApiClient, zzdb zzdbVar, boolean z) {
        zzbgs.zzgif.zzd(googleApiClient).setResultCallback(new zzbe(this, zzdbVar, z, googleApiClient));
    }

    private final void zzajq() {
        this.zzfyc.zzamt();
        this.zzfyd.connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzajr() {
        this.zzfwa.lock();
        try {
            if (zzajs()) {
                zzajq();
            }
        } finally {
            this.zzfwa.unlock();
        }
    }

    private final void zzbu(int i) {
        if (this.zzfyn == null) {
            this.zzfyn = Integer.valueOf(i);
        } else if (this.zzfyn.intValue() != i) {
            String zzbv = zzbv(i);
            String zzbv2 = zzbv(this.zzfyn.intValue());
            throw new IllegalStateException(new StringBuilder(String.valueOf(zzbv).length() + 51 + String.valueOf(zzbv2).length()).append("Cannot use sign-in mode: ").append(zzbv).append(". Mode was already set to ").append(zzbv2).toString());
        }
        if (this.zzfyd != null) {
            return;
        }
        boolean z = false;
        boolean z2 = false;
        for (Api.zze zzeVar : this.zzfyj.values()) {
            if (zzeVar.zzacc()) {
                z2 = true;
            }
            z = zzeVar.zzacn() ? true : z;
        }
        switch (this.zzfyn.intValue()) {
            case 1:
                if (!z2) {
                    throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                }
                if (z) {
                    throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
                break;
            case 2:
                if (z2) {
                    if (this.zzftk) {
                        this.zzfyd = new zzaa(this.mContext, this.zzfwa, this.zzalj, this.zzftg, this.zzfyj, this.zzfwf, this.zzfwi, this.zzfth, this.zzfym, this, true);
                        return;
                    } else {
                        this.zzfyd = zzv.zza(this.mContext, this, this.zzfwa, this.zzalj, this.zzftg, this.zzfyj, this.zzfwf, this.zzfwi, this.zzfth, this.zzfym);
                        return;
                    }
                }
                break;
        }
        if (!this.zzftk || z) {
            this.zzfyd = new zzbi(this.mContext, this, this.zzfwa, this.zzalj, this.zzftg, this.zzfyj, this.zzfwf, this.zzfwi, this.zzfth, this.zzfym, this);
        } else {
            this.zzfyd = new zzaa(this.mContext, this.zzfwa, this.zzalj, this.zzftg, this.zzfyj, this.zzfwf, this.zzfwi, this.zzfth, this.zzfym, this, false);
        }
    }

    private static String zzbv(int i) {
        switch (i) {
            case 1:
                return "SIGN_IN_MODE_REQUIRED";
            case 2:
                return "SIGN_IN_MODE_OPTIONAL";
            case 3:
                return "SIGN_IN_MODE_NONE";
            default:
                return "UNKNOWN";
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult blockingConnect() {
        boolean z = true;
        com.google.android.gms.common.internal.zzbq.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.zzfwa.lock();
        try {
            if (this.zzfte >= 0) {
                if (this.zzfyn == null) {
                    z = false;
                }
                com.google.android.gms.common.internal.zzbq.zza(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.zzfyn == null) {
                this.zzfyn = Integer.valueOf(zza(this.zzfyj.values(), false));
            } else if (this.zzfyn.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzbu(this.zzfyn.intValue());
            this.zzfyc.zzamt();
            return this.zzfyd.blockingConnect();
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final ConnectionResult blockingConnect(long j, @NonNull TimeUnit timeUnit) {
        boolean z = false;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            z = true;
        }
        com.google.android.gms.common.internal.zzbq.zza(z, "blockingConnect must not be called on the UI thread");
        com.google.android.gms.common.internal.zzbq.checkNotNull(timeUnit, "TimeUnit must not be null");
        this.zzfwa.lock();
        try {
            if (this.zzfyn == null) {
                this.zzfyn = Integer.valueOf(zza(this.zzfyj.values(), false));
            } else if (this.zzfyn.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzbu(this.zzfyn.intValue());
            this.zzfyc.zzamt();
            return this.zzfyd.blockingConnect(j, timeUnit);
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final PendingResult<Status> clearDefaultAccountAndReconnect() {
        com.google.android.gms.common.internal.zzbq.zza(isConnected(), "GoogleApiClient is not connected yet.");
        com.google.android.gms.common.internal.zzbq.zza(this.zzfyn.intValue() != 2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        zzdb zzdbVar = new zzdb(this);
        if (this.zzfyj.containsKey(zzbgs.zzegu)) {
            zza(this, zzdbVar, false);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            GoogleApiClient build = new GoogleApiClient.Builder(this.mContext).addApi(zzbgs.API).addConnectionCallbacks(new zzbc(this, atomicReference, zzdbVar)).addOnConnectionFailedListener(new zzbd(this, zzdbVar)).setHandler(this.zzfyh).build();
            atomicReference.set(build);
            build.connect();
        }
        return zzdbVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect() {
        boolean z = false;
        this.zzfwa.lock();
        try {
            if (this.zzfte >= 0) {
                if (this.zzfyn != null) {
                    z = true;
                }
                com.google.android.gms.common.internal.zzbq.zza(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.zzfyn == null) {
                this.zzfyn = Integer.valueOf(zza(this.zzfyj.values(), false));
            } else if (this.zzfyn.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            connect(this.zzfyn.intValue());
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect(int i) {
        boolean z = true;
        this.zzfwa.lock();
        if (i != 3 && i != 1 && i != 2) {
            z = false;
        }
        try {
            com.google.android.gms.common.internal.zzbq.checkArgument(z, new StringBuilder(33).append("Illegal sign-in mode: ").append(i).toString());
            zzbu(i);
            zzajq();
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void disconnect() {
        this.zzfwa.lock();
        try {
            this.zzfyp.release();
            if (this.zzfyd != null) {
                this.zzfyd.disconnect();
            }
            this.zzfyl.release();
            for (zzm<?, ?> zzmVar : this.zzfwo) {
                zzmVar.zza((zzdn) null);
                zzmVar.cancel();
            }
            this.zzfwo.clear();
            if (this.zzfyd == null) {
                return;
            }
            zzajs();
            this.zzfyc.zzams();
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.mContext);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.zzfye);
        printWriter.append(" mWorkQueue.size()=").print(this.zzfwo.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.zzfyp.zzgbs.size());
        if (this.zzfyd != null) {
            this.zzfyd.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public final ConnectionResult getConnectionResult(@NonNull Api<?> api) {
        this.zzfwa.lock();
        try {
            if (!isConnected() && !this.zzfye) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.zzfyj.containsKey(api.zzahm())) {
                throw new IllegalArgumentException(String.valueOf(api.getName()).concat(" was never registered with GoogleApiClient"));
            }
            ConnectionResult connectionResult = this.zzfyd.getConnectionResult(api);
            if (connectionResult == null) {
                if (this.zzfye) {
                    connectionResult = ConnectionResult.zzfqt;
                } else {
                    Log.w("GoogleApiClientImpl", zzaju());
                    Log.wtf("GoogleApiClientImpl", String.valueOf(api.getName()).concat(" requested in getConnectionResult is not connected but is not present in the failed  connections map"), new Exception());
                    connectionResult = new ConnectionResult(8, null);
                }
            }
            return connectionResult;
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Context getContext() {
        return this.mContext;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return this.zzalj;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean hasConnectedApi(@NonNull Api<?> api) {
        if (!isConnected()) {
            return false;
        }
        Api.zze zzeVar = this.zzfyj.get(api.zzahm());
        return zzeVar != null && zzeVar.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnected() {
        return this.zzfyd != null && this.zzfyd.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnecting() {
        return this.zzfyd != null && this.zzfyd.isConnecting();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionCallbacksRegistered(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.zzfyc.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean isConnectionFailedListenerRegistered(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.zzfyc.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zzfyc.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zzfyc.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void stopAutoManage(@NonNull FragmentActivity fragmentActivity) {
        zzce zzceVar = new zzce(fragmentActivity);
        if (this.zzfte >= 0) {
            zzi.zza(zzceVar).zzbq(this.zzfte);
            return;
        }
        throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionCallbacks(@NonNull GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zzfyc.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionFailedListener(@NonNull GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zzfyc.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    @NonNull
    public final <C extends Api.zze> C zza(@NonNull Api.zzc<C> zzcVar) {
        C c = (C) this.zzfyj.get(zzcVar);
        com.google.android.gms.common.internal.zzbq.checkNotNull(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zza(zzdh zzdhVar) {
        this.zzfwa.lock();
        try {
            if (this.zzfyo == null) {
                this.zzfyo = new HashSet();
            }
            this.zzfyo.add(zzdhVar);
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean zza(@NonNull Api<?> api) {
        return this.zzfyj.containsKey(api.zzahm());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean zza(zzcu zzcuVar) {
        return this.zzfyd != null && this.zzfyd.zza(zzcuVar);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zzaia() {
        if (this.zzfyd != null) {
            this.zzfyd.zzaia();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzajs() {
        if (!this.zzfye) {
            return false;
        }
        this.zzfye = false;
        this.zzfyh.removeMessages(2);
        this.zzfyh.removeMessages(1);
        if (this.zzfyi != null) {
            this.zzfyi.unregister();
            this.zzfyi = null;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzajt() {
        boolean z = false;
        this.zzfwa.lock();
        try {
            if (this.zzfyo != null) {
                if (!this.zzfyo.isEmpty()) {
                    z = true;
                }
            }
            return z;
        } finally {
            this.zzfwa.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzaju() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void zzb(zzdh zzdhVar) {
        this.zzfwa.lock();
        try {
            if (this.zzfyo == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (!this.zzfyo.remove(zzdhVar)) {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            } else if (!zzajt()) {
                this.zzfyd.zzais();
            }
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcd
    public final void zzc(ConnectionResult connectionResult) {
        if (!com.google.android.gms.common.zzf.zzd(this.mContext, connectionResult.getErrorCode())) {
            zzajs();
        }
        if (!this.zzfye) {
            this.zzfyc.zzk(connectionResult);
            this.zzfyc.zzams();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.zzb, R extends Result, T extends zzm<R, A>> T zzd(@NonNull T t) {
        com.google.android.gms.common.internal.zzbq.checkArgument(t.zzahm() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean containsKey = this.zzfyj.containsKey(t.zzahm());
        String name = t.zzaht() != null ? t.zzaht().getName() : "the API";
        com.google.android.gms.common.internal.zzbq.checkArgument(containsKey, new StringBuilder(String.valueOf(name).length() + 65).append("GoogleApiClient is not configured to use ").append(name).append(" required for this call.").toString());
        this.zzfwa.lock();
        try {
            if (this.zzfyd == null) {
                this.zzfwo.add(t);
            } else {
                t = (T) this.zzfyd.zzd(t);
            }
            return t;
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.zzb, T extends zzm<? extends Result, A>> T zze(@NonNull T t) {
        com.google.android.gms.common.internal.zzbq.checkArgument(t.zzahm() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.zzfyj.containsKey(t.zzahm());
        String name = t.zzaht() != null ? t.zzaht().getName() : "the API";
        com.google.android.gms.common.internal.zzbq.checkArgument(containsKey, new StringBuilder(String.valueOf(name).length() + 65).append("GoogleApiClient is not configured to use ").append(name).append(" required for this call.").toString());
        this.zzfwa.lock();
        try {
            if (this.zzfyd == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (this.zzfye) {
                this.zzfwo.add(t);
                while (!this.zzfwo.isEmpty()) {
                    zzm<?, ?> remove = this.zzfwo.remove();
                    this.zzfyp.zzb(remove);
                    remove.zzu(Status.zzfts);
                }
            } else {
                t = (T) this.zzfyd.zze(t);
            }
            return t;
        } finally {
            this.zzfwa.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcd
    public final void zzf(int i, boolean z) {
        if (i == 1 && !z && !this.zzfye) {
            this.zzfye = true;
            if (this.zzfyi == null) {
                this.zzfyi = GoogleApiAvailability.zza(this.mContext.getApplicationContext(), new zzbg(this));
            }
            this.zzfyh.sendMessageDelayed(this.zzfyh.obtainMessage(1), this.zzfyf);
            this.zzfyh.sendMessageDelayed(this.zzfyh.obtainMessage(2), this.zzfyg);
        }
        this.zzfyp.zzald();
        this.zzfyc.zzcf(i);
        this.zzfyc.zzams();
        if (i == 2) {
            zzajq();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzcd
    public final void zzk(Bundle bundle) {
        while (!this.zzfwo.isEmpty()) {
            zze(this.zzfwo.remove());
        }
        this.zzfyc.zzl(bundle);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <L> zzci<L> zzt(@NonNull L l) {
        this.zzfwa.lock();
        try {
            return this.zzfyl.zza(l, this.zzalj, "NO_TYPE");
        } finally {
            this.zzfwa.unlock();
        }
    }
}
