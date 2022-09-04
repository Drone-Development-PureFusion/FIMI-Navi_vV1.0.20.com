.class public Lcom/fimi/album/download/task/MediaThumDownloadTask;
.super Ljava/lang/Object;
.source "MediaThumDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private finished:I

.field private listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

.field private model:Lcom/fimi/album/entity/MediaModel;


# direct methods
.method public constructor <init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V
    .locals 1
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "listener"    # Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->finished:I

    .line 25
    iput-object p1, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    .line 26
    iput-object p2, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fimi/album/entity/MediaModel;->setThumDownloading(Z)V

    .line 28
    return-void
.end method

.method private startDownload()V
    .locals 12

    .prologue
    .line 36
    const-string v7, ""

    .line 37
    .local v7, "path":Ljava/lang/String;
    const-string v4, ""

    .line 38
    .local v4, "fileName":Ljava/lang/String;
    const-string v9, ""

    .line 40
    .local v9, "urlPath":Ljava/lang/String;
    iget-object v10, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v10}, Lcom/fimi/album/entity/MediaModel;->getLocalThumFileDir()Ljava/lang/String;

    move-result-object v7

    .line 41
    iget-object v10, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v10}, Lcom/fimi/album/entity/MediaModel;->getThumFileUrl()Ljava/lang/String;

    move-result-object v9

    .line 43
    iget-object v10, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/fimi/album/entity/MediaModel;->setDownloadName(Ljava/lang/String;)V

    .line 44
    iget-object v10, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v10}, Lcom/fimi/album/entity/MediaModel;->getDownloadName()Ljava/lang/String;

    move-result-object v4

    .line 45
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 53
    iget-object v10, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v11, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v10, v11}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onSuccess(Ljava/lang/Object;)V

    .line 82
    :goto_0
    return-void

    .line 57
    :cond_1
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 59
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v10, 0x7530

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 60
    const/16 v10, 0x7530

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 61
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 63
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 64
    .local v6, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v5, v6}, Lcom/fimi/album/download/task/MediaThumDownloadTask;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 66
    iget-object v10, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {p0, v10}, Lcom/fimi/album/download/task/MediaThumDownloadTask;->save(Lcom/fimi/album/entity/MediaModel;)Z

    .line 68
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v8    # "url":Ljava/net/URL;
    :goto_1
    iget-object v10, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v10}, Lcom/fimi/album/entity/MediaModel;->isThumDownloadFinish()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 78
    iget-object v10, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v11, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v10, v11}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_2
    iget-object v10, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v11, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v10, v11}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onFailure(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 86
    const/16 v0, 0x1000

    :try_start_0
    new-array v6, v0, [B

    .line 88
    .local v6, "buffer":[B
    :cond_0
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p2, v6, v0, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    iget v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->finished:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->finished:I

    .line 92
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    iget v1, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->finished:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fimi/album/entity/MediaModel;->setThumTotal(J)V

    .line 94
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v1, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    iget-object v2, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getThumTotal()J

    move-result-wide v2

    iget-object v4, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getThumSize()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onProgress(Ljava/lang/Object;JJ)V

    .line 96
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isThumStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v1, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v0, v1}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onStop(Lcom/fimi/album/entity/MediaModel;)V

    .line 98
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumDownloading(Z)V

    .line 116
    .end local v6    # "buffer":[B
    .end local v7    # "len":I
    :goto_0
    return-void

    .line 102
    .restart local v6    # "buffer":[B
    .restart local v7    # "len":I
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getThumSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getThumTotal()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumDownloadFinish(Z)V

    .line 105
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumDownloading(Z)V

    .line 106
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownLoadThum(Z)V

    goto :goto_0

    .line 112
    .end local v6    # "buffer":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v0

    goto :goto_0

    .line 109
    .restart local v6    # "buffer":[B
    .restart local v7    # "len":I
    :cond_2
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaThumDownloadTask;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumDownloading(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fimi/album/download/task/MediaThumDownloadTask;->startDownload()V

    .line 33
    return-void
.end method

.method public save(Lcom/fimi/album/entity/MediaModel;)Z
    .locals 6
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 119
    const-string v3, ""

    .line 120
    .local v3, "name":Ljava/lang/String;
    const-string v2, ""

    .line 121
    .local v2, "localPath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getThumName()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getLocalThumFileDir()Ljava/lang/String;

    move-result-object v2

    .line 123
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getDownloadName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v4, "tmpFile":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 126
    .local v0, "b":Z
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 127
    return v0
.end method
