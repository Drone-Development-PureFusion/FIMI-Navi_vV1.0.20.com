package ch.qos.logback.core.rolling.helper;

import ch.qos.logback.core.pattern.Converter;
import ch.qos.logback.core.pattern.LiteralConverter;
import ch.qos.logback.core.spi.ContextAwareBase;
import java.io.File;
import java.util.Date;
/* loaded from: classes.dex */
public abstract class DefaultArchiveRemover extends ContextAwareBase implements ArchiveRemover {
    protected static final long INACTIVITY_TOLERANCE_IN_MILLIS = 5529600000L;
    static final int MAX_VALUE_FOR_INACTIVITY_PERIODS = 336;
    protected static final long UNINITIALIZED = -1;
    final FileNamePattern fileNamePattern;
    long lastHeartBeat = -1;
    final boolean parentClean;
    int periodOffsetForDeletionTarget;

    /* renamed from: rc */
    final RollingCalendar f48rc;

    public DefaultArchiveRemover(FileNamePattern fileNamePattern, RollingCalendar rollingCalendar) {
        this.fileNamePattern = fileNamePattern;
        this.f48rc = rollingCalendar;
        this.parentClean = computeParentCleaningFlag(fileNamePattern);
    }

    private void removeFolderIfEmpty(File file, int i) {
        if (i < 3 && file.isDirectory() && FileFilterUtil.isEmptyDirectory(file)) {
            addInfo("deleting folder [" + file + "]");
            file.delete();
            removeFolderIfEmpty(file.getParentFile(), i + 1);
        }
    }

    @Override // ch.qos.logback.core.rolling.helper.ArchiveRemover
    public void clean(Date date) {
        long time = date.getTime();
        int computeElapsedPeriodsSinceLastClean = computeElapsedPeriodsSinceLastClean(time);
        this.lastHeartBeat = time;
        if (computeElapsedPeriodsSinceLastClean > 1) {
            addInfo("periodsElapsed = " + computeElapsedPeriodsSinceLastClean);
        }
        for (int i = 0; i < computeElapsedPeriodsSinceLastClean; i++) {
            cleanByPeriodOffset(date, this.periodOffsetForDeletionTarget - i);
        }
    }

    abstract void cleanByPeriodOffset(Date date, int i);

    int computeElapsedPeriodsSinceLastClean(long j) {
        long j2 = 336;
        if (this.lastHeartBeat == -1) {
            addInfo("first clean up after appender initialization");
            long periodsElapsed = this.f48rc.periodsElapsed(j, INACTIVITY_TOLERANCE_IN_MILLIS + j);
            if (periodsElapsed <= 336) {
                j2 = periodsElapsed;
            }
        } else {
            j2 = this.f48rc.periodsElapsed(this.lastHeartBeat, j);
            if (j2 < 1) {
                addWarn("Unexpected periodsElapsed value " + j2);
                j2 = 1;
            }
        }
        return (int) j2;
    }

    boolean computeParentCleaningFlag(FileNamePattern fileNamePattern) {
        if (fileNamePattern.getPrimaryDateTokenConverter().getDatePattern().indexOf(47) != -1) {
            return true;
        }
        Converter<Object> converter = fileNamePattern.headTokenConverter;
        while (converter != null && !(converter instanceof DateTokenConverter)) {
            converter = converter.getNext();
        }
        while (converter != null) {
            if ((converter instanceof LiteralConverter) && converter.convert(null).indexOf(47) != -1) {
                return true;
            }
            converter = converter.getNext();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeFolderIfEmpty(File file) {
        removeFolderIfEmpty(file, 0);
    }

    @Override // ch.qos.logback.core.rolling.helper.ArchiveRemover
    public void setMaxHistory(int i) {
        this.periodOffsetForDeletionTarget = (-i) - 1;
    }
}
