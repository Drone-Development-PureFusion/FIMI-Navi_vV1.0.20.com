package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbf extends Handler {
    private /* synthetic */ zzba zzfyr;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbf(zzba zzbaVar, Looper looper) {
        super(looper);
        this.zzfyr = zzbaVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.zzfyr.zzajr();
                return;
            case 2:
                this.zzfyr.resume();
                return;
            default:
                Log.w("GoogleApiClientImpl", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                return;
        }
    }
}
