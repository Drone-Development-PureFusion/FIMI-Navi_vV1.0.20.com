package com.umeng.analytics.pro;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: UMDBManager.java */
/* renamed from: com.umeng.analytics.pro.e */
/* loaded from: classes2.dex */
class C2234e {

    /* renamed from: b */
    private static SQLiteOpenHelper f539b;

    /* renamed from: d */
    private static Context f540d;

    /* renamed from: a */
    private AtomicInteger f541a;

    /* renamed from: c */
    private SQLiteDatabase f542c;

    private C2234e() {
        this.f541a = new AtomicInteger();
    }

    /* compiled from: UMDBManager.java */
    /* renamed from: com.umeng.analytics.pro.e$a */
    /* loaded from: classes2.dex */
    private static class C2236a {

        /* renamed from: a */
        private static final C2234e f543a = new C2234e();

        private C2236a() {
        }
    }

    /* renamed from: a */
    public static C2234e m1189a(Context context) {
        if (f540d == null && context != null) {
            f540d = context.getApplicationContext();
            f539b = C2231d.m1197a(f540d);
        }
        return C2236a.f543a;
    }

    /* renamed from: a */
    public synchronized SQLiteDatabase m1190a() {
        if (this.f541a.incrementAndGet() == 1) {
            this.f542c = f539b.getWritableDatabase();
        }
        return this.f542c;
    }

    /* renamed from: b */
    public synchronized void m1188b() {
        try {
            if (this.f541a.decrementAndGet() == 0) {
                this.f542c.close();
            }
        } catch (Throwable th) {
        }
    }
}
