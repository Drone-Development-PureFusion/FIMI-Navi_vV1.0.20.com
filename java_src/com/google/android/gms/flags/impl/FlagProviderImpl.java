package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzccn;
@Hide
@DynamiteApi
/* loaded from: classes2.dex */
public class FlagProviderImpl extends zzccn {
    private boolean zzarf = false;
    private SharedPreferences zzbkx;

    @Override // com.google.android.gms.internal.zzccm
    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        return !this.zzarf ? z : zzb.zza(this.zzbkx, str, Boolean.valueOf(z)).booleanValue();
    }

    @Override // com.google.android.gms.internal.zzccm
    public int getIntFlagValue(String str, int i, int i2) {
        return !this.zzarf ? i : zzd.zza(this.zzbkx, str, Integer.valueOf(i)).intValue();
    }

    @Override // com.google.android.gms.internal.zzccm
    public long getLongFlagValue(String str, long j, int i) {
        return !this.zzarf ? j : zzf.zza(this.zzbkx, str, Long.valueOf(j)).longValue();
    }

    @Override // com.google.android.gms.internal.zzccm
    public String getStringFlagValue(String str, String str2, int i) {
        return !this.zzarf ? str2 : zzh.zza(this.zzbkx, str, str2);
    }

    @Override // com.google.android.gms.internal.zzccm
    public void init(IObjectWrapper iObjectWrapper) {
        Context context = (Context) zzn.zzy(iObjectWrapper);
        if (this.zzarf) {
            return;
        }
        try {
            this.zzbkx = zzj.zzdk(context.createPackageContext("com.google.android.gms", 0));
            this.zzarf = true;
        } catch (PackageManager.NameNotFoundException e) {
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.getMessage());
            Log.w("FlagProviderImpl", valueOf.length() != 0 ? "Could not retrieve sdk flags, continuing with defaults: ".concat(valueOf) : new String("Could not retrieve sdk flags, continuing with defaults: "));
        }
    }
}
