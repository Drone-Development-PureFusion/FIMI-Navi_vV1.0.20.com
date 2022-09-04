.class public Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;
.super Ljava/lang/Object;
.source "X8MediaOriginalDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

.field private finished:J

.field isAwait:Z

.field private listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

.field max_size:I

.field mediaDataListener:Lcom/fimi/kernel/connect/session/MediaDataListener;

.field private model:Lcom/fimi/album/entity/MediaModel;

.field randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "listener"    # Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    .line 37
    const/16 v0, 0x400

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->max_size:I

    .line 38
    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->isAwait:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 94
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->mediaDataListener:Lcom/fimi/kernel/connect/session/MediaDataListener;

    .line 44
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    .line 45
    iput-object p2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .line 46
    invoke-virtual {p1, v2}, Lcom/fimi/album/entity/MediaModel;->setStop(Z)V

    .line 47
    invoke-virtual {p1, v2}, Lcom/fimi/album/entity/MediaModel;->setDownloadFail(Z)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 49
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->mediaDataListener:Lcom/fimi/kernel/connect/session/MediaDataListener;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/NoticeManager;->addMediaListener(Lcom/fimi/kernel/connect/session/MediaDataListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/entity/MediaModel;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;J)J
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)Lcom/fimi/album/download/interfaces/OnDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;Lcom/fimi/album/entity/MediaModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;
    .param p1, "x1"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->save(Lcom/fimi/album/entity/MediaModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->closeWriteStream()V

    return-void
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;Lcom/fimi/x8sdk/command/X8MediaCmd;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;
    .param p1, "x1"    # Lcom/fimi/x8sdk/command/X8MediaCmd;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    return-void
.end method

.method private askNextPacket()V
    .locals 5

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->max_size:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->max_size:I

    :goto_1
    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->max_size:I

    .line 250
    new-instance v0, Lcom/fimi/x8sdk/command/X8DownLoadCmd;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;-><init>()V

    iget-wide v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    long-to-int v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->max_size:I

    int-to-short v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->downMediaFile(ISLjava/lang/String;Z)Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    goto :goto_1
.end method

.method private closeWriteStream()V
    .locals 2

    .prologue
    .line 266
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 274
    :cond_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private save(Lcom/fimi/album/entity/MediaModel;)Z
    .locals 6
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 254
    const-string v3, ""

    .line 255
    .local v3, "name":Ljava/lang/String;
    const-string v2, ""

    .line 256
    .local v2, "localPath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getLocalFileDir()Ljava/lang/String;

    move-result-object v2

    .line 258
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getDownloadName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .local v4, "tmpFile":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 261
    .local v0, "b":Z
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 262
    return v0
.end method

.method private sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/x8sdk/command/X8MediaCmd;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/session/SessionManager;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method

.method private startDownload()V
    .locals 10

    .prologue
    .line 58
    const-string v5, "felix"

    const-string v6, "======\u5f00\u59cb\u4e0b\u8f7d====="

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getLocalFileDir()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "urlPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "downloadName":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5, v0}, Lcom/fimi/album/entity/MediaModel;->setDownloadName(Ljava/lang/String;)V

    .line 63
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    .line 74
    :goto_0
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rwd"

    invoke-direct {v5, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 75
    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v6, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :goto_1
    const-string v5, "felix"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5f00\u59cb\u4e0b\u8f7d\u4f4d\u7f6e\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alanqiu  ==================startDownload:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v7}, Lcom/fimi/album/entity/MediaModel;->getDownLoadOriginalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 81
    new-instance v5, Lcom/fimi/x8sdk/command/X8DownLoadCmd;

    invoke-direct {v5}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;-><init>()V

    iget-wide v6, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    long-to-int v6, v6

    const/16 v7, 0x400

    iget-object v8, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v8}, Lcom/fimi/album/entity/MediaModel;->getDownLoadOriginalPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->downMediaFile(ISLjava/lang/String;Z)Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    .line 82
    return-void

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public removeMediaListener()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->mediaDataListener:Lcom/fimi/kernel/connect/session/MediaDataListener;

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->mediaDataListener:Lcom/fimi/kernel/connect/session/MediaDataListener;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/NoticeManager;->removeMediaListener(Lcom/fimi/kernel/connect/session/MediaDataListener;)V

    .line 243
    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->startDownload()V

    .line 55
    return-void
.end method

.method public sendStopDownload()V
    .locals 5

    .prologue
    .line 90
    new-instance v0, Lcom/fimi/x8sdk/command/X8DownLoadCmd;

    invoke-direct {v0}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;-><init>()V

    iget-wide v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->finished:J

    long-to-int v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->max_size:I

    int-to-short v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->downMediaFile(ISLjava/lang/String;Z)Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    .line 91
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    const-string v1, "Alanqiu  ==================mediaDataCallBack:==\u505c\u6b62\u4e0b\u8f7d==="

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 92
    return-void
.end method
