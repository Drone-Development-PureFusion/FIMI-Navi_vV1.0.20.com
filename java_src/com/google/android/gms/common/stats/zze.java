package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.zzk;
import java.util.List;
/* loaded from: classes2.dex */
public final class zze {
    private static Boolean zzgkj;
    private static zze zzgki = new zze();
    private static boolean zzgji = false;

    public static void zza(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list) {
        zza(context, str, 8, str2, str3, str4, i2, list, 0L);
    }

    public static void zza(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        List<String> list2;
        if (zzgkj == null) {
            zzgkj = false;
        }
        if (!zzgkj.booleanValue()) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            String valueOf = String.valueOf(str);
            Log.e("WakeLockTracker", valueOf.length() != 0 ? "missing wakeLock key. ".concat(valueOf) : new String("missing wakeLock key. "));
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (7 != i && 8 != i && 10 != i && 11 != i) {
            return;
        }
        if (list == null || list.size() != 1) {
            list2 = list;
        } else {
            if ("com.google.android.gms".equals(list.get(0))) {
                list = null;
            }
            list2 = list;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int zzcy = zzk.zzcy(context);
        String packageName = context.getPackageName();
        if ("com.google.android.gms".equals(packageName)) {
            packageName = null;
        }
        try {
            context.startService(new Intent().setComponent(zzb.zzgjn).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", new WakeLockEvent(currentTimeMillis, i, str2, i2, list2, str, elapsedRealtime, zzcy, str3, packageName, zzk.zzcz(context), j, str4)));
        } catch (Exception e) {
            Log.wtf("WakeLockTracker", e);
        }
    }

    public static zze zzanp() {
        return zzgki;
    }
}
