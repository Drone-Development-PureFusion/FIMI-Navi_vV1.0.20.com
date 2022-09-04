package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzai extends zzag implements Handler.Callback {
    private final Context mApplicationContext;
    private final Handler mHandler;
    private final HashMap<zzah, zzaj> zzggw = new HashMap<>();
    private final com.google.android.gms.common.stats.zza zzggx = com.google.android.gms.common.stats.zza.zzanm();
    private final long zzggy = 5000;
    private final long zzggz = 300000;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzai(Context context) {
        this.mApplicationContext = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), this);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                synchronized (this.zzggw) {
                    zzah zzahVar = (zzah) message.obj;
                    zzaj zzajVar = this.zzggw.get(zzahVar);
                    if (zzajVar != null && zzajVar.zzamv()) {
                        if (zzajVar.isBound()) {
                            zzajVar.zzgs("GmsClientSupervisor");
                        }
                        this.zzggw.remove(zzahVar);
                    }
                }
                return true;
            case 1:
                synchronized (this.zzggw) {
                    zzah zzahVar2 = (zzah) message.obj;
                    zzaj zzajVar2 = this.zzggw.get(zzahVar2);
                    if (zzajVar2 != null && zzajVar2.getState() == 3) {
                        String valueOf = String.valueOf(zzahVar2);
                        Log.wtf("GmsClientSupervisor", new StringBuilder(String.valueOf(valueOf).length() + 47).append("Timeout waiting for ServiceConnection callback ").append(valueOf).toString(), new Exception());
                        ComponentName componentName = zzajVar2.getComponentName();
                        if (componentName == null) {
                            componentName = zzahVar2.getComponentName();
                        }
                        zzajVar2.onServiceDisconnected(componentName == null ? new ComponentName(zzahVar2.getPackage(), "unknown") : componentName);
                    }
                }
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzag
    public final boolean zza(zzah zzahVar, ServiceConnection serviceConnection, String str) {
        boolean isBound;
        zzbq.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzggw) {
            zzaj zzajVar = this.zzggw.get(zzahVar);
            if (zzajVar != null) {
                this.mHandler.removeMessages(0, zzahVar);
                if (!zzajVar.zza(serviceConnection)) {
                    zzajVar.zza(serviceConnection, str);
                    switch (zzajVar.getState()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzajVar.getComponentName(), zzajVar.getBinder());
                            break;
                        case 2:
                            zzajVar.zzgr(str);
                            break;
                    }
                } else {
                    String valueOf = String.valueOf(zzahVar);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(valueOf).toString());
                }
            } else {
                zzajVar = new zzaj(this, zzahVar);
                zzajVar.zza(serviceConnection, str);
                zzajVar.zzgr(str);
                this.zzggw.put(zzahVar, zzajVar);
            }
            isBound = zzajVar.isBound();
        }
        return isBound;
    }

    @Override // com.google.android.gms.common.internal.zzag
    protected final void zzb(zzah zzahVar, ServiceConnection serviceConnection, String str) {
        zzbq.checkNotNull(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzggw) {
            zzaj zzajVar = this.zzggw.get(zzahVar);
            if (zzajVar == null) {
                String valueOf = String.valueOf(zzahVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Nonexistent connection status for service config: ").append(valueOf).toString());
            } else if (!zzajVar.zza(serviceConnection)) {
                String valueOf2 = String.valueOf(zzahVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(valueOf2).toString());
            } else {
                zzajVar.zzb(serviceConnection, str);
                if (zzajVar.zzamv()) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zzahVar), this.zzggy);
                }
            }
        }
    }
}
