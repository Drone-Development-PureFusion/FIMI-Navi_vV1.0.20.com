package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.zzcf;
/* loaded from: classes2.dex */
final class zzy extends zzv {
    private /* synthetic */ Intent val$intent;
    private /* synthetic */ int val$requestCode;
    private /* synthetic */ zzcf zzgfw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzy(Intent intent, zzcf zzcfVar, int i) {
        this.val$intent = intent;
        this.zzgfw = zzcfVar;
        this.val$requestCode = i;
    }

    @Override // com.google.android.gms.common.internal.zzv
    public final void zzamo() {
        if (this.val$intent != null) {
            this.zzgfw.startActivityForResult(this.val$intent, this.val$requestCode);
        }
    }
}
