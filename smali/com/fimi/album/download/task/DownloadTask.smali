.class public Lcom/fimi/album/download/task/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private finished:I

.field private info:Lcom/fimi/album/download/entity/FileInfo;

.field private listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;


# direct methods
.method public constructor <init>(Lcom/fimi/album/download/entity/FileInfo;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V
    .locals 1
    .param p1, "info"    # Lcom/fimi/album/download/entity/FileInfo;
    .param p2, "listener"    # Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/download/task/DownloadTask;->finished:I

    .line 27
    iput-object p1, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    .line 28
    iput-object p2, p0, Lcom/fimi/album/download/task/DownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fimi/album/download/entity/FileInfo;->setDownloading(Z)V

    .line 30
    return-void
.end method

.method private download()V
    .locals 19

    .prologue
    .line 109
    const/4 v9, 0x0

    .line 110
    .local v9, "connection":Ljava/net/HttpURLConnection;
    const/4 v15, 0x0

    .line 112
    .local v15, "rwd":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v2}, Lcom/fimi/album/download/entity/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 114
    const-string v2, "GET"

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 115
    const/16 v2, 0xbb8

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v2}, Lcom/fimi/album/download/entity/FileInfo;->getFinished()I

    move-result v17

    .line 119
    .local v17, "start":I
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    .line 120
    invoke-virtual {v4}, Lcom/fimi/album/download/entity/FileInfo;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v2}, Lcom/fimi/album/download/entity/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v3}, Lcom/fimi/album/download/entity/FileInfo;->getDownloadFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v12, "file":Ljava/io/File;
    new-instance v16, Ljava/io/RandomAccessFile;

    const-string v2, "rwd"

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v15    # "rwd":Ljava/io/RandomAccessFile;
    .local v16, "rwd":Ljava/io/RandomAccessFile;
    move/from16 v0, v17

    int-to-long v2, v0

    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fimi/album/download/task/DownloadTask;->finished:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v3}, Lcom/fimi/album/download/entity/FileInfo;->getFinished()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fimi/album/download/task/DownloadTask;->finished:I

    .line 127
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 128
    .local v10, "d":I
    const/16 v2, 0xce

    if-ne v10, v2, :cond_5

    .line 129
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 130
    .local v13, "is":Ljava/io/InputStream;
    const/16 v2, 0x1000

    new-array v8, v2, [B

    .line 132
    .local v8, "buffer":[B
    :cond_0
    invoke-virtual {v13, v8}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .local v14, "len":I
    const/4 v2, -0x1

    if-eq v14, v2, :cond_4

    .line 134
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v2, v14}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/fimi/album/download/task/DownloadTask;->finished:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/fimi/album/download/task/DownloadTask;->finished:I

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/fimi/album/download/task/DownloadTask;->finished:I

    invoke-virtual {v2, v3}, Lcom/fimi/album/download/entity/FileInfo;->setFinished(I)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/DownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v4}, Lcom/fimi/album/download/entity/FileInfo;->getFinished()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v6}, Lcom/fimi/album/download/entity/FileInfo;->getLength()I

    move-result v6

    int-to-long v6, v6

    invoke-interface/range {v2 .. v7}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onProgress(Ljava/lang/Object;JJ)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v2}, Lcom/fimi/album/download/entity/FileInfo;->isStop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/album/download/entity/FileInfo;->setDownloading(Z)V

    .line 147
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    if-eqz v9, :cond_1

    .line 169
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 172
    :cond_1
    if-eqz v16, :cond_2

    .line 173
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object/from16 v15, v16

    .line 179
    .end local v8    # "buffer":[B
    .end local v10    # "d":I
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "len":I
    .end local v16    # "rwd":Ljava/io/RandomAccessFile;
    .end local v17    # "start":I
    .end local v18    # "url":Ljava/net/URL;
    .restart local v15    # "rwd":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_1
    return-void

    .line 175
    .end local v15    # "rwd":Ljava/io/RandomAccessFile;
    .restart local v8    # "buffer":[B
    .restart local v10    # "d":I
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "len":I
    .restart local v16    # "rwd":Ljava/io/RandomAccessFile;
    .restart local v17    # "start":I
    .restart local v18    # "url":Ljava/net/URL;
    :catch_0
    move-exception v11

    .line 176
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v11    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fimi/album/download/entity/FileInfo;->setDownloading(Z)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/DownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-interface {v2, v3}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onSuccess(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    .end local v8    # "buffer":[B
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "len":I
    :cond_5
    if-eqz v9, :cond_6

    .line 169
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 172
    :cond_6
    if-eqz v16, :cond_7

    .line 173
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_7
    move-object/from16 v15, v16

    .line 177
    .end local v16    # "rwd":Ljava/io/RandomAccessFile;
    .restart local v15    # "rwd":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 175
    .end local v15    # "rwd":Ljava/io/RandomAccessFile;
    .restart local v16    # "rwd":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v11

    .line 176
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v15, v16

    .line 178
    .end local v16    # "rwd":Ljava/io/RandomAccessFile;
    .restart local v15    # "rwd":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 162
    .end local v10    # "d":I
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "file":Ljava/io/File;
    .end local v17    # "start":I
    .end local v18    # "url":Ljava/net/URL;
    :catch_2
    move-exception v11

    .line 163
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fimi/album/download/task/DownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-interface {v2, v3}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    if-eqz v9, :cond_8

    .line 169
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 172
    :cond_8
    if-eqz v15, :cond_3

    .line 173
    :try_start_6
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 175
    :catch_3
    move-exception v11

    .line 176
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 168
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v9, :cond_9

    .line 169
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 172
    :cond_9
    if-eqz v15, :cond_a

    .line 173
    :try_start_7
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 178
    :cond_a
    :goto_4
    throw v2

    .line 175
    :catch_4
    move-exception v11

    .line 176
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 168
    .end local v11    # "e":Ljava/io/IOException;
    .end local v15    # "rwd":Ljava/io/RandomAccessFile;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v16    # "rwd":Ljava/io/RandomAccessFile;
    .restart local v17    # "start":I
    .restart local v18    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v2

    move-object/from16 v15, v16

    .end local v16    # "rwd":Ljava/io/RandomAccessFile;
    .restart local v15    # "rwd":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 162
    .end local v15    # "rwd":Ljava/io/RandomAccessFile;
    .restart local v16    # "rwd":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v11

    move-object/from16 v15, v16

    .end local v16    # "rwd":Ljava/io/RandomAccessFile;
    .restart local v15    # "rwd":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private getLength()V
    .locals 8

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 188
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v6}, Lcom/fimi/album/download/entity/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 190
    const-string v6, "GET"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 191
    const/16 v6, 0xbb8

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 192
    const/4 v4, -0x1

    .line 193
    .local v4, "length":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 195
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 197
    :cond_0
    if-gtz v4, :cond_2

    .line 212
    if-eqz v1, :cond_1

    .line 213
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    .end local v4    # "length":I
    .end local v5    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 215
    .restart local v4    # "length":I
    .restart local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 216
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v6}, Lcom/fimi/album/download/entity/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 204
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 206
    :cond_3
    iget-object v6, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v6, v4}, Lcom/fimi/album/download/entity/FileInfo;->setLength(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    if-eqz v1, :cond_1

    .line 213
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 215
    :catch_1
    move-exception v3

    .line 216
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "length":I
    .end local v5    # "url":Ljava/net/URL;
    :catch_2
    move-exception v3

    .line 208
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    if-eqz v1, :cond_1

    .line 213
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 215
    :catch_3
    move-exception v3

    .line 216
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 212
    if-eqz v1, :cond_4

    .line 213
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 218
    :cond_4
    :goto_1
    throw v6

    .line 215
    :catch_4
    move-exception v3

    .line 216
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private startDownload()V
    .locals 9

    .prologue
    .line 43
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v7}, Lcom/fimi/album/download/entity/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v7}, Lcom/fimi/album/download/entity/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v8}, Lcom/fimi/album/download/entity/FileInfo;->getDownloadFileName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v7}, Lcom/fimi/album/download/entity/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 52
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v7, 0x7530

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 53
    const/16 v7, 0x7530

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 54
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 56
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 57
    .local v5, "os":Ljava/io/OutputStream;
    invoke-virtual {p0, v4, v5}, Lcom/fimi/album/download/task/DownloadTask;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 58
    iget-object v7, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {p0, v7}, Lcom/fimi/album/download/task/DownloadTask;->save(Lcom/fimi/album/download/entity/FileInfo;)Z

    .line 59
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 60
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v6    # "url":Ljava/net/URL;
    :goto_0
    iget-object v7, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v7}, Lcom/fimi/album/download/entity/FileInfo;->isDownloadFinish()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 68
    iget-object v7, p0, Lcom/fimi/album/download/task/DownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v8, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-interface {v7, v8}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onSuccess(Ljava/lang/Object;)V

    .line 72
    :goto_1
    return-void

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_1
    iget-object v7, p0, Lcom/fimi/album/download/task/DownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v8, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-interface {v7, v8}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onFailure(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 76
    const/16 v0, 0x1000

    :try_start_0
    new-array v6, v0, [B

    .line 78
    .local v6, "buffer":[B
    :cond_0
    invoke-virtual {p1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "len":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p2, v6, v0, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    iget v0, p0, Lcom/fimi/album/download/task/DownloadTask;->finished:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/fimi/album/download/task/DownloadTask;->finished:I

    .line 82
    iget-object v0, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    iget v1, p0, Lcom/fimi/album/download/task/DownloadTask;->finished:I

    invoke-virtual {v0, v1}, Lcom/fimi/album/download/entity/FileInfo;->setFinished(I)V

    .line 84
    iget-object v0, p0, Lcom/fimi/album/download/task/DownloadTask;->listener:Lcom/fimi/album/download/interfaces/OnDownloadListener;

    iget-object v1, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    iget-object v2, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v2}, Lcom/fimi/album/download/entity/FileInfo;->getFinished()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v4}, Lcom/fimi/album/download/entity/FileInfo;->getLength()I

    move-result v4

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/fimi/album/download/interfaces/OnDownloadListener;->onProgress(Ljava/lang/Object;JJ)V

    .line 86
    iget-object v0, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    invoke-virtual {v0}, Lcom/fimi/album/download/entity/FileInfo;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/download/entity/FileInfo;->setDownloading(Z)V

    .line 99
    .end local v6    # "buffer":[B
    .end local v7    # "len":I
    :goto_0
    return-void

    .line 91
    .restart local v6    # "buffer":[B
    .restart local v7    # "len":I
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/download/entity/FileInfo;->setDownloadFinish(Z)V

    .line 94
    iget-object v0, p0, Lcom/fimi/album/download/task/DownloadTask;->info:Lcom/fimi/album/download/entity/FileInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/download/entity/FileInfo;->setDownloading(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v6    # "buffer":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/fimi/album/download/task/DownloadTask;->startDownload()V

    .line 34
    return-void
.end method

.method public save(Lcom/fimi/album/download/entity/FileInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/fimi/album/download/entity/FileInfo;

    .prologue
    .line 102
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fimi/album/download/entity/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fimi/album/download/entity/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v1, "xmlFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/fimi/album/download/entity/FileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fimi/album/download/entity/FileInfo;->getDownloadFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v0, "tmpFile":Ljava/io/File;
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method public startBreakPoint()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fimi/album/download/task/DownloadTask;->getLength()V

    .line 38
    invoke-direct {p0}, Lcom/fimi/album/download/task/DownloadTask;->download()V

    .line 39
    return-void
.end method
