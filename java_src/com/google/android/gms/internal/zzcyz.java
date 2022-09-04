package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
@Hide
/* loaded from: classes2.dex */
public final class zzcyz {
    private static ScheduledExecutorService zzimq;
    private final Context mContext;
    private final String zzgjx;
    private final String zzgjz;
    private final PowerManager.WakeLock zzkmb;
    private WorkSource zzkmc;
    private final int zzkmd;
    private final String zzkme;
    private boolean zzkmf;
    private final Map<String, Integer[]> zzkmg;
    private int zzkmh;
    private AtomicInteger zzkmi;
    private static String TAG = "WakeLock";
    private static String zzkma = "*gcore*:";
    private static boolean DEBUG = false;

    public zzcyz(Context context, int i, String str) {
        this(context, 1, str, null, context == null ? null : context.getPackageName());
    }

    @Hide
    @SuppressLint({"UnwrappedWakeLock"})
    private zzcyz(Context context, int i, String str, String str2, String str3) {
        this(context, 1, str, null, str3, null);
    }

    @Hide
    @SuppressLint({"UnwrappedWakeLock"})
    private zzcyz(Context context, int i, String str, String str2, String str3, String str4) {
        this.zzkmf = true;
        this.zzkmg = new HashMap();
        this.zzkmi = new AtomicInteger(0);
        zzbq.zzh(str, "Wake lock name can NOT be empty");
        this.zzkmd = i;
        this.zzkme = null;
        this.zzgjz = null;
        this.mContext = context.getApplicationContext();
        if (!"com.google.android.gms".equals(context.getPackageName())) {
            String valueOf = String.valueOf(zzkma);
            String valueOf2 = String.valueOf(str);
            this.zzgjx = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        } else {
            this.zzgjx = str;
        }
        this.zzkmb = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (com.google.android.gms.common.util.zzaa.zzda(this.mContext)) {
            this.zzkmc = com.google.android.gms.common.util.zzaa.zzw(context, com.google.android.gms.common.util.zzw.zzhb(str3) ? context.getPackageName() : str3);
            WorkSource workSource = this.zzkmc;
            if (workSource != null && com.google.android.gms.common.util.zzaa.zzda(this.mContext)) {
                if (this.zzkmc != null) {
                    this.zzkmc.add(workSource);
                } else {
                    this.zzkmc = workSource;
                }
                try {
                    this.zzkmb.setWorkSource(this.zzkmc);
                } catch (IllegalArgumentException e) {
                    Log.wtf(TAG, e.toString());
                }
            }
        }
        if (zzimq == null) {
            zzimq = zzbhg.zzanc().newSingleThreadScheduledExecutor();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzew(int i) {
        if (this.zzkmb.isHeld()) {
            try {
                this.zzkmb.release();
            } catch (RuntimeException e) {
                if (!e.getClass().equals(RuntimeException.class)) {
                    throw e;
                }
                Log.e(TAG, String.valueOf(this.zzgjx).concat("was already released!"), new IllegalStateException());
            }
        }
    }

    private final String zzlf(String str) {
        return (!this.zzkmf || TextUtils.isEmpty(str)) ? this.zzkme : str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
        if (r0 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
        com.google.android.gms.common.stats.zze.zzanp();
        com.google.android.gms.common.stats.zze.zza(r12.mContext, com.google.android.gms.common.stats.zzc.zza(r12.zzkmb, r4), 7, r12.zzgjx, r4, null, r12.zzkmd, com.google.android.gms.common.util.zzaa.zzb(r12.zzkmc), 1000);
        r12.zzkmh++;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0052, code lost:
        if (r12.zzkmh == 0) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void acquire(long j) {
        boolean z;
        this.zzkmi.incrementAndGet();
        String zzlf = zzlf(null);
        synchronized (this) {
            if ((!this.zzkmg.isEmpty() || this.zzkmh > 0) && !this.zzkmb.isHeld()) {
                this.zzkmg.clear();
                this.zzkmh = 0;
            }
            if (this.zzkmf) {
                Integer[] numArr = this.zzkmg.get(zzlf);
                if (numArr == null) {
                    this.zzkmg.put(zzlf, new Integer[]{1});
                    z = true;
                } else {
                    numArr[0] = Integer.valueOf(numArr[0].intValue() + 1);
                    z = false;
                }
            }
            if (!this.zzkmf) {
            }
        }
        this.zzkmb.acquire();
        if (1000 > 0) {
            zzimq.schedule(new zzcza(this), 1000L, TimeUnit.MILLISECONDS);
        }
    }

    public final boolean isHeld() {
        return this.zzkmb.isHeld();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
        if (r0 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
        com.google.android.gms.common.stats.zze.zzanp();
        com.google.android.gms.common.stats.zze.zza(r9.mContext, com.google.android.gms.common.stats.zzc.zza(r9.zzkmb, r4), 8, r9.zzgjx, r4, null, r9.zzkmd, com.google.android.gms.common.util.zzaa.zzb(r9.zzkmc));
        r9.zzkmh--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x002e, code lost:
        if (r9.zzkmh == 1) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void release() {
        boolean z;
        if (this.zzkmi.decrementAndGet() < 0) {
            Log.e(TAG, "release without a matched acquire!");
        }
        String zzlf = zzlf(null);
        synchronized (this) {
            if (this.zzkmf) {
                Integer[] numArr = this.zzkmg.get(zzlf);
                if (numArr == null) {
                    z = false;
                } else if (numArr[0].intValue() == 1) {
                    this.zzkmg.remove(zzlf);
                    z = true;
                } else {
                    numArr[0] = Integer.valueOf(numArr[0].intValue() - 1);
                    z = false;
                }
            }
            if (!this.zzkmf) {
            }
        }
        zzew(0);
    }

    public final void setReferenceCounted(boolean z) {
        this.zzkmb.setReferenceCounted(false);
        this.zzkmf = false;
    }
}
