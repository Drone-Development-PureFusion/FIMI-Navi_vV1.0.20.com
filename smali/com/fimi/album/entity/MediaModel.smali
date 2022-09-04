.class public Lcom/fimi/album/entity/MediaModel;
.super Ljava/lang/Object;
.source "MediaModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/album/entity/MediaModel$recordType;
    }
.end annotation


# instance fields
.field private createDate:J

.field private downLoadOriginalPath:Ljava/lang/String;

.field private downLoadSmallPath:Ljava/lang/String;

.field private downloadName:Ljava/lang/String;

.field private downloading:Z

.field private fileLocalPath:Ljava/lang/String;

.field private fileSize:J

.field private fileUrl:Ljava/lang/String;

.field private formatDate:Ljava/lang/String;

.field private isCategory:Z

.field private isDownLoadOriginalFile:Z

.field private isDownLoadSmallFile:Z

.field private isDownLoadThum:Z

.field private isDownloadFail:Z

.field private isDownloadFinish:Z

.field private isHeadView:Z

.field private isLoadThulm:Z

.field private isSelect:Z

.field private volatile isStop:Z

.field private isThumDownloadFinish:Z

.field private isThumStop:Z

.field private isVideo:Z

.field private itemPosition:I

.field private localFileDir:Ljava/lang/String;

.field private localThumFileDir:Ljava/lang/String;

.field private md5:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private progress:I

.field taskFutrue:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private thumDownloading:Z

.field private thumFileUrl:Ljava/lang/String;

.field private thumLocalFilePath:Ljava/lang/String;

.field private thumName:Ljava/lang/String;

.field private thumSize:J

.field private thumTotal:J

.field private total:J

.field private videoDuration:Ljava/lang/String;

.field private videoType:Lcom/fimi/album/entity/MediaModel$recordType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sget-object v0, Lcom/fimi/album/entity/MediaModel$recordType;->normal_record:Lcom/fimi/album/entity/MediaModel$recordType;

    iput-object v0, p0, Lcom/fimi/album/entity/MediaModel;->videoType:Lcom/fimi/album/entity/MediaModel$recordType;

    .line 109
    iput-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isHeadView:Z

    .line 281
    iput-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isStop:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/fimi/album/entity/MediaModel;
    .locals 3

    .prologue
    .line 494
    const/4 v1, 0x0

    .line 496
    .local v1, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-object v1

    .line 497
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/fimi/album/entity/MediaModel;->clone()Lcom/fimi/album/entity/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/fimi/album/entity/MediaModel;->createDate:J

    return-wide v0
.end method

.method public getDownLoadOriginalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->downLoadOriginalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownLoadSmallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->downLoadSmallPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->downloadName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->fileLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/fimi/album/entity/MediaModel;->fileSize:J

    return-wide v0
.end method

.method public getFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->formatDate:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/fimi/album/entity/MediaModel;->itemPosition:I

    return v0
.end method

.method public getLocalFileDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->localFileDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalThumFileDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->localThumFileDir:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/fimi/album/entity/MediaModel;->progress:I

    return v0
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
    .line 440
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->taskFutrue:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getThumFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->thumFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumLocalFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->thumLocalFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->thumName:Ljava/lang/String;

    return-object v0
.end method

.method public getThumSize()J
    .locals 2

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/fimi/album/entity/MediaModel;->thumSize:J

    return-wide v0
.end method

.method public getThumTotal()J
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/fimi/album/entity/MediaModel;->thumTotal:J

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 356
    iget-wide v0, p0, Lcom/fimi/album/entity/MediaModel;->total:J

    return-wide v0
.end method

.method public getVideoDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->videoDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()Lcom/fimi/album/entity/MediaModel$recordType;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->videoType:Lcom/fimi/album/entity/MediaModel$recordType;

    return-object v0
.end method

.method public isCategory()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isCategory:Z

    return v0
.end method

.method public isDownLoadOriginalFile()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile:Z

    return v0
.end method

.method public isDownLoadSmallFile()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isDownLoadSmallFile:Z

    return v0
.end method

.method public isDownLoadThum()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isDownLoadThum:Z

    return v0
.end method

.method public isDownloadFail()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isDownloadFail:Z

    return v0
.end method

.method public isDownloadFinish()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isDownloadFinish:Z

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->downloading:Z

    return v0
.end method

.method public isHeadView()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isHeadView:Z

    return v0
.end method

.method public isLoadThulm()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isLoadThulm:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isSelect:Z

    return v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isStop:Z

    return v0
.end method

.method public isThumDownloadFinish()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isThumDownloadFinish:Z

    return v0
.end method

.method public isThumDownloading()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->thumDownloading:Z

    return v0
.end method

.method public isThumStop()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isThumStop:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/fimi/album/entity/MediaModel;->isVideo:Z

    return v0
.end method

.method public setCategory(Z)V
    .locals 0
    .param p1, "category"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isCategory:Z

    .line 207
    return-void
.end method

.method public setCreateDate(J)V
    .locals 1
    .param p1, "createDate"    # J

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/fimi/album/entity/MediaModel;->createDate:J

    .line 134
    return-void
.end method

.method public setDownLoadOriginalFile(Z)V
    .locals 0
    .param p1, "downLoadOriginalFile"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile:Z

    .line 264
    return-void
.end method

.method public setDownLoadOriginalPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "downLoadOriginalPath"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->downLoadOriginalPath:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setDownLoadSmallFile(Z)V
    .locals 0
    .param p1, "downLoadSmallFile"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isDownLoadSmallFile:Z

    .line 198
    return-void
.end method

.method public setDownLoadSmallPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "downLoadSmallPath"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->downLoadSmallPath:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setDownLoadThum(Z)V
    .locals 0
    .param p1, "downLoadThum"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isDownLoadThum:Z

    .line 248
    return-void
.end method

.method public setDownloadFail(Z)V
    .locals 0
    .param p1, "downloadFail"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isDownloadFail:Z

    .line 256
    return-void
.end method

.method public setDownloadFinish(Z)V
    .locals 0
    .param p1, "isDownloadFinish"    # Z

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isDownloadFinish:Z

    .line 352
    return-void
.end method

.method public setDownloadName(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadName"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->downloadName:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setDownloading(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->downloading:Z

    .line 377
    return-void
.end method

.method public setFileLocalPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileLocalPath"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->fileLocalPath:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/fimi/album/entity/MediaModel;->fileSize:J

    .line 190
    return-void
.end method

.method public setFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->fileUrl:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setFormatDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "formatDate"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->formatDate:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setHeadView(Z)V
    .locals 0
    .param p1, "headView"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isHeadView:Z

    .line 117
    return-void
.end method

.method public setItemPosition(I)V
    .locals 0
    .param p1, "itemPosition"    # I

    .prologue
    .line 436
    iput p1, p0, Lcom/fimi/album/entity/MediaModel;->itemPosition:I

    .line 437
    return-void
.end method

.method public setLoadThulm(Z)V
    .locals 0
    .param p1, "loadThulm"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isLoadThulm:Z

    .line 231
    return-void
.end method

.method public setLocalFileDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "localFileDir"    # Ljava/lang/String;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->localFileDir:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public setLocalThumFileDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "localThumFileDir"    # Ljava/lang/String;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->localThumFileDir:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->md5:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->name:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/fimi/album/entity/MediaModel;->progress:I

    .line 385
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .param p1, "select"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isSelect:Z

    .line 215
    return-void
.end method

.method public setStop(Z)V
    .locals 0
    .param p1, "isStop"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isStop:Z

    .line 317
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
    .line 444
    .local p1, "taskFutrue":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->taskFutrue:Ljava/util/concurrent/Future;

    .line 445
    return-void
.end method

.method public setThumDownloadFinish(Z)V
    .locals 0
    .param p1, "thumDownloadFinish"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isThumDownloadFinish:Z

    .line 338
    return-void
.end method

.method public setThumDownloading(Z)V
    .locals 0
    .param p1, "thumDownloading"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->thumDownloading:Z

    .line 325
    return-void
.end method

.method public setThumFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumFileUrl"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->thumFileUrl:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setThumLocalFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumLocalFilePath"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->thumLocalFilePath:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setThumName(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumName"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->thumName:Ljava/lang/String;

    .line 407
    return-void
.end method

.method public setThumSize(J)V
    .locals 1
    .param p1, "thumSize"    # J

    .prologue
    .line 298
    iput-wide p1, p0, Lcom/fimi/album/entity/MediaModel;->thumSize:J

    .line 299
    return-void
.end method

.method public setThumStop(Z)V
    .locals 0
    .param p1, "thumStop"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isThumStop:Z

    .line 342
    return-void
.end method

.method public setThumTotal(J)V
    .locals 1
    .param p1, "thumTotal"    # J

    .prologue
    .line 312
    iput-wide p1, p0, Lcom/fimi/album/entity/MediaModel;->thumTotal:J

    .line 313
    return-void
.end method

.method public setTotal(J)V
    .locals 1
    .param p1, "total"    # J

    .prologue
    .line 360
    iput-wide p1, p0, Lcom/fimi/album/entity/MediaModel;->total:J

    .line 361
    return-void
.end method

.method public setVideo(Z)V
    .locals 0
    .param p1, "video"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/fimi/album/entity/MediaModel;->isVideo:Z

    .line 166
    return-void
.end method

.method public setVideoDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoDuration"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->videoDuration:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setVideoType(Lcom/fimi/album/entity/MediaModel$recordType;)V
    .locals 0
    .param p1, "videoType"    # Lcom/fimi/album/entity/MediaModel$recordType;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/fimi/album/entity/MediaModel;->videoType:Lcom/fimi/album/entity/MediaModel$recordType;

    .line 272
    return-void
.end method

.method public stopTask()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->taskFutrue:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/fimi/album/entity/MediaModel;->taskFutrue:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 451
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/album/entity/MediaModel;->taskFutrue:Ljava/util/concurrent/Future;

    .line 452
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaModel{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/album/entity/MediaModel;->createDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", formatDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->formatDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileLocalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->fileLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumLocalFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->thumLocalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->fileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumFileUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->thumFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downLoadOriginalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->downLoadOriginalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downLoadSmallPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->downLoadSmallPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/album/entity/MediaModel;->fileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDownLoadOriginalFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDownloadFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isDownloadFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDownLoadSmallFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isDownLoadSmallFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDownLoadThum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isDownLoadThum:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isCategory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isSelect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoDuration=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->videoDuration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLoadThulm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isLoadThulm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHeadView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isHeadView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", itemPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/album/entity/MediaModel;->itemPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", md5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->downloading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/album/entity/MediaModel;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->downloadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/album/entity/MediaModel;->total:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDownloadFinish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fimi/album/entity/MediaModel;->isDownloadFinish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/album/entity/MediaModel;->thumSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->thumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localFileDir=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->localFileDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localThumFileDir=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/entity/MediaModel;->localThumFileDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
