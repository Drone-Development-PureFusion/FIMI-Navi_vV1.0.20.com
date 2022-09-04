package com.umeng.analytics.pro;

import com.umeng.analytics.AnalyticsConfig;
import java.lang.Thread;
/* compiled from: CrashHandler.java */
/* renamed from: com.umeng.analytics.pro.j */
/* loaded from: classes2.dex */
public class C2250j implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private Thread.UncaughtExceptionHandler f629a;

    /* renamed from: b */
    private AbstractC2258n f630b;

    public C2250j() {
        if (Thread.getDefaultUncaughtExceptionHandler() != this) {
            this.f629a = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    /* renamed from: a */
    public void m1094a(AbstractC2258n abstractC2258n) {
        this.f630b = abstractC2258n;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        m1093a(th);
        if (this.f629a != null && this.f629a != Thread.getDefaultUncaughtExceptionHandler()) {
            this.f629a.uncaughtException(thread, th);
        }
    }

    /* renamed from: a */
    private void m1093a(Throwable th) {
        if (AnalyticsConfig.CATCH_EXCEPTION) {
            this.f630b.mo1062a(th);
        } else {
            this.f630b.mo1062a(null);
        }
    }
}
