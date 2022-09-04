package com.twitter.sdk.android.core;
/* loaded from: classes2.dex */
public interface Logger {
    /* renamed from: d */
    void mo1293d(String str, String str2);

    /* renamed from: d */
    void mo1292d(String str, String str2, Throwable th);

    /* renamed from: e */
    void mo1291e(String str, String str2);

    /* renamed from: e */
    void mo1290e(String str, String str2, Throwable th);

    int getLogLevel();

    /* renamed from: i */
    void mo1289i(String str, String str2);

    /* renamed from: i */
    void mo1288i(String str, String str2, Throwable th);

    boolean isLoggable(String str, int i);

    void log(int i, String str, String str2);

    void log(int i, String str, String str2, boolean z);

    void setLogLevel(int i);

    /* renamed from: v */
    void mo1287v(String str, String str2);

    /* renamed from: v */
    void mo1286v(String str, String str2, Throwable th);

    /* renamed from: w */
    void mo1285w(String str, String str2);

    /* renamed from: w */
    void mo1284w(String str, String str2, Throwable th);
}
