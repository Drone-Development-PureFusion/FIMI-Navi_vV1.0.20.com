package com.google.android.gms.common.internal;

import android.util.Log;
import java.util.ArrayList;
@Hide
/* loaded from: classes2.dex */
public abstract class zzi<TListener> {
    private TListener zzgat;
    private /* synthetic */ zzd zzgfk;
    private boolean zzgfl = false;

    public zzi(zzd zzdVar, TListener tlistener) {
        this.zzgfk = zzdVar;
        this.zzgat = tlistener;
    }

    public final void removeListener() {
        synchronized (this) {
            this.zzgat = null;
        }
    }

    public final void unregister() {
        ArrayList arrayList;
        ArrayList arrayList2;
        removeListener();
        arrayList = this.zzgfk.zzgey;
        synchronized (arrayList) {
            arrayList2 = this.zzgfk.zzgey;
            arrayList2.remove(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zzamb();

    public final void zzamc() {
        TListener tlistener;
        synchronized (this) {
            tlistener = this.zzgat;
            if (this.zzgfl) {
                String valueOf = String.valueOf(this);
                Log.w("GmsClient", new StringBuilder(String.valueOf(valueOf).length() + 47).append("Callback proxy ").append(valueOf).append(" being reused. This is not safe.").toString());
            }
        }
        if (tlistener != null) {
            try {
                zzw(tlistener);
            } catch (RuntimeException e) {
                zzamb();
                throw e;
            }
        } else {
            zzamb();
        }
        synchronized (this) {
            this.zzgfl = true;
        }
        unregister();
    }

    protected abstract void zzw(TListener tlistener);
}
