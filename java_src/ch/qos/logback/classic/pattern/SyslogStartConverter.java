package ch.qos.logback.classic.pattern;

import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.classic.util.LevelToSyslogSeverity;
import ch.qos.logback.core.net.SyslogAppenderBase;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes.dex */
public class SyslogStartConverter extends ClassicConverter {
    int facility;
    SimpleDateFormat simpleFormat;
    long lastTimestamp = -1;
    String timesmapStr = null;
    final String localHostName = "localhost";

    String computeTimeStampString(long j) {
        String str;
        synchronized (this) {
            if (j != this.lastTimestamp) {
                this.lastTimestamp = j;
                this.timesmapStr = this.simpleFormat.format(new Date(j));
            }
            str = this.timesmapStr;
        }
        return str;
    }

    @Override // ch.qos.logback.core.pattern.Converter
    public String convert(ILoggingEvent iLoggingEvent) {
        return "<" + (this.facility + LevelToSyslogSeverity.convert(iLoggingEvent)) + ">" + computeTimeStampString(iLoggingEvent.getTimeStamp()) + " localhost ";
    }

    @Override // ch.qos.logback.core.pattern.DynamicConverter, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        boolean z = false;
        String firstOption = getFirstOption();
        if (firstOption == null) {
            addError("was expecting a facility string as an option");
            return;
        }
        this.facility = SyslogAppenderBase.facilityStringToint(firstOption);
        try {
            this.simpleFormat = new SimpleDateFormat("MMM dd HH:mm:ss", new DateFormatSymbols(Locale.US));
        } catch (IllegalArgumentException e) {
            addError("Could not instantiate SimpleDateFormat", e);
            z = true;
        }
        if (z) {
            return;
        }
        super.start();
    }
}
