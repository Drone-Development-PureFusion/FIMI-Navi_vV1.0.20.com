package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
/* loaded from: classes2.dex */
final class zzbgi extends Drawable.ConstantState {
    int mChangingConfigurations;
    int zzgem;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbgi(zzbgi zzbgiVar) {
        if (zzbgiVar != null) {
            this.mChangingConfigurations = zzbgiVar.mChangingConfigurations;
            this.zzgem = zzbgiVar.zzgem;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new zzbge(this);
    }
}
