package com.google.android.gms.common.util;

import android.content.Context;
import android.os.DropBoxManager;
import android.util.Log;
import com.google.android.gms.common.internal.zzbq;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* loaded from: classes2.dex */
public final class zzg {
    private static final String[] zzgkk = {"android.", "com.android.", "dalvik.", "java.", "javax."};
    private static DropBoxManager zzgkl = null;
    private static boolean zzgkm = false;
    private static int zzgkn = -1;
    private static int zzgko = 0;

    public static boolean zza(Context context, Throwable th) {
        return zza(context, th, NTLMConstants.FLAG_NEGOTIATE_128_BIT_ENCRYPTION);
    }

    private static boolean zza(Context context, Throwable th, int i) {
        try {
            zzbq.checkNotNull(context);
            zzbq.checkNotNull(th);
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
        }
        return false;
    }
}
