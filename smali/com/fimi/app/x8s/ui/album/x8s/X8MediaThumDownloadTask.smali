.class public Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;
.super Ljava/lang/Object;
.source "X8MediaThumDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/fimi/kernel/connect/session/MediaDataListener;


# instance fields
.field downMediaFileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

.field private finished:J

.field private listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

.field max_size:S

.field private model:Lcom/fimi/album/entity/MediaModel;

.field randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V
    .locals 2
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "listener"    # Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x400

    iput-short v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->max_size:S

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->finished:J

    .line 45
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->downMediaFileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

    .line 39
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    .line 40
    iput-object p2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fimi/album/entity/MediaModel;->setThumDownloading(Z)V

    .line 42
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/connect/session/NoticeManager;->addMediaListener(Lcom/fimi/kernel/connect/session/MediaDataListener;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->createNewFile()V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/entity/MediaModel;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->finished:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;J)J
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->finished:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;Lcom/fimi/x8sdk/command/X8MediaCmd;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;
    .param p1, "x1"    # Lcom/fimi/x8sdk/command/X8MediaCmd;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    return-void
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;)Lcom/fimi/album/download/interfaces/OnDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    return-object v0
.end method

.method private createNewFile()V
    .locals 7

    .prologue
    .line 132
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getThumLocalFilePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 153
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getThumLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "rootFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->downMediaFileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

    sget-object v3, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Success:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    invoke-interface {v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;->onEndFile(Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 141
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 142
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->randomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getThumFileUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 147
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->downMediaFileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

    sget-object v3, Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;->Fail:Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;

    invoke-interface {v2, v3}, Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;->onEndFile(Lcom/fimi/app/x8s/ui/album/x8s/DownFileResultEnum;)V

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alanqiu  ===============createNewFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getThumFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 151
    new-instance v2, Lcom/fimi/x8sdk/command/X8DownLoadCmd;

    invoke-direct {v2}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;-><init>()V

    iget-wide v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->finished:J

    long-to-int v3, v4

    const/16 v4, 0x400

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getThumFileUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/fimi/x8sdk/command/X8DownLoadCmd;->downMediaFile(ISLjava/lang/String;Z)Lcom/fimi/x8sdk/command/X8MediaCmd;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V

    goto/16 :goto_0
.end method

.method private sendCmd(Lcom/fimi/x8sdk/command/X8MediaCmd;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/x8sdk/command/X8MediaCmd;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/session/SessionManager;->sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0
.end method


# virtual methods
.method public mediaDataCallBack([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 157
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 158
    const/4 v2, 0x0

    aget-byte v0, p1, v2

    .line 159
    .local v0, "cmdType":B
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 160
    new-instance v1, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;

    invoke-direct {v1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;-><init>()V

    .line 161
    .local v1, "downLoadPacket":Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;
    invoke-virtual {v1, p1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->unPacket([B)V

    .line 162
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->downMediaFileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

    invoke-interface {v2, v1}, Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;->onProgress(Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;)V

    .line 163
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alanqiu  ===============Thum===mediaDataCallBack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 166
    .end local v0    # "cmdType":B
    .end local v1    # "downLoadPacket":Lcom/fimi/x8sdk/dataparser/MediaFileDownLoadPacket;
    :cond_0
    return-void
.end method

.method public removeMediaListener()V
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fimi/kernel/connect/session/NoticeManager;->removeMediaListener(Lcom/fimi/kernel/connect/session/MediaDataListener;)V

    .line 171
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;->downMediaFileLinstener:Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/ui/album/x8s/listener/DownMediaFileLinstener;->onSartFile()V

    .line 119
    return-void
.end method
