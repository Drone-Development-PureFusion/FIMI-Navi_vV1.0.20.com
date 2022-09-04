package com.facebook.common.logging;
/* loaded from: classes.dex */
public interface LoggingDelegate {
    /* renamed from: d */
    void mo1347d(String str, String str2);

    /* renamed from: d */
    void mo1346d(String str, String str2, Throwable th);

    /* renamed from: e */
    void mo1345e(String str, String str2);

    /* renamed from: e */
    void mo1344e(String str, String str2, Throwable th);

    int getMinimumLoggingLevel();

    /* renamed from: i */
    void mo1343i(String str, String str2);

    /* renamed from: i */
    void mo1342i(String str, String str2, Throwable th);

    boolean isLoggable(int i);

    void log(int i, String str, String str2);

    void setMinimumLoggingLevel(int i);

    /* renamed from: v */
    void mo1341v(String str, String str2);

    /* renamed from: v */
    void mo1340v(String str, String str2, Throwable th);

    /* renamed from: w */
    void mo1339w(String str, String str2);

    /* renamed from: w */
    void mo1338w(String str, String str2, Throwable th);

    void wtf(String str, String str2);

    void wtf(String str, String str2, Throwable th);
}
