.class public interface abstract Lcom/fimi/kernel/fds/IFdsFileModel;
.super Ljava/lang/Object;
.source "IFdsFileModel.java"


# virtual methods
.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getFileFdsUrl()Ljava/lang/String;
.end method

.method public abstract getFileSuffix()Ljava/lang/String;
.end method

.method public abstract getFileSuffixCollect()Ljava/lang/String;
.end method

.method public abstract getFlightDuration()I
.end method

.method public abstract getFlightMileage()Ljava/lang/String;
.end method

.method public abstract getNeedZipFileBySuffix()[Ljava/lang/String;
.end method

.method public abstract getObjectName()Ljava/lang/String;
.end method

.method public abstract getPlaybackFile()Ljava/io/File;
.end method

.method public abstract getRunable()Lcom/fimi/kernel/fds/FdsUploadTask;
.end method

.method public abstract getState()Lcom/fimi/kernel/fds/FdsUploadState;
.end method

.method public abstract getTaskFutrue()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getZipFile()Ljava/io/File;
.end method

.method public abstract resetFile(Ljava/io/File;)V
.end method

.method public abstract resetPlaybackFile(Ljava/io/File;)V
.end method

.method public abstract setFileFdsUrl(Ljava/lang/String;)V
.end method

.method public abstract setFileSuffix(Ljava/lang/String;)V
.end method

.method public abstract setFileSuffixCollect(Ljava/lang/String;)V
.end method

.method public abstract setObjectName(Ljava/lang/String;)V
.end method

.method public abstract setRunable(Lcom/fimi/kernel/fds/FdsUploadTask;)V
.end method

.method public abstract setState(Lcom/fimi/kernel/fds/FdsUploadState;)V
.end method

.method public abstract setTaskFutrue(Ljava/util/concurrent/Future;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract setZipFile(Ljava/io/File;)V
.end method

.method public abstract stopTask()V
.end method
