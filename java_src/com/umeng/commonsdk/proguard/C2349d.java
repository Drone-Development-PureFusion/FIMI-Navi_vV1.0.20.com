package com.umeng.commonsdk.proguard;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import com.github.moduth.blockcanary.internal.BlockInfo;
import com.umeng.commonsdk.statistics.common.C2419e;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.utils.UMUtils;
/* compiled from: UMSysLocation.java */
/* renamed from: com.umeng.commonsdk.proguard.d */
/* loaded from: classes2.dex */
public class C2349d {

    /* renamed from: a */
    private static final String f950a = "UMSysLocation";

    /* renamed from: c */
    private static final int f951c = 10000;

    /* renamed from: b */
    private LocationManager f952b;

    /* renamed from: d */
    private Context f953d;

    /* renamed from: e */
    private AbstractC2353f f954e;

    private C2349d() {
    }

    public C2349d(Context context) {
        if (context == null) {
            MLog.m388e("Context参数不能为null");
            return;
        }
        this.f953d = context.getApplicationContext();
        this.f952b = (LocationManager) context.getApplicationContext().getSystemService("location");
    }

    /* renamed from: a */
    public synchronized void m702a(AbstractC2353f abstractC2353f) {
        Location location = null;
        synchronized (this) {
            C2419e.m328a(f950a, "getSystemLocation");
            if (abstractC2353f != null && this.f953d != null) {
                this.f954e = abstractC2353f;
                if (!UMUtils.checkPermission(this.f953d, "android.permission.ACCESS_COARSE_LOCATION") && !UMUtils.checkPermission(this.f953d, "android.permission.ACCESS_FINE_LOCATION")) {
                    if (this.f954e != null) {
                        this.f954e.mo698a(null);
                    }
                } else if (this.f952b != null) {
                    boolean isProviderEnabled = this.f952b.isProviderEnabled("gps");
                    boolean isProviderEnabled2 = this.f952b.isProviderEnabled(BlockInfo.KEY_NETWORK);
                    if (isProviderEnabled || isProviderEnabled2) {
                        C2419e.m328a(f950a, "getLastKnownLocation(LocationManager.PASSIVE_PROVIDER)");
                        if (UMUtils.checkPermission(this.f953d, "android.permission.ACCESS_FINE_LOCATION")) {
                            location = this.f952b.getLastKnownLocation("passive");
                        } else if (UMUtils.checkPermission(this.f953d, "android.permission.ACCESS_COARSE_LOCATION")) {
                            location = this.f952b.getLastKnownLocation(BlockInfo.KEY_NETWORK);
                        }
                    }
                    this.f954e.mo698a(location);
                }
            }
        }
    }

    /* renamed from: a */
    public synchronized void m703a() {
        C2419e.m328a(f950a, "destroy");
        if (this.f952b != null) {
            this.f952b = null;
        }
    }
}
