package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
final class zzbl implements PendingResult.zza {
    private /* synthetic */ PendingResult zzghq;
    private /* synthetic */ TaskCompletionSource zzghr;
    private /* synthetic */ zzbo zzghs;
    private /* synthetic */ zzbp zzght;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbl(PendingResult pendingResult, TaskCompletionSource taskCompletionSource, zzbo zzboVar, zzbp zzbpVar) {
        this.zzghq = pendingResult;
        this.zzghr = taskCompletionSource;
        this.zzghs = zzboVar;
        this.zzght = zzbpVar;
    }

    @Override // com.google.android.gms.common.api.PendingResult.zza
    public final void zzr(Status status) {
        if (!status.isSuccess()) {
            this.zzghr.setException(this.zzght.zzz(status));
            return;
        }
        this.zzghr.setResult(this.zzghs.zzb(this.zzghq.await(0L, TimeUnit.MILLISECONDS)));
    }
}
