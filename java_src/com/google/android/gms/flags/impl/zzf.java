package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.internal.zzccq;
/* loaded from: classes2.dex */
public final class zzf extends zza<Long> {
    public static Long zza(SharedPreferences sharedPreferences, String str, Long l) {
        try {
            return (Long) zzccq.zzb(new zzg(sharedPreferences, str, l));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("FlagDataUtils", valueOf.length() != 0 ? "Flag value not available, returning default: ".concat(valueOf) : new String("Flag value not available, returning default: "));
            return l;
        }
    }
}
