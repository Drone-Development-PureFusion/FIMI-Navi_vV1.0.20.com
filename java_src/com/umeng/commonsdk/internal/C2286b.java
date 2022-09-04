package com.umeng.commonsdk.internal;

import android.content.Context;
/* compiled from: UMInternalData.java */
/* renamed from: com.umeng.commonsdk.internal.b */
/* loaded from: classes2.dex */
public class C2286b {

    /* renamed from: b */
    private static C2286b f729b;

    /* renamed from: a */
    private Context f730a;

    /* renamed from: c */
    private C2287c f731c;

    private C2286b(Context context) {
        this.f730a = context;
        this.f731c = new C2287c(context);
    }

    /* renamed from: a */
    public static synchronized C2286b m962a(Context context) {
        C2286b c2286b;
        synchronized (C2286b.class) {
            if (f729b == null) {
                f729b = new C2286b(context.getApplicationContext());
            }
            c2286b = f729b;
        }
        return c2286b;
    }

    /* renamed from: a */
    public C2287c m963a() {
        return this.f731c;
    }
}
