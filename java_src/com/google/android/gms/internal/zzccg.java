package com.google.android.gms.internal;

import android.os.RemoteException;
/* loaded from: classes2.dex */
public final class zzccg extends zzcce<Boolean> {
    public zzccg(int i, String str, Boolean bool) {
        super(0, str, bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.zzcce
    /* renamed from: zzb */
    public final Boolean zza(zzccm zzccmVar) {
        try {
            return Boolean.valueOf(zzccmVar.getBooleanFlagValue(getKey(), zzje().booleanValue(), getSource()));
        } catch (RemoteException e) {
            return zzje();
        }
    }
}
