.class public Lcom/fimi/album/download/task/MediaOriginalDownloadTask;
.super Ljava/lang/Object;
.source "MediaOriginalDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

.field private finished:J

.field private listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

.field private model:Lcom/fimi/album/entity/MediaModel;


# direct methods
.method public constructor <init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "listener"    # Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->finished:J

    .line 27
    iput-object p1, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    .line 28
    iput-object p2, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .line 29
    invoke-virtual {p1, v2}, Lcom/fimi/album/entity/MediaModel;->setStop(Z)V

    .line 30
    invoke-virtual {p1, v2}, Lcom/fimi/album/entity/MediaModel;->setDownloadFail(Z)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 32
    return-void
.end method

.method private startDownload()V
    .locals 8

    .prologue
    .line 43
    const-string v3, ""

    .line 44
    .local v3, "path":Ljava/lang/String;
    const-string v2, ""

    .line 45
    .local v2, "fileName":Ljava/lang/String;
    const-string v4, ""

    .line 47
    .local v4, "urlPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getLocalFileDir()Ljava/lang/String;

    move-result-object v3

    .line 48
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    .line 50
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fimi/album/entity/MediaModel;->setDownloadName(Ljava/lang/String;)V

    .line 51
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->getDownloadName()Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 58
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v6}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->queryMediaDownloadInfo(Ljava/lang/String;)Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .line 61
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    if-eqz v5, :cond_3

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v6}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setEndPos(J)V

    .line 64
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {v6}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getCompeleteZize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setStartPos(J)V

    .line 76
    :goto_0
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {v5}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getStartPos()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->finished:J

    .line 79
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v6}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setEndPos(J)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadFile(Ljava/io/File;)V

    .line 81
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->isDownloadFinish()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 82
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v6}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->deleteMediaDownloadInfo(Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {p0, v5}, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->save(Lcom/fimi/album/entity/MediaModel;)Z

    .line 84
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v5, v6}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onSuccess(Ljava/lang/Object;)V

    .line 95
    :cond_1
    :goto_1
    return-void

    .line 66
    :cond_2
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v6}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->deleteByUrl(Ljava/lang/String;)V

    .line 67
    new-instance v5, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-direct {v5}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;-><init>()V

    iput-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .line 68
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v6}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->addMediaDownloadInfo(Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)V

    goto :goto_0

    .line 72
    :cond_3
    new-instance v5, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-direct {v5}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;-><init>()V

    iput-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .line 73
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v6}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {v5, v6}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->addMediaDownloadInfo(Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)V

    goto :goto_0

    .line 88
    :cond_4
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->isStop()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v5, v6}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onStop(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_1

    .line 90
    :cond_5
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v5}, Lcom/fimi/album/entity/MediaModel;->isDownloadFail()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    const-string v5, "download"

    const-string v6, "MediaOriginalDownloadTask====startDownload: "

    invoke-static {v5, v6}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v5, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v6, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v5, v6}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onFailure(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public downloadFile(Ljava/io/File;)V
    .locals 16
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isStop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v9, 0x0

    .line 102
    .local v9, "connection":Ljava/net/HttpURLConnection;
    const/4 v13, 0x0

    .line 103
    .local v13, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v11, 0x0

    .line 105
    .local v11, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 106
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 107
    const/16 v2, 0xbb8

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 108
    const-string v2, "GET"

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 110
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    .line 111
    invoke-virtual {v4}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getStartPos()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v2, "rwd"

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v14, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->getStartPos()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 117
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 118
    const/16 v2, 0x2800

    new-array v8, v2, [B

    .line 119
    .local v8, "buffer":[B
    const/4 v12, -0x1

    .line 120
    .local v12, "length":I
    :cond_1
    invoke-virtual {v11, v8}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v2, -0x1

    if-eq v12, v2, :cond_2

    .line 121
    const/4 v2, 0x0

    invoke-virtual {v14, v8, v2, v12}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 122
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->finished:J

    int-to-long v4, v12

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->finished:J

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->finished:J

    invoke-virtual {v2, v4, v5}, Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;->setCompeleteZize(J)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->finished:J

    invoke-virtual {v2, v4, v5}, Lcom/fimi/album/entity/MediaModel;->setTotal(J)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloadFail(Z)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getTotal()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v6}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v6

    invoke-interface/range {v2 .. v7}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onProgress(Ljava/lang/Object;JJ)V

    .line 129
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v3}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->downloadInfo:Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/store/sqlite/helper/MediaDownloadInfoHelper;->updateMediaDownloadInfo(Ljava/lang/String;Lcom/fimi/kernel/store/sqlite/entity/MediaDownloadInfo;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isStop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloadFinish(Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v2, v3}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onStop(Lcom/fimi/album/entity/MediaModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 161
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 162
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 163
    :catch_0
    move-exception v10

    .line 164
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 139
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->finished:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloadFinish(Z)V

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalFile(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    :goto_1
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 161
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 162
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v13, v14

    .line 165
    .end local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 145
    .end local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloadFinish(Z)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloadFail(Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v2, v3}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 151
    .end local v8    # "buffer":[B
    .end local v12    # "length":I
    :catch_1
    move-exception v10

    move-object v13, v14

    .line 153
    .end local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v15    # "url":Ljava/net/URL;
    .restart local v10    # "e":Ljava/lang/Exception;
    .restart local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloadFinish(Z)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloadFail(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v2, v3}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onFailure(Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 161
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 162
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 163
    :catch_2
    move-exception v10

    .line 164
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 163
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v8    # "buffer":[B
    .restart local v12    # "length":I
    .restart local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "url":Ljava/net/URL;
    :catch_3
    move-exception v10

    .line 164
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    move-object v13, v14

    .line 166
    .end local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 159
    .end local v8    # "buffer":[B
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "length":I
    .end local v15    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v2

    .line 160
    :goto_3
    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 161
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 162
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 166
    :goto_4
    throw v2

    .line 163
    :catch_4
    move-exception v10

    .line 164
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 159
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v15    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v2

    move-object v13, v14

    .end local v14    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v13    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 151
    .end local v15    # "url":Ljava/net/URL;
    :catch_5
    move-exception v10

    goto :goto_2
.end method

.method public run()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;->startDownload()V

    .line 40
    return-void
.end method

.method public save(Lcom/fimi/album/entity/MediaModel;)Z
    .locals 6
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 208
    const-string v3, ""

    .line 209
    .local v3, "name":Ljava/lang/String;
    const-string v2, ""

    .line 210
    .local v2, "localPath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getLocalFileDir()Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getDownloadName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v4, "tmpFile":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 215
    .local v0, "b":Z
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 216
    return v0
.end method
