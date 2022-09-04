.class public Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;
.super Ljava/lang/Object;
.source "MediaOriginalDownloadTask2.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private finished:I

.field private listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

.field private model:Lcom/fimi/album/entity/MediaModel;


# direct methods
.method public constructor <init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V
    .locals 2
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "listener"    # Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->finished:I

    .line 29
    iput-object p1, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    .line 30
    iput-object p2, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .line 31
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/fimi/album/entity/MediaModel;->setTotal(J)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 33
    return-void
.end method

.method private getLength()I
    .locals 9

    .prologue
    .line 134
    const/4 v3, -0x1

    .line 135
    .local v3, "length":I
    const/4 v1, 0x0

    .line 138
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v7}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 139
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 140
    const-string v7, "GET"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 141
    const/16 v7, 0xbb8

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 142
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 146
    :cond_0
    if-gtz v3, :cond_2

    .line 155
    if-eqz v1, :cond_1

    .line 156
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move v4, v3

    .end local v3    # "length":I
    .local v4, "length":I
    move v5, v3

    .line 162
    .end local v4    # "length":I
    .end local v6    # "url":Ljava/net/URL;
    .local v5, "length":I
    :goto_1
    return v5

    .line 158
    .end local v5    # "length":I
    .restart local v3    # "length":I
    .restart local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v1, :cond_3

    .line 156
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v6    # "url":Ljava/net/URL;
    :cond_3
    :goto_2
    move v4, v3

    .end local v3    # "length":I
    .restart local v4    # "length":I
    move v5, v3

    .line 162
    .end local v4    # "length":I
    .restart local v5    # "length":I
    goto :goto_1

    .line 158
    .end local v5    # "length":I
    .restart local v3    # "length":I
    .restart local v6    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 159
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "url":Ljava/net/URL;
    :catch_2
    move-exception v2

    .line 151
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    if-eqz v1, :cond_3

    .line 156
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 158
    :catch_3
    move-exception v2

    .line 159
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 155
    if-eqz v1, :cond_4

    .line 156
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 161
    :cond_4
    :goto_3
    throw v7

    .line 158
    :catch_4
    move-exception v2

    .line 159
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private startDownload()V
    .locals 20

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->getLength()I

    move-result v14

    int-to-long v8, v14

    .line 42
    .local v8, "len":J
    const-string v11, ""

    .line 43
    .local v11, "path":Ljava/lang/String;
    const-string v6, ""

    .line 44
    .local v6, "fileName":Ljava/lang/String;
    const-string v13, ""

    .line 46
    .local v13, "urlPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v14}, Lcom/fimi/album/entity/MediaModel;->getLocalFileDir()Ljava/lang/String;

    move-result-object v11

    .line 47
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v14}, Lcom/fimi/album/entity/MediaModel;->getFileUrl()Ljava/lang/String;

    move-result-object v13

    .line 49
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/fimi/album/entity/MediaModel;->setDownloadName(Ljava/lang/String;)V

    .line 50
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v14}, Lcom/fimi/album/entity/MediaModel;->getDownloadName()Ljava/lang/String;

    move-result-object v6

    .line 51
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 59
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v14, v15}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onSuccess(Ljava/lang/Object;)V

    .line 90
    :goto_0
    return-void

    .line 63
    :cond_1
    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 65
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v14, 0x7530

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 66
    const/16 v14, 0x7530

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 67
    const-string v14, "Range"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bytes=0-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    move-object/from16 v16, v0

    .line 68
    invoke-virtual/range {v16 .. v16}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    sub-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 67
    invoke-virtual {v2, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 70
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 71
    .local v7, "is":Ljava/io/InputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v10, "os":Ljava/io/OutputStream;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->save(Lcom/fimi/album/entity/MediaModel;)Z

    .line 76
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 77
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v10    # "os":Ljava/io/OutputStream;
    .end local v12    # "url":Ljava/net/URL;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v14}, Lcom/fimi/album/entity/MediaModel;->isDownloadFinish()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v14, v15}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :catch_0
    move-exception v4

    .line 80
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v14, v15}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onFailure(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 94
    const/16 v0, 0x2800

    :try_start_0
    new-array v6, v0, [B

    .line 96
    .local v6, "buffer":[B
    :cond_0
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p2, v6, v0, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 99
    iget v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->finished:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->finished:I

    .line 100
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    iget v1, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->finished:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fimi/album/entity/MediaModel;->setTotal(J)V

    .line 102
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v1, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    iget-object v2, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getTotal()J

    move-result-wide v2

    iget-object v4, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v4}, Lcom/fimi/album/entity/MediaModel;->getFileSize()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onProgress(Ljava/lang/Object;JJ)V

    .line 104
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v1, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v0, v1}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onStop(Lcom/fimi/album/entity/MediaModel;)V

    .line 106
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 118
    .end local v6    # "buffer":[B
    .end local v7    # "len":I
    :goto_0
    return-void

    .line 110
    .restart local v6    # "buffer":[B
    .restart local v7    # "len":I
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownloadFinish(Z)V

    .line 112
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 113
    iget-object v0, p0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->model:Lcom/fimi/album/entity/MediaModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setDownLoadOriginalFile(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v6    # "buffer":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/fimi/album/download/task/MediaOriginalDownloadTask2;->startDownload()V

    .line 38
    return-void
.end method

.method public save(Lcom/fimi/album/entity/MediaModel;)Z
    .locals 6
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 121
    const-string v3, ""

    .line 122
    .local v3, "name":Ljava/lang/String;
    const-string v2, ""

    .line 123
    .local v2, "localPath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getName()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getLocalFileDir()Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getDownloadName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .local v4, "tmpFile":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 128
    .local v0, "b":Z
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/fimi/album/entity/MediaModel;->setFileLocalPath(Ljava/lang/String;)V

    .line 129
    return v0
.end method
