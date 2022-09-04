package com.google.android.gms.internal;

import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class zzcci extends zzcce<Long> {
    public zzcci(int i, String str, Long l) {
        super(0, str, l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzcce
    /* renamed from: zzd */
    public final Long zza(zzccm zzccmVar) {
        try {
            return Long.valueOf(zzccmVar.getLongFlagValue(getKey(), zzje().longValue(), getSource()));
        } catch (RemoteException e) {
            return zzje();
        }
    }
}
