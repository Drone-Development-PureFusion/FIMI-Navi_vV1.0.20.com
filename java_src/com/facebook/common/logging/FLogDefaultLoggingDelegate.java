package com.facebook.common.logging;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes.dex */
public class FLogDefaultLoggingDelegate implements LoggingDelegate {
    public static final FLogDefaultLoggingDelegate sInstance = new FLogDefaultLoggingDelegate();
    private String mApplicationTag = "unknown";
    private int mMinimumLoggingLevel = 5;

    public static FLogDefaultLoggingDelegate getInstance() {
        return sInstance;
    }

    private FLogDefaultLoggingDelegate() {
    }

    public void setApplicationTag(String tag) {
        this.mApplicationTag = tag;
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    public void setMinimumLoggingLevel(int level) {
        this.mMinimumLoggingLevel = level;
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    public int getMinimumLoggingLevel() {
        return this.mMinimumLoggingLevel;
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    public boolean isLoggable(int level) {
        return this.mMinimumLoggingLevel <= level;
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    /* renamed from: v */
    public void mo1341v(String tag, String msg) {
        println(2, tag, msg);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    /* renamed from: v */
    public void mo1340v(String tag, String msg, Throwable tr) {
        println(2, tag, msg, tr);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    /* renamed from: d */
    public void mo1347d(String tag, String msg) {
        println(3, tag, msg);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    /* renamed from: d */
    public void mo1346d(String tag, String msg, Throwable tr) {
        println(3, tag, msg, tr);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    /* renamed from: i */
    public void mo1343i(String tag, String msg) {
        println(4, tag, msg);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    /* renamed from: i */
    public void mo1342i(String tag, String msg, Throwable tr) {
        println(4, tag, msg, tr);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    /* renamed from: w */
    public void mo1339w(String tag, String msg) {
        println(5, tag, msg);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    /* renamed from: w */
    public void mo1338w(String tag, String msg, Throwable tr) {
        println(5, tag, msg, tr);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    /* renamed from: e */
    public void mo1345e(String tag, String msg) {
        println(6, tag, msg);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    /* renamed from: e */
    public void mo1344e(String tag, String msg, Throwable tr) {
        println(6, tag, msg, tr);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    public void wtf(String tag, String msg) {
        println(6, tag, msg);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    public void wtf(String tag, String msg, Throwable tr) {
        println(6, tag, msg, tr);
    }

    @Override // com.facebook.common.logging.LoggingDelegate
    public void log(int priority, String tag, String msg) {
        println(priority, tag, msg);
    }

    private void println(int priority, String tag, String msg) {
        Log.println(priority, prefixTag(tag), msg);
    }

    private void println(int priority, String tag, String msg, Throwable tr) {
        Log.println(priority, prefixTag(tag), getMsg(msg, tr));
    }

    private String prefixTag(String tag) {
        if (this.mApplicationTag != null) {
            return this.mApplicationTag + ":" + tag;
        }
        return tag;
    }

    private static String getMsg(String msg, Throwable tr) {
        return msg + '\n' + getStackTraceString(tr);
    }

    private static String getStackTraceString(Throwable tr) {
        if (tr == null) {
            return "";
        }
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        tr.printStackTrace(pw);
        return sw.toString();
    }
}
