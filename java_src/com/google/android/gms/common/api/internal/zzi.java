package com.google.android.gms.common.api.internal;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes2.dex */
public class zzi extends zzo {
    private final SparseArray<zza> zzfuf = new SparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class zza implements GoogleApiClient.OnConnectionFailedListener {
        public final int zzfug;
        public final GoogleApiClient zzfuh;
        public final GoogleApiClient.OnConnectionFailedListener zzfui;

        public zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.zzfug = i;
            this.zzfuh = googleApiClient;
            this.zzfui = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 27).append("beginFailureResolution for ").append(valueOf).toString());
            zzi.this.zzb(connectionResult, this.zzfug);
        }
    }

    private zzi(zzcf zzcfVar) {
        super(zzcfVar);
        this.zzgam.zza("AutoManageHelper", this);
    }

    public static zzi zza(zzce zzceVar) {
        zzcf zzb = zzb(zzceVar);
        zzi zziVar = (zzi) zzb.zza("AutoManageHelper", zzi.class);
        return zziVar != null ? zziVar : new zzi(zzb);
    }

    @Nullable
    private final zza zzbr(int i) {
        if (this.zzfuf.size() <= i) {
            return null;
        }
        return this.zzfuf.get(this.zzfuf.keyAt(i));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.zzfuf.size(); i++) {
            zza zzbr = zzbr(i);
            if (zzbr != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(zzbr.zzfug);
                printWriter.println(":");
                zzbr.zzfuh.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzo, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStart() {
        super.onStart();
        boolean z = this.mStarted;
        String valueOf = String.valueOf(this.zzfuf);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 14).append("onStart ").append(z).append(" ").append(valueOf).toString());
        if (this.zzfut.get() == null) {
            for (int i = 0; i < this.zzfuf.size(); i++) {
                zza zzbr = zzbr(i);
                if (zzbr != null) {
                    zzbr.zzfuh.connect();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zzo, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        super.onStop();
        for (int i = 0; i < this.zzfuf.size(); i++) {
            zza zzbr = zzbr(i);
            if (zzbr != null) {
                zzbr.zzfuh.disconnect();
            }
        }
    }

    public final void zza(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(googleApiClient, "GoogleApiClient instance cannot be null");
        com.google.android.gms.common.internal.zzbq.zza(this.zzfuf.indexOfKey(i) < 0, new StringBuilder(54).append("Already managing a GoogleApiClient with id ").append(i).toString());
        zzp zzpVar = this.zzfut.get();
        boolean z = this.mStarted;
        String valueOf = String.valueOf(zzpVar);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf).length() + 49).append("starting AutoManage for client ").append(i).append(" ").append(z).append(" ").append(valueOf).toString());
        this.zzfuf.put(i, new zza(i, googleApiClient, onConnectionFailedListener));
        if (!this.mStarted || zzpVar != null) {
            return;
        }
        String valueOf2 = String.valueOf(googleApiClient);
        Log.d("AutoManageHelper", new StringBuilder(String.valueOf(valueOf2).length() + 11).append("connecting ").append(valueOf2).toString());
        googleApiClient.connect();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zzo
    public final void zza(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        zza zzaVar = this.zzfuf.get(i);
        if (zzaVar == null) {
            return;
        }
        zzbq(i);
        GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = zzaVar.zzfui;
        if (onConnectionFailedListener == null) {
            return;
        }
        onConnectionFailedListener.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.zzo
    protected final void zzaih() {
        for (int i = 0; i < this.zzfuf.size(); i++) {
            zza zzbr = zzbr(i);
            if (zzbr != null) {
                zzbr.zzfuh.connect();
            }
        }
    }

    public final void zzbq(int i) {
        zza zzaVar = this.zzfuf.get(i);
        this.zzfuf.remove(i);
        if (zzaVar != null) {
            zzaVar.zzfuh.unregisterConnectionFailedListener(zzaVar);
            zzaVar.zzfuh.disconnect();
        }
    }
}
