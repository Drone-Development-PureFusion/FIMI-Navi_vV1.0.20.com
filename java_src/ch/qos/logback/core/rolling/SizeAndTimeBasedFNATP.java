package ch.qos.logback.core.rolling;

import ch.qos.logback.core.joran.spi.NoAutoStart;
import ch.qos.logback.core.rolling.helper.ArchiveRemover;
import ch.qos.logback.core.rolling.helper.CompressionMode;
import ch.qos.logback.core.rolling.helper.FileFilterUtil;
import ch.qos.logback.core.rolling.helper.SizeAndTimeBasedArchiveRemover;
import ch.qos.logback.core.util.FileSize;
import java.io.File;
import java.util.Date;
@NoAutoStart
/* loaded from: classes.dex */
public class SizeAndTimeBasedFNATP<E> extends TimeBasedFileNamingAndTriggeringPolicyBase<E> {
    private int invocationCounter;
    FileSize maxFileSize;
    String maxFileSizeAsString;
    int currentPeriodsCounter = 0;
    private int invocationMask = 1;

    private String getFileNameIncludingCompressionSuffix(Date date, int i) {
        return this.tbrp.fileNamePattern.convertMultipleArguments(this.dateInCurrentPeriod, Integer.valueOf(i));
    }

    void computeCurrentPeriodsHighestCounterValue(String str) {
        File[] filesInFolderMatchingStemRegex = FileFilterUtil.filesInFolderMatchingStemRegex(new File(getCurrentPeriodsFileNameWithoutCompressionSuffix()).getParentFile(), str);
        if (filesInFolderMatchingStemRegex == null || filesInFolderMatchingStemRegex.length == 0) {
            this.currentPeriodsCounter = 0;
            return;
        }
        this.currentPeriodsCounter = FileFilterUtil.findHighestCounter(filesInFolderMatchingStemRegex, str);
        if (this.tbrp.getParentsRawFileProperty() == null && this.tbrp.compressionMode == CompressionMode.NONE) {
            return;
        }
        this.currentPeriodsCounter++;
    }

    protected ArchiveRemover createArchiveRemover() {
        return new SizeAndTimeBasedArchiveRemover(this.tbrp.fileNamePattern, this.f46rc);
    }

    @Override // ch.qos.logback.core.rolling.TimeBasedFileNamingAndTriggeringPolicyBase, ch.qos.logback.core.rolling.TimeBasedFileNamingAndTriggeringPolicy
    public String getCurrentPeriodsFileNameWithoutCompressionSuffix() {
        return this.tbrp.fileNamePatternWCS.convertMultipleArguments(this.dateInCurrentPeriod, Integer.valueOf(this.currentPeriodsCounter));
    }

    public String getMaxFileSize() {
        return this.maxFileSizeAsString;
    }

    @Override // ch.qos.logback.core.rolling.TriggeringPolicy
    public boolean isTriggeringEvent(File file, E e) {
        long currentTime = getCurrentTime();
        if (currentTime >= this.nextCheck) {
            this.elapsedPeriodsFileName = this.tbrp.fileNamePatternWCS.convertMultipleArguments(this.dateInCurrentPeriod, Integer.valueOf(this.currentPeriodsCounter));
            this.currentPeriodsCounter = 0;
            setDateInCurrentPeriod(currentTime);
            computeNextCheck();
            return true;
        }
        int i = this.invocationCounter + 1;
        this.invocationCounter = i;
        if ((i & this.invocationMask) != this.invocationMask) {
            return false;
        }
        if (this.invocationMask < 15) {
            this.invocationMask = (this.invocationMask << 1) + 1;
        }
        if (file.length() < this.maxFileSize.getSize()) {
            return false;
        }
        this.elapsedPeriodsFileName = this.tbrp.fileNamePatternWCS.convertMultipleArguments(this.dateInCurrentPeriod, Integer.valueOf(this.currentPeriodsCounter));
        this.currentPeriodsCounter++;
        return true;
    }

    public void setMaxFileSize(String str) {
        this.maxFileSizeAsString = str;
        this.maxFileSize = FileSize.valueOf(str);
    }

    @Override // ch.qos.logback.core.rolling.TimeBasedFileNamingAndTriggeringPolicyBase, ch.qos.logback.core.spi.LifeCycle
    public void start() {
        super.start();
        this.archiveRemover = createArchiveRemover();
        this.archiveRemover.setContext(this.context);
        computeCurrentPeriodsHighestCounterValue(FileFilterUtil.afterLastSlash(this.tbrp.fileNamePattern.toRegexForFixedDate(this.dateInCurrentPeriod)));
        this.started = true;
    }
}
