package com.google.android.gms.common.internal;

import android.content.Intent;
import android.support.p001v4.app.Fragment;
/* loaded from: classes2.dex */
final class zzx extends zzv {
    private /* synthetic */ Fragment val$fragment;
    private /* synthetic */ Intent val$intent;
    private /* synthetic */ int val$requestCode;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(Intent intent, Fragment fragment, int i) {
        this.val$intent = intent;
        this.val$fragment = fragment;
        this.val$requestCode = i;
    }

    @Override // com.google.android.gms.common.internal.zzv
    public final void zzamo() {
        if (this.val$intent != null) {
            this.val$fragment.startActivityForResult(this.val$intent, this.val$requestCode);
        }
    }
}
