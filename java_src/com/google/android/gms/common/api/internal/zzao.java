package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzcyj;
import com.google.android.gms.internal.zzcyk;
import com.google.android.gms.internal.zzcyw;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
/* loaded from: classes2.dex */
public final class zzao implements zzbh {
    private final Context mContext;
    private final Api.zza<? extends zzcyj, zzcyk> zzfth;
    private final Lock zzfwa;
    private final com.google.android.gms.common.internal.zzr zzfwf;
    private final Map<Api<?>, Boolean> zzfwi;
    private final com.google.android.gms.common.zzf zzfwk;
    private ConnectionResult zzfwt;
    private final zzbi zzfxd;
    private int zzfxg;
    private int zzfxi;
    private zzcyj zzfxl;
    private boolean zzfxm;
    private boolean zzfxn;
    private boolean zzfxo;
    private com.google.android.gms.common.internal.zzan zzfxp;
    private boolean zzfxq;
    private boolean zzfxr;
    private int zzfxh = 0;
    private final Bundle zzfxj = new Bundle();
    private final Set<Api.zzc> zzfxk = new HashSet();
    private ArrayList<Future<?>> zzfxs = new ArrayList<>();

    public zzao(zzbi zzbiVar, com.google.android.gms.common.internal.zzr zzrVar, Map<Api<?>, Boolean> map, com.google.android.gms.common.zzf zzfVar, Api.zza<? extends zzcyj, zzcyk> zzaVar, Lock lock, Context context) {
        this.zzfxd = zzbiVar;
        this.zzfwf = zzrVar;
        this.zzfwi = map;
        this.zzfwk = zzfVar;
        this.zzfth = zzaVar;
        this.zzfwa = lock;
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzcyw zzcywVar) {
        if (!zzbs(0)) {
            return;
        }
        ConnectionResult zzain = zzcywVar.zzain();
        if (!zzain.isSuccess()) {
            if (!zzd(zzain)) {
                zze(zzain);
                return;
            }
            zzajn();
            zzajl();
            return;
        }
        com.google.android.gms.common.internal.zzbt zzbfa = zzcywVar.zzbfa();
        ConnectionResult zzain2 = zzbfa.zzain();
        if (!zzain2.isSuccess()) {
            String valueOf = String.valueOf(zzain2);
            Log.wtf("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(valueOf).toString(), new Exception());
            zze(zzain2);
            return;
        }
        this.zzfxo = true;
        this.zzfxp = zzbfa.zzamy();
        this.zzfxq = zzbfa.zzamz();
        this.zzfxr = zzbfa.zzana();
        zzajl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzajk() {
        this.zzfxi--;
        if (this.zzfxi > 0) {
            return false;
        }
        if (this.zzfxi < 0) {
            Log.w("GoogleApiClientConnecting", this.zzfxd.zzfvq.zzaju());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            zze(new ConnectionResult(8, null));
            return false;
        } else if (this.zzfwt == null) {
            return true;
        } else {
            this.zzfxd.zzfzb = this.zzfxg;
            zze(this.zzfwt);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzajl() {
        if (this.zzfxi != 0) {
            return;
        }
        if (this.zzfxn && !this.zzfxo) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        this.zzfxh = 1;
        this.zzfxi = this.zzfxd.zzfyj.size();
        for (Api.zzc<?> zzcVar : this.zzfxd.zzfyj.keySet()) {
            if (!this.zzfxd.zzfyy.containsKey(zzcVar)) {
                arrayList.add(this.zzfxd.zzfyj.get(zzcVar));
            } else if (zzajk()) {
                zzajm();
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.zzfxs.add(zzbl.zzajx().submit(new zzau(this, arrayList)));
    }

    private final void zzajm() {
        this.zzfxd.zzajw();
        zzbl.zzajx().execute(new zzap(this));
        if (this.zzfxl != null) {
            if (this.zzfxq) {
                this.zzfxl.zza(this.zzfxp, this.zzfxr);
            }
            zzbk(false);
        }
        for (Api.zzc<?> zzcVar : this.zzfxd.zzfyy.keySet()) {
            this.zzfxd.zzfyj.get(zzcVar).disconnect();
        }
        this.zzfxd.zzfzc.zzk(this.zzfxj.isEmpty() ? null : this.zzfxj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzajn() {
        this.zzfxn = false;
        this.zzfxd.zzfvq.zzfyk = Collections.emptySet();
        for (Api.zzc<?> zzcVar : this.zzfxk) {
            if (!this.zzfxd.zzfyy.containsKey(zzcVar)) {
                this.zzfxd.zzfyy.put(zzcVar, new ConnectionResult(17, null));
            }
        }
    }

    private final void zzajo() {
        ArrayList<Future<?>> arrayList = this.zzfxs;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Future<?> future = arrayList.get(i);
            i++;
            future.cancel(true);
        }
        this.zzfxs.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Set<Scope> zzajp() {
        if (this.zzfwf == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(this.zzfwf.zzamf());
        Map<Api<?>, com.google.android.gms.common.internal.zzt> zzamh = this.zzfwf.zzamh();
        for (Api<?> api : zzamh.keySet()) {
            if (!this.zzfxd.zzfyy.containsKey(api.zzahm())) {
                hashSet.addAll(zzamh.get(api).zzenh);
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x001b, code lost:
        if (r3 >= r5.zzfxg) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0013, code lost:
        if ((r6.hasResolution() ? true : r5.zzfwk.zzbo(r6.getErrorCode()) != null) != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003f, code lost:
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzb(ConnectionResult connectionResult, Api<?> api, boolean z) {
        boolean z2 = true;
        int priority = api.zzahk().getPriority();
        if (z) {
        }
        if (this.zzfwt != null) {
        }
        if (z2) {
            this.zzfwt = connectionResult;
            this.zzfxg = priority;
        }
        this.zzfxd.zzfyy.put(api.zzahm(), connectionResult);
    }

    private final void zzbk(boolean z) {
        if (this.zzfxl != null) {
            if (this.zzfxl.isConnected() && z) {
                this.zzfxl.zzbet();
            }
            this.zzfxl.disconnect();
            this.zzfxp = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzbs(int i) {
        if (this.zzfxh != i) {
            Log.w("GoogleApiClientConnecting", this.zzfxd.zzfvq.zzaju());
            String valueOf = String.valueOf(this);
            Log.w("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf).length() + 23).append("Unexpected callback in ").append(valueOf).toString());
            Log.w("GoogleApiClientConnecting", new StringBuilder(33).append("mRemainingConnections=").append(this.zzfxi).toString());
            String zzbt = zzbt(this.zzfxh);
            String zzbt2 = zzbt(i);
            Log.wtf("GoogleApiClientConnecting", new StringBuilder(String.valueOf(zzbt).length() + 70 + String.valueOf(zzbt2).length()).append("GoogleApiClient connecting is in step ").append(zzbt).append(" but received callback for step ").append(zzbt2).toString(), new Exception());
            zze(new ConnectionResult(8, null));
            return false;
        }
        return true;
    }

    private static String zzbt(int i) {
        switch (i) {
            case 0:
                return "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
            case 1:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzd(ConnectionResult connectionResult) {
        return this.zzfxm && !connectionResult.hasResolution();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zze(ConnectionResult connectionResult) {
        zzajo();
        zzbk(!connectionResult.hasResolution());
        this.zzfxd.zzg(connectionResult);
        this.zzfxd.zzfzc.zzc(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void begin() {
        this.zzfxd.zzfyy.clear();
        this.zzfxn = false;
        this.zzfwt = null;
        this.zzfxh = 0;
        this.zzfxm = true;
        this.zzfxo = false;
        this.zzfxq = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Api<?> api : this.zzfwi.keySet()) {
            Api.zze zzeVar = this.zzfxd.zzfyj.get(api.zzahm());
            boolean z2 = (api.zzahk().getPriority() == 1) | z;
            boolean booleanValue = this.zzfwi.get(api).booleanValue();
            if (zzeVar.zzacc()) {
                this.zzfxn = true;
                if (booleanValue) {
                    this.zzfxk.add(api.zzahm());
                } else {
                    this.zzfxm = false;
                }
            }
            hashMap.put(zzeVar, new zzaq(this, api, booleanValue));
            z = z2;
        }
        if (z) {
            this.zzfxn = false;
        }
        if (this.zzfxn) {
            this.zzfwf.zzc(Integer.valueOf(System.identityHashCode(this.zzfxd.zzfvq)));
            zzax zzaxVar = new zzax(this, null);
            this.zzfxl = this.zzfth.zza(this.mContext, this.zzfxd.zzfvq.getLooper(), this.zzfwf, this.zzfwf.zzaml(), zzaxVar, zzaxVar);
        }
        this.zzfxi = this.zzfxd.zzfyj.size();
        this.zzfxs.add(zzbl.zzajx().submit(new zzar(this, hashMap)));
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void connect() {
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final boolean disconnect() {
        zzajo();
        zzbk(true);
        this.zzfxd.zzg(null);
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void onConnected(Bundle bundle) {
        if (!zzbs(1)) {
            return;
        }
        if (bundle != null) {
            this.zzfxj.putAll(bundle);
        }
        if (!zzajk()) {
            return;
        }
        zzajm();
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void onConnectionSuspended(int i) {
        zze(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
        if (!zzbs(1)) {
            return;
        }
        zzb(connectionResult, api, z);
        if (!zzajk()) {
            return;
        }
        zzajm();
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final <A extends Api.zzb, R extends Result, T extends zzm<R, A>> T zzd(T t) {
        this.zzfxd.zzfvq.zzfwo.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.zzbh
    public final <A extends Api.zzb, T extends zzm<? extends Result, A>> T zze(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
