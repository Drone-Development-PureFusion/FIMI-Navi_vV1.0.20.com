package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;
/* loaded from: classes2.dex */
public class zzav extends zzr<String> {
    private final Object mLock = new Object();
    private zzz<String> zzci;

    public zzav(int i, String str, zzz<String> zzzVar, zzy zzyVar) {
        super(i, str, zzyVar);
        this.zzci = zzzVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzr
    public final zzx<String> zza(zzp zzpVar) {
        String str;
        try {
            str = new String(zzpVar.data, zzap.zzb(zzpVar.zzab));
        } catch (UnsupportedEncodingException e) {
            str = new String(zzpVar.data);
        }
        return zzx.zza(str, zzap.zzb(zzpVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzr
    /* renamed from: zzh */
    public void zza(String str) {
        zzz<String> zzzVar;
        synchronized (this.mLock) {
            zzzVar = this.zzci;
        }
        if (zzzVar != null) {
            zzzVar.zzb(str);
        }
    }
}
