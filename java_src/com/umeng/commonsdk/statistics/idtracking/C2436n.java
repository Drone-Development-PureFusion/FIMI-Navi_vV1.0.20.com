package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
/* compiled from: UMTTThreeTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.n */
/* loaded from: classes2.dex */
public class C2436n extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1324a = "umtt3";

    /* renamed from: b */
    private Context f1325b;

    public C2436n(Context context) {
        super(f1324a);
        this.f1325b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
            return cls != null ? (String) cls.getMethod("getUmtt3", Context.class).invoke(cls, this.f1325b) : null;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            return null;
        }
    }
}
