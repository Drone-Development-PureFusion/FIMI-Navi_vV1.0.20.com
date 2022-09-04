package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
/* compiled from: UMTTFiveTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.k */
/* loaded from: classes2.dex */
public class C2433k extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1318a = "umtt5";

    /* renamed from: b */
    private Context f1319b;

    public C2433k(Context context) {
        super(f1318a);
        this.f1319b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
            return cls != null ? (String) cls.getMethod("getUmtt5", Context.class).invoke(cls, this.f1319b) : null;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            return null;
        }
    }
}
