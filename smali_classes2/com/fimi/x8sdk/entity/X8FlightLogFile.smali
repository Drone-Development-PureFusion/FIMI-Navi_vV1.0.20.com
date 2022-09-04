.class public Lcom/fimi/x8sdk/entity/X8FlightLogFile;
.super Lcom/fimi/x8sdk/entity/X8FdsFile;
.source "X8FlightLogFile.java"


# instance fields
.field private dateSecond:J

.field private fdsUploadTask:Lcom/fimi/kernel/fds/FdsUploadTask;

.field private file:Ljava/io/File;

.field private fileLogCollectState:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private flightDuration:I

.field private flightMileage:Ljava/lang/String;

.field private isUpload:Z

.field private nameShow:Ljava/lang/String;

.field private playbackFile:Ljava/io/File;

.field private playbackFileName:Ljava/lang/String;

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
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Lcom/fimi/x8sdk/entity/X8FdsFile;-><init>()V

    .line 28
    const-string v0, "1"

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fileLogCollectState:Ljava/lang/String;

    .line 29
    const-string v0, "0.0"

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->flightMileage:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->flightDuration:I

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "playback"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->zipFileSuffix:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculationLen()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v6, 0x400

    .line 167
    iget-object v4, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 168
    .local v2, "fileS":J
    const-string v1, "0B"

    .line 169
    .local v1, "size":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#.00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "df":Ljava/text/DecimalFormat;
    cmp-long v4, v2, v6

    if-gez v4, :cond_1

    .line 171
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 172
    const-string v1, "0B"

    .line 183
    :goto_0
    return-object v1

    .line 174
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_1
    const-wide/32 v4, 0x100000

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 178
    :cond_2
    const-wide/32 v4, 0x40000000

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 179
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

    .line 181
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

.method public getDateSecond()J
    .locals 4

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->dateSecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFileFdsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->filefdsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLogCollectState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fileLogCollectState:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fileSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSuffixCollect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fileSuffixCollect:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightDuration()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->flightDuration:I

    return v0
.end method

.method public getFlightMileage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->flightMileage:Ljava/lang/String;

    return-object v0
.end method

.method public getNameShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->nameShow:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedZipFileBySuffix()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->zipFileSuffix:[Ljava/lang/String;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFile:Ljava/io/File;

    return-object v0
.end method

.method public getRunable()Lcom/fimi/kernel/fds/FdsUploadTask;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fdsUploadTask:Lcom/fimi/kernel/fds/FdsUploadTask;

    return-object v0
.end method

.method public getShowLen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->showLen:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/fimi/kernel/fds/FdsUploadState;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->state:Lcom/fimi/kernel/fds/FdsUploadState;

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
    .line 61
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->taskFutrue:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getZipFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->zipFile:Ljava/io/File;

    return-object v0
.end method

.method public isFileLogCollect()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fileLogCollectState:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpload()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isUpload:Z

    return v0
.end method

.method public resetFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->file:Ljava/io/File;

    .line 164
    return-void
.end method

.method public resetPlaybackFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFile:Ljava/io/File;

    .line 227
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->file:Ljava/io/File;

    .line 160
    return-void
.end method

.method public setFileFdsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->filefdsUrl:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setFileLogCollectState(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileLogCollectState"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fileLogCollectState:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fileName:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setFileSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileSuffix"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fileSuffix:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setFileSuffixCollect(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileSuffixCollect"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fileSuffixCollect:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setFlightDuration(I)V
    .locals 0
    .param p1, "flightDuration"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->flightDuration:I

    .line 217
    return-void
.end method

.method public setFlightMileage(Ljava/lang/String;)V
    .locals 0
    .param p1, "flightMileage"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->flightMileage:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectName"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->objectName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPlaybackFile(Ljava/io/File;Z)Z
    .locals 11
    .param p1, "playbackFile"    # Ljava/io/File;
    .param p2, "uploadSuccessfulAll"    # Z

    .prologue
    .line 230
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFile:Ljava/io/File;

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFileName:Ljava/lang/String;

    .line 232
    const/4 v6, 0x0

    .line 234
    .local v6, "ret":Z
    :try_start_0
    const-string v5, "yyyy-MM-dd-HH-mm-ss"

    .line 235
    .local v5, "p":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 236
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v7, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFileName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 237
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->dateSecond:J

    .line 238
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 239
    .local v3, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->nameShow:Ljava/lang/String;

    .line 240
    if-eqz p2, :cond_2

    .line 241
    sget-object v7, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->fileNames:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 242
    .local v2, "fileName":Ljava/lang/String;
    iget-object v8, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFileName:Ljava/lang/String;

    const-string v9, ".playback"

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 245
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isUpload:Z

    .line 246
    const/4 v6, 0x1

    .line 247
    sget-object v8, Lcom/fimi/kernel/fds/FdsUploadState;->SUCCESS:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-virtual {p0, v8}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v5    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFileName:Ljava/lang/String;

    iput-object v7, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->nameShow:Ljava/lang/String;

    .line 273
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v6

    .line 249
    .restart local v0    # "d":Ljava/util/Date;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    .restart local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v5    # "p":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFileName:Ljava/lang/String;

    sget-object v9, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 250
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isUpload:Z

    .line 251
    const/4 v6, 0x1

    .line 252
    sget-object v8, Lcom/fimi/kernel/fds/FdsUploadState;->SUCCESS:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-virtual {p0, v8}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    goto :goto_0

    .line 257
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFileName:Ljava/lang/String;

    sget-object v8, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 258
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isUpload:Z

    .line 259
    const/4 v6, 0x1

    .line 260
    sget-object v7, Lcom/fimi/kernel/fds/FdsUploadState;->SUCCESS:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 264
    :cond_3
    iget-object v7, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->playbackFileName:Ljava/lang/String;

    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v8

    iget-object v8, v8, Lcom/fimi/x8sdk/X8FcLogManager;->prexCollect:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 265
    const-string v7, "0"

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setFileLogCollectState(Ljava/lang/String;)V

    .line 267
    :cond_4
    sget-object v7, Lcom/fimi/x8sdk/X8FcLogManager;->prexSD:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setFileSuffix(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v7

    iget-object v7, v7, Lcom/fimi/x8sdk/X8FcLogManager;->prexCollect:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setFileSuffixCollect(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->calculationLen()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->setShowLen(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setRunable(Lcom/fimi/kernel/fds/FdsUploadTask;)V
    .locals 0
    .param p1, "fdsUploadTask"    # Lcom/fimi/kernel/fds/FdsUploadTask;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->fdsUploadTask:Lcom/fimi/kernel/fds/FdsUploadTask;

    .line 118
    return-void
.end method

.method public setShowLen(Ljava/lang/String;)V
    .locals 0
    .param p1, "showLen"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->showLen:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setState(Lcom/fimi/kernel/fds/FdsUploadState;)V
    .locals 0
    .param p1, "state"    # Lcom/fimi/kernel/fds/FdsUploadState;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->state:Lcom/fimi/kernel/fds/FdsUploadState;

    .line 57
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
    .line 66
    .local p1, "taskFutrue":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->taskFutrue:Ljava/util/concurrent/Future;

    .line 67
    return-void
.end method

.method public setUpload(Z)V
    .locals 0
    .param p1, "upload"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->isUpload:Z

    .line 52
    return-void
.end method

.method public setZipFile(Ljava/io/File;)V
    .locals 0
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/fimi/x8sdk/entity/X8FlightLogFile;->zipFile:Ljava/io/File;

    .line 128
    return-void
.end method

.method public stopTask()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
