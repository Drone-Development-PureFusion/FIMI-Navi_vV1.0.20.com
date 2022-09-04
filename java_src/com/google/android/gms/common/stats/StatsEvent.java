package com.google.android.gms.common.stats;

import ch.qos.logback.classic.net.SyslogAppender;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbgl;
/* loaded from: classes2.dex */
public abstract class StatsEvent extends zzbgl implements ReflectedParcelable {
    public abstract int getEventType();

    public abstract long getTimeMillis();

    public String toString() {
        long timeMillis = getTimeMillis();
        int eventType = getEventType();
        long zzann = zzann();
        String zzano = zzano();
        return new StringBuilder(String.valueOf(zzano).length() + 53).append(timeMillis).append(SyslogAppender.DEFAULT_STACKTRACE_PATTERN).append(eventType).append(SyslogAppender.DEFAULT_STACKTRACE_PATTERN).append(zzann).append(zzano).toString();
    }

    public abstract long zzann();

    public abstract String zzano();
}
