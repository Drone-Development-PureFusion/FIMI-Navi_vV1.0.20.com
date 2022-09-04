package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
/* compiled from: UMTTZeroTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.p */
/* loaded from: classes2.dex */
public class C2438p extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1328a = "umtt0";

    /* renamed from: b */
    private Context f1329b;

    public C2438p(Context context) {
        super(f1328a);
        this.f1329b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
            return cls != null ? (String) cls.getMethod("getUmtt0", Context.class).invoke(cls, this.f1329b) : null;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            return null;
        }
    }
}
