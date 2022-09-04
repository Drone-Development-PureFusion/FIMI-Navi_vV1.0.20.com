package com.umeng.commonsdk.statistics.common;

import android.content.Context;
import com.umeng.commonsdk.framework.C2276c;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.internal.StatTracer;
import com.umeng.commonsdk.statistics.noise.Defcon;
/* loaded from: classes2.dex */
public class ReportPolicy {
    public static final int BATCH_AT_LAUNCH = 1;
    static final int BATCH_AT_TERMINATE = 2;
    public static final int BATCH_BY_INTERVAL = 6;
    public static final int DAILY = 4;
    static final int IMMEDIATE = 3;
    public static final int REALTIME = 0;
    public static final int SMART_POLICY = 8;
    public static final int WIFIONLY = 5;

    public static boolean isValid(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 8:
                return true;
            case 7:
            default:
                return false;
        }
    }

    /* loaded from: classes2.dex */
    public static class ReportStrategy {
        public boolean shouldSendMessage(boolean z) {
            return true;
        }

        public boolean isValid() {
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public static class ReportRealtime extends ReportStrategy {
        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public static class ReportAtLaunch extends ReportStrategy {
        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return z;
        }
    }

    /* loaded from: classes2.dex */
    public static class ReportByInterval extends ReportStrategy {
        private long mReportInterval;
        private StatTracer mTracer;
        private static long MIN_REPORT_INTERVAL = 90000;
        private static long MAX_REPORT_INTERVAL = 86400000;

        public ReportByInterval(StatTracer statTracer, long j) {
            this.mTracer = statTracer;
            setReportInterval(j);
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - UMEnvelopeBuild.lastSuccessfulBuildTime(C2276c.m997a()) >= this.mReportInterval;
        }

        public void setReportInterval(long j) {
            if (j >= MIN_REPORT_INTERVAL && j <= MAX_REPORT_INTERVAL) {
                this.mReportInterval = j;
            } else {
                this.mReportInterval = MIN_REPORT_INTERVAL;
            }
        }

        public long getReportInterval() {
            return this.mReportInterval;
        }

        public static boolean isValidValue(int i) {
            return ((long) i) >= MIN_REPORT_INTERVAL;
        }
    }

    /* loaded from: classes2.dex */
    public static class ReportDaily extends ReportStrategy {
        private long HOURS_DAY = 86400000;
        private StatTracer mTracer;

        public ReportDaily(StatTracer statTracer) {
            this.mTracer = statTracer;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - UMEnvelopeBuild.lastSuccessfulBuildTime(C2276c.m997a()) >= this.HOURS_DAY;
        }
    }

    /* loaded from: classes2.dex */
    public static class ReportWifiOnly extends ReportStrategy {
        private Context mContext;

        public ReportWifiOnly(Context context) {
            this.mContext = null;
            this.mContext = context;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return DeviceConfig.isWiFiAvailable(this.mContext);
        }
    }

    /* loaded from: classes2.dex */
    public static class DefconPolicy extends ReportStrategy {
        private Defcon defcon;
        private StatTracer tracer;

        public DefconPolicy(StatTracer statTracer, Defcon defcon) {
            this.tracer = statTracer;
            this.defcon = defcon;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - UMEnvelopeBuild.lastSuccessfulBuildTime(C2276c.m997a()) >= this.defcon.getReqInterval();
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean isValid() {
            return this.defcon.isOpen();
        }
    }

    /* loaded from: classes2.dex */
    public static class LatentPolicy extends ReportStrategy {
        private long latency;
        private long start;

        public LatentPolicy(int i) {
            this.start = 0L;
            this.latency = i;
            this.start = System.currentTimeMillis();
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - this.start >= this.latency;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean isValid() {
            return System.currentTimeMillis() - this.start < this.latency;
        }
    }

    /* loaded from: classes2.dex */
    public static class SmartPolicy extends ReportStrategy {
        private final long ReportInterval = 10800000;
        private StatTracer mTracer;

        public SmartPolicy(StatTracer statTracer) {
            this.mTracer = statTracer;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - UMEnvelopeBuild.lastSuccessfulBuildTime(C2276c.m997a()) >= 10800000;
        }
    }

    /* loaded from: classes2.dex */
    public static class DebugPolicy extends ReportStrategy {
        private final long ReportInterval = 15000;
        private StatTracer mTracer;

        public DebugPolicy(StatTracer statTracer) {
            this.mTracer = statTracer;
        }

        @Override // com.umeng.commonsdk.statistics.common.ReportPolicy.ReportStrategy
        public boolean shouldSendMessage(boolean z) {
            return System.currentTimeMillis() - UMEnvelopeBuild.lastSuccessfulBuildTime(C2276c.m997a()) >= 15000;
        }
    }
}
