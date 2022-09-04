package com.umeng.commonsdk.statistics.idtracking;

import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: SerialTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.j */
/* loaded from: classes2.dex */
public class C2432j extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1317a = "serial";

    public C2432j() {
        super(f1317a);
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        return DeviceConfig.getSerial();
    }
}
