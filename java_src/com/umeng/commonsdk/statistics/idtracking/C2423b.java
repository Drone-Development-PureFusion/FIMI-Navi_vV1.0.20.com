package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: AndroidIdTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.b */
/* loaded from: classes2.dex */
public class C2423b extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1289a = "android_id";

    /* renamed from: b */
    private Context f1290b;

    public C2423b(Context context) {
        super(f1289a);
        this.f1290b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        return DeviceConfig.getAndroidId(this.f1290b);
    }
}
