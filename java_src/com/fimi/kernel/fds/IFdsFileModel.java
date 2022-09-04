package com.fimi.kernel.fds;

import java.io.File;
import java.util.concurrent.Future;
/* loaded from: classes.dex */
public interface IFdsFileModel {
    File getFile();

    String getFileFdsUrl();

    String getFileSuffix();

    String getFileSuffixCollect();

    int getFlightDuration();

    String getFlightMileage();

    String[] getNeedZipFileBySuffix();

    String getObjectName();

    File getPlaybackFile();

    FdsUploadTask getRunable();

    FdsUploadState getState();

    Future<?> getTaskFutrue();

    File getZipFile();

    void resetFile(File file);

    void resetPlaybackFile(File file);

    void setFileFdsUrl(String str);

    void setFileSuffix(String str);

    void setFileSuffixCollect(String str);

    void setObjectName(String str);

    void setRunable(FdsUploadTask fdsUploadTask);

    void setState(FdsUploadState fdsUploadState);

    void setTaskFutrue(Future<?> future);

    void setZipFile(File file);

    void stopTask();
}
