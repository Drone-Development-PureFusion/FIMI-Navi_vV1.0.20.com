.class public Lcom/fimi/app/x8s/entity/X8B2oxFile;
.super Lcom/fimi/x8sdk/entity/X8FdsFile;
.source "X8B2oxFile.java"


# instance fields
.field private fdsUploadTask:Lcom/fimi/kernel/fds/FdsUploadTask;

.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private isUpload:Z

.field private nameShow:Ljava/lang/String;

.field private operatingAnim:Landroid/view/animation/Animation;

.field private showLen:Ljava/lang/String;

.field private taskFutrue:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private zipFile:Ljava/io/File;

.field private zipFileSuffix:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fimi/x8sdk/entity/X8FdsFile;-><init>()V

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/fimi/x8sdk/X8FcLogManager;->prexFC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fimi/x8sdk/X8FcLogManager;->prexCM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/fimi/x8sdk/X8FcLogManager;->prexAPP:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/fimi/x8sdk/X8FcLogManager;->prexFcStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->zipFileSuffix:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculationLen()Ljava/lang/String;
    .locals 10

    .prologue
    .line 219
    iget-object v4, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->file:Ljava/io/File;

    invoke-static {v4}, Lcom/fimi/x8sdk/util/X8FileHelper;->getDirSize(Ljava/io/File;)J

    move-result-wide v2

    .line 220
    .local v2, "fileS":J
    const-string v1, "0B"

    .line 221
    .local v1, "size":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#.00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/16 v4, 0x400

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 223
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 224
    const-string v1, "0.00B"

    .line 235
    :goto_0
    return-object v1

    .line 226
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v6, v2

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 228
    :cond_1
    const-wide/32 v4, 0x100000

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v6, v2

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 230
    :cond_2
    const-wide/32 v4, 0x40000000

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v6, v2

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 233
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v6, v2

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "G"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileFdsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->filefdsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePrexName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 239
    iget-object v1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fileName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fileName:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "tmp":Ljava/lang/String;
    return-object v0
.end method

.method public getFileSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fileSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSuffixCollect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, ""

    return-object v0
.end method

.method public getFlightDuration()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getFlightMileage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNameShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->nameShow:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedZipFileBySuffix()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->zipFileSuffix:[Ljava/lang/String;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunable()Lcom/fimi/kernel/fds/FdsUploadTask;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fdsUploadTask:Lcom/fimi/kernel/fds/FdsUploadTask;

    return-object v0
.end method

.method public getShowLen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->showLen:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/fimi/kernel/fds/FdsUploadState;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->state:Lcom/fimi/kernel/fds/FdsUploadState;

    return-object v0
.end method

.method public getTaskFutrue()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->taskFutrue:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getZipFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->zipFile:Ljava/io/File;

    return-object v0
.end method

.method public isUpload()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->isUpload:Z

    return v0
.end method

.method public resetFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->file:Ljava/io/File;

    .line 216
    return-void
.end method

.method public resetPlaybackFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 137
    return-void
.end method

.method public setFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "prx"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->file:Ljava/io/File;

    .line 193
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fileName:Ljava/lang/String;

    .line 194
    const/4 v5, 0x0

    .line 196
    .local v5, "ret":Z
    :try_start_0
    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss-SSS"

    .line 197
    .local v4, "p":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v6, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 199
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->nameShow:Ljava/lang/String;

    .line 201
    iget-object v6, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fileName:Ljava/lang/String;

    sget-object v7, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->isUpload:Z

    .line 203
    const/4 v5, 0x1

    .line 204
    sget-object v6, Lcom/fimi/kernel/fds/FdsUploadState;->SUCCESS:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 206
    :cond_0
    sget-object v6, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->setFileSuffix(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->calculationLen()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fimi/app/x8s/entity/X8B2oxFile;->setShowLen(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "p":Ljava/lang/String;
    :goto_0
    return v5

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fileName:Ljava/lang/String;

    iput-object v6, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->nameShow:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFileFdsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->filefdsUrl:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fileName:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setFileSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileSuffix"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fileSuffix:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setFileSuffixCollect(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 117
    return-void
.end method

.method public setNameShow(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameShow"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->nameShow:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->objectName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setRunable(Lcom/fimi/kernel/fds/FdsUploadTask;)V
    .locals 0
    .param p1, "fdsUploadTask"    # Lcom/fimi/kernel/fds/FdsUploadTask;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->fdsUploadTask:Lcom/fimi/kernel/fds/FdsUploadTask;

    .line 147
    return-void
.end method

.method public setShowLen(Ljava/lang/String;)V
    .locals 0
    .param p1, "showLen"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->showLen:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setState(Lcom/fimi/kernel/fds/FdsUploadState;)V
    .locals 0
    .param p1, "state"    # Lcom/fimi/kernel/fds/FdsUploadState;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->state:Lcom/fimi/kernel/fds/FdsUploadState;

    .line 62
    return-void
.end method

.method public setTaskFutrue(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "taskFutrue":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->taskFutrue:Ljava/util/concurrent/Future;

    .line 72
    return-void
.end method

.method public setUpload(Z)V
    .locals 0
    .param p1, "upload"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->isUpload:Z

    .line 52
    return-void
.end method

.method public setZipFile(Ljava/io/File;)V
    .locals 0
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->zipFile:Ljava/io/File;

    .line 157
    return-void
.end method

.method public setZipFileSuffix([Ljava/lang/String;)V
    .locals 0
    .param p1, "zipFileSuffix"    # [Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fimi/app/x8s/entity/X8B2oxFile;->zipFileSuffix:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public stopTask()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
