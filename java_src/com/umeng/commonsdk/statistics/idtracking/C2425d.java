package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: IDMD5Tracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.d */
/* loaded from: classes2.dex */
public class C2425d extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1293a = "idmd5";

    /* renamed from: b */
    private Context f1294b;

    public C2425d(Context context) {
        super("idmd5");
        this.f1294b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        return DeviceConfig.getDeviceIdUmengMD5(this.f1294b);
    }
}
