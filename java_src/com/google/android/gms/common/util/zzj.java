package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
/* loaded from: classes2.dex */
public final class zzj {
    private static Boolean zzgkq;
    private static Boolean zzgkr;
    private static Boolean zzgks;
    private static Boolean zzgkt;
    private static Boolean zzgku;

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0038, code lost:
        if (com.google.android.gms.common.util.zzj.zzgkr.booleanValue() != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean zza(Resources resources) {
        boolean z = false;
        if (resources == null) {
            return false;
        }
        if (zzgkq == null) {
            if (!((resources.getConfiguration().screenLayout & 15) > 3)) {
                if (zzgkr == null) {
                    Configuration configuration = resources.getConfiguration();
                    zzgkr = Boolean.valueOf((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600);
                }
            }
            z = true;
            zzgkq = Boolean.valueOf(z);
        }
        return zzgkq.booleanValue();
    }

    @TargetApi(20)
    public static boolean zzcu(Context context) {
        if (zzgks == null) {
            zzgks = Boolean.valueOf(zzs.zzanw() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return zzgks.booleanValue();
    }

    @TargetApi(24)
    public static boolean zzcv(Context context) {
        return (!zzs.isAtLeastN() || zzcw(context)) && zzcu(context);
    }

    @TargetApi(21)
    public static boolean zzcw(Context context) {
        if (zzgkt == null) {
            zzgkt = Boolean.valueOf(zzs.zzanx() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return zzgkt.booleanValue();
    }

    public static boolean zzcx(Context context) {
        if (zzgku == null) {
            zzgku = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return zzgku.booleanValue();
    }
}
