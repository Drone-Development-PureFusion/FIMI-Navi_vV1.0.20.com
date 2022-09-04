package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzev;
/* loaded from: classes2.dex */
public final class zzas extends zzev implements zzaq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzas(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICancelToken");
    }

    @Override // com.google.android.gms.common.internal.zzaq
    public final void cancel() throws RemoteException {
        zzc(2, zzbc());
    }
}
