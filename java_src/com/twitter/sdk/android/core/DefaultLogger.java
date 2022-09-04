package com.twitter.sdk.android.core;

import android.util.Log;
/* loaded from: classes2.dex */
public class DefaultLogger implements Logger {
    private int logLevel;

    public DefaultLogger(int logLevel) {
        this.logLevel = logLevel;
    }

    public DefaultLogger() {
        this.logLevel = 4;
    }

    @Override // com.twitter.sdk.android.core.Logger
    public boolean isLoggable(String tag, int level) {
        return this.logLevel <= level;
    }

    @Override // com.twitter.sdk.android.core.Logger
    public int getLogLevel() {
        return this.logLevel;
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void setLogLevel(int logLevel) {
        this.logLevel = logLevel;
    }

    @Override // com.twitter.sdk.android.core.Logger
    /* renamed from: d */
    public void mo1292d(String tag, String text, Throwable throwable) {
        if (isLoggable(tag, 3)) {
            Log.d(tag, text, throwable);
        }
    }

    @Override // com.twitter.sdk.android.core.Logger
    /* renamed from: v */
    public void mo1286v(String tag, String text, Throwable throwable) {
        if (isLoggable(tag, 2)) {
            Log.v(tag, text, throwable);
        }
    }

    @Override // com.twitter.sdk.android.core.Logger
    /* renamed from: i */
    public void mo1288i(String tag, String text, Throwable throwable) {
        if (isLoggable(tag, 4)) {
            Log.i(tag, text, throwable);
        }
    }

    @Override // com.twitter.sdk.android.core.Logger
    /* renamed from: w */
    public void mo1284w(String tag, String text, Throwable throwable) {
        if (isLoggable(tag, 5)) {
            Log.w(tag, text, throwable);
        }
    }

    @Override // com.twitter.sdk.android.core.Logger
    /* renamed from: e */
    public void mo1290e(String tag, String text, Throwable throwable) {
        if (isLoggable(tag, 6)) {
            Log.e(tag, text, throwable);
        }
    }

    @Override // com.twitter.sdk.android.core.Logger
    /* renamed from: d */
    public void mo1293d(String tag, String text) {
        mo1292d(tag, text, null);
    }

    @Override // com.twitter.sdk.android.core.Logger
    /* renamed from: v */
    public void mo1287v(String tag, String text) {
        mo1286v(tag, text, null);
    }

    @Override // com.twitter.sdk.android.core.Logger
    /* renamed from: i */
    public void mo1289i(String tag, String text) {
        mo1288i(tag, text, null);
    }

    @Override // com.twitter.sdk.android.core.Logger
    /* renamed from: w */
    public void mo1285w(String tag, String text) {
        mo1284w(tag, text, null);
    }

    @Override // com.twitter.sdk.android.core.Logger
    /* renamed from: e */
    public void mo1291e(String tag, String text) {
        mo1290e(tag, text, null);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void log(int priority, String tag, String msg) {
        log(priority, tag, msg, false);
    }

    @Override // com.twitter.sdk.android.core.Logger
    public void log(int priority, String tag, String msg, boolean forceLog) {
        if (forceLog || isLoggable(tag, priority)) {
            Log.println(priority, tag, msg);
        }
    }
}
