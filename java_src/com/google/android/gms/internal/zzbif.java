package com.google.android.gms.internal;

import android.content.Context;
/* loaded from: classes2.dex */
public final class zzbif {
    private static Context zzglq;
    private static Boolean zzglr;

    public static synchronized boolean zzdb(Context context) {
        boolean booleanValue;
        synchronized (zzbif.class) {
            Context applicationContext = context.getApplicationContext();
            if (zzglq == null || zzglr == null || zzglq != applicationContext) {
                zzglr = null;
                if (com.google.android.gms.common.util.zzs.isAtLeastO()) {
                    zzglr = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                } else {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        zzglr = true;
                    } catch (ClassNotFoundException e) {
                        zzglr = false;
                    }
                }
                zzglq = applicationContext;
                booleanValue = zzglr.booleanValue();
            } else {
                booleanValue = zzglr.booleanValue();
            }
        }
        return booleanValue;
    }
}
