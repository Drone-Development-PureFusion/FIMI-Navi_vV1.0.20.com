package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
/* compiled from: UMTTTwoTracker.java */
/* renamed from: com.umeng.commonsdk.statistics.idtracking.o */
/* loaded from: classes2.dex */
public class C2437o extends AbstractC2422a {

    /* renamed from: a */
    private static final String f1326a = "umtt2";

    /* renamed from: b */
    private Context f1327b;

    public C2437o(Context context) {
        super(f1326a);
        this.f1327b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.AbstractC2422a
    /* renamed from: f */
    public String mo242f() {
        try {
            Class<?> cls = Class.forName("com.umeng.commonsdk.internal.utils.SDStorageAgent");
            return cls != null ? (String) cls.getMethod("getUmtt2", Context.class).invoke(cls, this.f1327b) : null;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (Throwable th) {
            return null;
        }
    }
}
