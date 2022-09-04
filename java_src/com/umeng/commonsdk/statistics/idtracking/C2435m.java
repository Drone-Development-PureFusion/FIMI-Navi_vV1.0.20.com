package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
/* compiled from: UMTTOneTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.m */
/* loaded from: classes2.dex */
public class C2435m extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1322a = "umtt1";

    /* renamed from: b */
    private Context f1323b;

    public C2435m(Context context) {
        super(f1322a);
        this.f1323b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
            return cls != null ? (String) cls.getMethod("getUmtt1", Context.class).invoke(cls, this.f1323b) : null;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            return null;
        }
    }
}
