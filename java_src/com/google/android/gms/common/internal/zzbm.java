package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
/* loaded from: classes2.dex */
final class zzbm implements zzbo<R, T> {
    private /* synthetic */ Response zzghu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbm(Response response) {
        this.zzghu = response;
    }

    @Override // com.google.android.gms.common.internal.zzbo
    public final /* synthetic */ Object zzb(Result result) {
        this.zzghu.setResult(result);
        return this.zzghu;
    }
}
