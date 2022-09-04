package com.google.android.gms.maps;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public final class CameraUpdate {
    private final IObjectWrapper zzizp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CameraUpdate(IObjectWrapper iObjectWrapper) {
        this.zzizp = (IObjectWrapper) zzbq.checkNotNull(iObjectWrapper);
    }

    @Hide
    public final IObjectWrapper zzaxq() {
        return this.zzizp;
    }
}
