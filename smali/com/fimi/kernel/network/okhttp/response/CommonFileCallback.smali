.class public Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;
.super Ljava/lang/Object;
.source "CommonFileCallback.java"

# interfaces
.implements Lokhttp3/Callback;


# static fields
.field private static final PROGRESS_MESSAGE:I = 0x1


# instance fields
.field protected final EMPTY_MSG:Ljava/lang/String;

.field protected final IO_ERROR:I

.field protected final NETWORK_ERROR:I

.field dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

.field private mDeliveryHandler:Landroid/os/Handler;

.field private mFilePath:Ljava/lang/String;

.field private mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;

.field private mProgress:I


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->NETWORK_ERROR:I

    .line 27
    const/4 v0, -0x2

    iput v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->IO_ERROR:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->EMPTY_MSG:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;

    check-cast v0, Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;

    .line 41
    iget-object v0, p1, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mSource:Ljava/lang/String;

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mFilePath:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .line 43
    new-instance v0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$1;-><init>(Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mDeliveryHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;)Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mListener:Lcom/fimi/kernel/network/okhttp/listener/DisposeDownloadListener;

    return-object v0
.end method

.method private checkLocalFilePath(Ljava/lang/String;)V
    .locals 5
    .param p1, "localFilePath"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    const-string v4, "/"

    .line 144
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 143
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleResponse(Lokhttp3/Response;)Ljava/io/File;
    .locals 18
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 87
    if-nez p1, :cond_1

    .line 88
    const/4 v5, 0x0

    .line 139
    :cond_0
    :goto_0
    return-object v5

    .line 91
    :cond_1
    const/4 v9, 0x0

    .line 92
    .local v9, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 93
    .local v5, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 94
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v14, 0x5000

    new-array v2, v14, [B

    .line 96
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 99
    .local v3, "currentLength":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->checkLocalFilePath(Ljava/lang/String;)V

    .line 100
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mFilePath:Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    .line 103
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v14

    long-to-double v12, v14

    .line 105
    .local v12, "sumLength":D
    const-string v14, "moweiru"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dataHandle.isStop()"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isStop()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/fimi/kernel/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_2
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "length":I
    const/4 v14, -0x1

    if-eq v10, v14, :cond_3

    .line 110
    const/4 v14, 0x0

    invoke-virtual {v8, v2, v14, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 111
    add-int/2addr v3, v10

    .line 112
    int-to-double v14, v3

    div-double/2addr v14, v12

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    double-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mProgress:I

    .line 113
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 114
    .local v11, "message":Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v11, Landroid/os/Message;->what:I

    .line 115
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mProgress:I

    iput v14, v11, Landroid/os/Message;->arg1:I

    .line 116
    iput v3, v11, Landroid/os/Message;->arg2:I

    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mDeliveryHandler:Landroid/os/Handler;

    invoke-virtual {v14, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->dataHandle:Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    invoke-virtual {v14}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->isStop()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 122
    .end local v11    # "message":Landroid/os/Message;
    :cond_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 128
    if-eqz v8, :cond_4

    .line 129
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 131
    :cond_4
    if-eqz v9, :cond_5

    .line 133
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 137
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto/16 :goto_0

    .line 135
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 136
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 138
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto/16 :goto_0

    .line 123
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "length":I
    .end local v12    # "sumLength":D
    :catch_1
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v14, "moweiru"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/fimi/kernel/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    const/4 v5, 0x0

    .line 128
    if-eqz v7, :cond_6

    .line 129
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 131
    :cond_6
    if-eqz v9, :cond_0

    .line 133
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 135
    :catch_2
    move-exception v4

    .line 136
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 127
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 128
    :goto_2
    if-eqz v7, :cond_7

    .line 129
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 131
    :cond_7
    if-eqz v9, :cond_8

    .line 133
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 138
    :cond_8
    :goto_3
    throw v14

    .line 135
    :catch_3
    move-exception v4

    .line 136
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 127
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_2

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v14

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_2

    .line 123
    .end local v5    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_1

    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto :goto_1
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "ioexception"    # Ljava/io/IOException;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mDeliveryHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$2;

    invoke-direct {v1, p0, p2}, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$2;-><init>(Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p2}, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->handleResponse(Lokhttp3/Response;)Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "file":Ljava/io/File;
    iget-object v1, p0, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;->mDeliveryHandler:Landroid/os/Handler;

    new-instance v2, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$3;

    invoke-direct {v2, p0, v0}, Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback$3;-><init>(Lcom/fimi/kernel/network/okhttp/response/CommonFileCallback;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method
