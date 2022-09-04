package ch.qos.logback.core.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
/* loaded from: classes.dex */
public class CachingDateFormatter {
    final SimpleDateFormat sdf;
    long lastTimestamp = -1;
    String cachedStr = null;

    public CachingDateFormatter(String str) {
        this.sdf = new SimpleDateFormat(str);
    }

    public final String format(long j) {
        String str;
        synchronized (this) {
            if (j != this.lastTimestamp) {
                this.lastTimestamp = j;
                this.cachedStr = this.sdf.format(new Date(j));
            }
            str = this.cachedStr;
        }
        return str;
    }

    public void setTimeZone(TimeZone timeZone) {
        this.sdf.setTimeZone(timeZone);
    }
}
