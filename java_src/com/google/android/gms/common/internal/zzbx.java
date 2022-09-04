package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
/* loaded from: classes.dex */
public final class zzbx extends com.google.android.gms.dynamic.zzp<zzbd> {
    private static final zzbx zzgic = new zzbx();

    private zzbx() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zzc(Context context, int i, int i2) throws com.google.android.gms.dynamic.zzq {
        return zzgic.zzd(context, i, i2);
    }

    private final View zzd(Context context, int i, int i2) throws com.google.android.gms.dynamic.zzq {
        try {
            zzbv zzbvVar = new zzbv(i, i2, null);
            return (View) com.google.android.gms.dynamic.zzn.zzy(zzdg(context).zza(com.google.android.gms.dynamic.zzn.zzz(context), zzbvVar));
        } catch (Exception e) {
            throw new com.google.android.gms.dynamic.zzq(new StringBuilder(64).append("Could not get button with size ").append(i).append(" and color ").append(i2).toString(), e);
        }
    }

    @Override // com.google.android.gms.dynamic.zzp
    public final /* synthetic */ zzbd zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return queryLocalInterface instanceof zzbd ? (zzbd) queryLocalInterface : new zzbe(iBinder);
    }
}
