package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzbih;
@Hide
/* loaded from: classes2.dex */
public class zzt {
    private static zzt zzfrx;
    private final Context mContext;

    private zzt(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Hide
    private static zzh zza(PackageInfo packageInfo, zzh... zzhVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        zzi zziVar = new zzi(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < zzhVarArr.length; i++) {
            if (zzhVarArr[i].equals(zziVar)) {
                return zzhVarArr[i];
            }
        }
        return null;
    }

    @Hide
    public static boolean zza(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? zza(packageInfo, zzk.zzfrh) : zza(packageInfo, zzk.zzfrh[0])) != null) {
                return true;
            }
        }
        return false;
    }

    public static zzt zzcj(Context context) {
        zzbq.checkNotNull(context);
        synchronized (zzt.class) {
            if (zzfrx == null) {
                zzg.zzch(context);
                zzfrx = new zzt(context);
            }
        }
        return zzfrx;
    }

    private final zzp zzgh(String str) {
        try {
            PackageInfo packageInfo = zzbih.zzdd(this.mContext).getPackageInfo(str, 64);
            boolean zzci = zzs.zzci(this.mContext);
            if (packageInfo == null) {
                return zzp.zzgg("null pkg");
            }
            if (packageInfo.signatures.length != 1) {
                return zzp.zzgg("single cert required");
            }
            zzi zziVar = new zzi(packageInfo.signatures[0].toByteArray());
            String str2 = packageInfo.packageName;
            zzp zza = zzg.zza(str2, zziVar, zzci);
            return (!zza.zzfrm || packageInfo.applicationInfo == null || (packageInfo.applicationInfo.flags & 2) == 0) ? zza : (!zzci || zzg.zza(str2, zziVar, false).zzfrm) ? zzp.zzgg("debuggable release cert app rejected") : zza;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(str);
            return zzp.zzgg(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
        }
    }

    @Hide
    public final boolean zza(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zza(packageInfo, false)) {
            return true;
        }
        if (!zza(packageInfo, true)) {
            return false;
        }
        if (zzs.zzci(this.mContext)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }

    @Hide
    public final boolean zzbp(int i) {
        zzp zzgg;
        String[] packagesForUid = zzbih.zzdd(this.mContext).getPackagesForUid(i);
        if (packagesForUid == null || packagesForUid.length == 0) {
            zzgg = zzp.zzgg("no pkgs");
        } else {
            zzgg = null;
            for (String str : packagesForUid) {
                zzgg = zzgh(str);
                if (zzgg.zzfrm) {
                    break;
                }
            }
        }
        if (!zzgg.zzfrm) {
            if (zzgg.cause != null) {
                Log.d("GoogleCertificatesRslt", zzgg.getErrorMessage(), zzgg.cause);
            } else {
                Log.d("GoogleCertificatesRslt", zzgg.getErrorMessage());
            }
        }
        return zzgg.zzfrm;
    }
}
