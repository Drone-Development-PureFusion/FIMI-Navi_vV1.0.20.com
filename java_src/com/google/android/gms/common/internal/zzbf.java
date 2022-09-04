package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.zzbih;
/* loaded from: classes2.dex */
public final class zzbf {
    private static Object sLock = new Object();
    private static boolean zzcqk;
    private static String zzghm;
    private static int zzghn;

    public static String zzcr(Context context) {
        zzct(context);
        return zzghm;
    }

    public static int zzcs(Context context) {
        zzct(context);
        return zzghn;
    }

    private static void zzct(Context context) {
        Bundle bundle;
        synchronized (sLock) {
            if (zzcqk) {
                return;
            }
            zzcqk = true;
            try {
                bundle = zzbih.zzdd(context).getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
            if (bundle == null) {
                return;
            }
            zzghm = bundle.getString("com.google.app.id");
            zzghn = bundle.getInt("com.google.android.gms.version");
        }
    }
}
