package com.google.android.gms.dynamic;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
/* loaded from: classes2.dex */
final class zzf implements View.OnClickListener {
    private /* synthetic */ Context val$context;
    private /* synthetic */ Intent zzhcx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(Context context, Intent intent) {
        this.val$context = context;
        this.zzhcx = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.val$context.startActivity(this.zzhcx);
        } catch (ActivityNotFoundException e) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
        }
    }
}
