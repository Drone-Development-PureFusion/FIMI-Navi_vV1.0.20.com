package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
/* compiled from: UMTTFourTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.l */
/* loaded from: classes2.dex */
public class C2434l extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1320a = "umtt4";

    /* renamed from: b */
    private Context f1321b;

    public C2434l(Context context) {
        super(f1320a);
        this.f1321b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
            return cls != null ? (String) cls.getMethod("getUmtt4", Context.class).invoke(cls, this.f1321b) : null;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            return null;
        }
    }
}
