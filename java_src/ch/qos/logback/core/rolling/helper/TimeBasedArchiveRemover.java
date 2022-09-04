package ch.qos.logback.core.rolling.helper;

import java.io.File;
import java.util.Date;
/* loaded from: classes.dex */
public class TimeBasedArchiveRemover extends DefaultArchiveRemover {
    public TimeBasedArchiveRemover(FileNamePattern fileNamePattern, RollingCalendar rollingCalendar) {
        super(fileNamePattern, rollingCalendar);
    }

    @Override // ch.qos.logback.core.rolling.helper.DefaultArchiveRemover
    protected void cleanByPeriodOffset(Date date, int i) {
        File file = new File(this.fileNamePattern.convert(this.f48rc.getRelativeDate(date, i)));
        if (!file.exists() || !file.isFile()) {
            return;
        }
        file.delete();
        addInfo("deleting " + file);
        if (!this.parentClean) {
            return;
        }
        removeFolderIfEmpty(file.getParentFile());
    }

    public String toString() {
        return "c.q.l.core.rolling.helper.TimeBasedArchiveRemover";
    }
}
