package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.content.SharedPreferences;
import ch.qos.logback.core.CoreConstants;
import com.umeng.commonsdk.statistics.common.MLog;
/* loaded from: classes2.dex */
public class StatTracer implements AbstractC2448b {
    private static final String KEY_CLIENT_REQUEST_FAILED = "failed_requests ";
    private static final String KEY_CLIENT_REQUEST_LATENCY = "last_request_spent_ms";
    private static final String KEY_CLIENT_REQUEST_SUCCESS = "successful_request";
    private static final String KEY_CLIENT_REQUEST_TIME = "last_request_time";
    private static final String KEY_FIRST_ACTIVATE_TIME = "first_activate_time";
    private static final String KEY_LAST_REQ = "last_req";
    private static Context mContext = null;
    private final int MAX_REQUEST_LIMIT;
    private long firstActivateTime;
    private long lastRequestTime;
    public int mFailedRequest;
    private int mLastRequestLatency;
    public long mLastSuccessfulRequestTime;
    public int mSuccessfulRequest;

    private StatTracer() {
        this.MAX_REQUEST_LIMIT = CoreConstants.MILLIS_IN_ONE_HOUR;
        this.lastRequestTime = 0L;
        this.firstActivateTime = 0L;
        init();
    }

    /* renamed from: com.umeng.commonsdk.statistics.internal.StatTracer$a */
    /* loaded from: classes2.dex */
    private static class C2444a {

        /* renamed from: a */
        public static final StatTracer f1344a = new StatTracer();

        private C2444a() {
        }
    }

    public static StatTracer getInstance(Context context) {
        if (mContext == null) {
            if (context != null) {
                mContext = context.getApplicationContext();
            } else {
                MLog.m388e("inside StatTracer. please check context. context must not be null!");
            }
        }
        return C2444a.f1344a;
    }

    private void init() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(mContext);
        this.mSuccessfulRequest = sharedPreferences.getInt(KEY_CLIENT_REQUEST_SUCCESS, 0);
        this.mFailedRequest = sharedPreferences.getInt(KEY_CLIENT_REQUEST_FAILED, 0);
        this.mLastRequestLatency = sharedPreferences.getInt(KEY_CLIENT_REQUEST_LATENCY, 0);
        this.mLastSuccessfulRequestTime = sharedPreferences.getLong(KEY_CLIENT_REQUEST_TIME, 0L);
        this.lastRequestTime = sharedPreferences.getLong(KEY_LAST_REQ, 0L);
    }

    public int getLastRequestLatency() {
        return this.mLastRequestLatency > 3600000 ? CoreConstants.MILLIS_IN_ONE_HOUR : this.mLastRequestLatency;
    }

    public boolean isFirstRequest() {
        return this.mLastSuccessfulRequestTime == 0;
    }

    public void logSuccessfulRequest(boolean z) {
        this.mSuccessfulRequest++;
        if (z) {
            this.mLastSuccessfulRequestTime = this.lastRequestTime;
        }
    }

    public void logFailedRequest() {
        this.mFailedRequest++;
    }

    public void logRequestStart() {
        this.lastRequestTime = System.currentTimeMillis();
    }

    public void logRequestEnd() {
        this.mLastRequestLatency = (int) (System.currentTimeMillis() - this.lastRequestTime);
    }

    public void saveSate() {
        PreferenceWrapper.getDefault(mContext).edit().putInt(KEY_CLIENT_REQUEST_SUCCESS, this.mSuccessfulRequest).putInt(KEY_CLIENT_REQUEST_FAILED, this.mFailedRequest).putInt(KEY_CLIENT_REQUEST_LATENCY, this.mLastRequestLatency).putLong(KEY_LAST_REQ, this.lastRequestTime).putLong(KEY_CLIENT_REQUEST_TIME, this.mLastSuccessfulRequestTime).commit();
    }

    public long getFirstActivateTime() {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(mContext);
        this.firstActivateTime = PreferenceWrapper.getDefault(mContext).getLong(KEY_FIRST_ACTIVATE_TIME, 0L);
        if (this.firstActivateTime == 0) {
            this.firstActivateTime = System.currentTimeMillis();
            sharedPreferences.edit().putLong(KEY_FIRST_ACTIVATE_TIME, this.firstActivateTime).commit();
        }
        return this.firstActivateTime;
    }

    public long getLastReqTime() {
        return this.lastRequestTime;
    }

    @Override // com.umeng.commonsdk.statistics.internal.AbstractC2448b
    public void onRequestStart() {
        logRequestStart();
    }

    @Override // com.umeng.commonsdk.statistics.internal.AbstractC2448b
    public void onRequestEnd() {
        logRequestEnd();
    }

    @Override // com.umeng.commonsdk.statistics.internal.AbstractC2448b
    public void onRequestSucceed(boolean z) {
        logSuccessfulRequest(z);
    }

    @Override // com.umeng.commonsdk.statistics.internal.AbstractC2448b
    public void onRequestFailed() {
        logFailedRequest();
    }
}
