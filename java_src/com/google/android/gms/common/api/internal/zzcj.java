package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcj extends Handler {
    private /* synthetic */ zzci zzgav;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcj(zzci zzciVar, Looper looper) {
        super(looper);
        this.zzgav = zzciVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        boolean z = true;
        if (message.what != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzbq.checkArgument(z);
        this.zzgav.zzb((zzcl) message.obj);
    }
}
