package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.proguard.C2345b;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: MacTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.g */
/* loaded from: classes2.dex */
public class C2429g extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1309a = "mac";

    /* renamed from: b */
    private Context f1310b;

    public C2429g(Context context) {
        super(f1309a);
        this.f1310b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        try {
            return DeviceConfig.getMac(this.f1310b);
        } catch (Exception e) {
            if (AnalyticsConstants.UM_DEBUG) {
                e.printStackTrace();
            }
            C2345b.m708a(this.f1310b, e);
            return null;
        }
    }
}
