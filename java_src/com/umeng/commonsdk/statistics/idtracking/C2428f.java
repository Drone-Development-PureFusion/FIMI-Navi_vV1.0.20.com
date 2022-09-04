package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: ImeiTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.f */
/* loaded from: classes2.dex */
public class C2428f extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1307a = "imei";

    /* renamed from: b */
    private Context f1308b;

    public C2428f(Context context) {
        super("imei");
        this.f1308b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        return DeviceConfig.getImeiNew(this.f1308b);
    }
}
