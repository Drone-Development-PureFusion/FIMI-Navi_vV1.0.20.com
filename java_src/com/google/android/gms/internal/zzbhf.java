package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.util.Log;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class zzbhf {
    private final String mTag;
    private final int zzebd;
    private final String zzghj;
    private final com.google.android.gms.common.internal.zzal zzgig;

    private zzbhf(String str, String str2) {
        this.zzghj = str2;
        this.mTag = str;
        this.zzgig = new com.google.android.gms.common.internal.zzal(str);
        this.zzebd = getLogLevel();
    }

    public zzbhf(String str, String... strArr) {
        this(str, zzc(strArr));
    }

    private final String format(String str, @Nullable Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.zzghj.concat(str);
    }

    private final int getLogLevel() {
        int i = 2;
        while (7 >= i && !Log.isLoggable(this.mTag, i)) {
            i++;
        }
        return i;
    }

    private final boolean zzae(int i) {
        return this.zzebd <= i;
    }

    private static String zzc(String... strArr) {
        if (strArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        for (String str : strArr) {
            if (sb.length() > 1) {
                sb.append(",");
            }
            sb.append(str);
        }
        sb.append(']').append(' ');
        return sb.toString();
    }

    public final void zza(String str, Throwable th, @Nullable Object... objArr) {
        Log.wtf(this.mTag, format(str, objArr), th);
    }

    public final void zza(String str, @Nullable Object... objArr) {
        if (zzae(2)) {
            Log.v(this.mTag, format(str, objArr));
        }
    }

    public final void zzb(String str, @Nullable Object... objArr) {
        if (zzae(3)) {
            Log.d(this.mTag, format(str, objArr));
        }
    }

    public final void zzc(String str, @Nullable Object... objArr) {
        Log.e(this.mTag, format(str, objArr));
    }

    public final void zze(String str, @Nullable Object... objArr) {
        Log.i(this.mTag, format(str, objArr));
    }

    public final void zzf(String str, @Nullable Object... objArr) {
        Log.w(this.mTag, format(str, objArr));
    }

    public final void zzf(Throwable th) {
        Log.wtf(this.mTag, th);
    }
}
