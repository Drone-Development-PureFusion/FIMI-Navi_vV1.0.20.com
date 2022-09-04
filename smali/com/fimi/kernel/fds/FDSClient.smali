.class public Lcom/fimi/kernel/fds/FDSClient;
.super Lcom/fimi/network/BaseManager;
.source "FDSClient.java"


# instance fields
.field private call:Lokhttp3/Call;

.field private mZip2Fds:Lcom/fimi/kernel/fds/Zip2Fds;

.field private object:Ljava/lang/Object;

.field private postFdsUrlCall:Lokhttp3/Call;

.field private reqeuestFdsUrlCall:Lokhttp3/Call;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/fimi/network/BaseManager;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public lockedModel()V
    .locals 3

    .prologue
    .line 151
    iget-object v2, p0, Lcom/fimi/kernel/fds/FDSClient;->object:Ljava/lang/Object;

    monitor-enter v2

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/fimi/kernel/fds/FDSClient;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 158
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseLocked()V
    .locals 5

    .prologue
    .line 161
    iget-object v2, p0, Lcom/fimi/kernel/fds/FDSClient;->object:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/fimi/kernel/fds/FDSClient;->object:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 170
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const-string v1, "istep"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public rename(Lcom/fimi/kernel/fds/IFdsFileModel;)Z
    .locals 11
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 295
    const-string v1, "_collect"

    .line 296
    .local v1, "collect":Ljava/lang/String;
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getPlaybackFile()Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 297
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getPlaybackFile()Ljava/io/File;

    move-result-object v3

    .line 298
    .local v3, "filePlayback":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 300
    .local v4, "index":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    .line 301
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 302
    .local v7, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFileSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 310
    :goto_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v8, "tmpFile":Ljava/io/File;
    invoke-virtual {v3, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 313
    .local v0, "b":Z
    invoke-interface {p1, v3}, Lcom/fimi/kernel/fds/IFdsFileModel;->resetPlaybackFile(Ljava/io/File;)V

    .line 339
    .end local v3    # "filePlayback":Ljava/io/File;
    .end local v4    # "index":I
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :goto_1
    return v0

    .line 305
    .end local v0    # "b":Z
    .end local v8    # "tmpFile":Ljava/io/File;
    .restart local v3    # "filePlayback":Ljava/io/File;
    .restart local v4    # "index":I
    :cond_0
    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 306
    .local v5, "indexTwo":I
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 307
    .restart local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFileSuffix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 316
    .end local v3    # "filePlayback":Ljava/io/File;
    .end local v4    # "index":I
    .end local v5    # "indexTwo":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFile()Ljava/io/File;

    move-result-object v2

    .line 317
    .local v2, "file":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFileSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 318
    .restart local v6    # "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .restart local v8    # "tmpFile":Ljava/io/File;
    invoke-virtual {v2, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 320
    .restart local v0    # "b":Z
    invoke-interface {p1, v2}, Lcom/fimi/kernel/fds/IFdsFileModel;->resetFile(Ljava/io/File;)V

    goto :goto_1
.end method

.method public requesetFdsUrl(Ljava/lang/String;Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/fimi/kernel/fds/FDSClient;->getRequestParams()Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v1

    .line 78
    .local v1, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v3, "bucketName"

    const-string/jumbo v4, "x8-fclog"

    invoke-virtual {v1, v3, v4}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {p2}, Lcom/fimi/kernel/fds/IFdsFileModel;->getPlaybackFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 81
    move-object v0, p1

    .line 85
    .local v0, "name":Ljava/lang/String;
    :goto_0
    const-string v3, "objectName"

    invoke-virtual {v1, v3, v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/fimi/host/HostConstants;->QUESET_FDS_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getGeneratePresignedUri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/fimi/kernel/fds/FDSClient;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v3

    new-instance v4, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v5, Lcom/fimi/kernel/fds/FDSClient$1;

    invoke-direct {v5, p0, p2}, Lcom/fimi/kernel/fds/FDSClient$1;-><init>(Lcom/fimi/kernel/fds/FDSClient;Lcom/fimi/kernel/fds/IFdsFileModel;)V

    invoke-direct {v4, v5}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-static {v3, v4}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->get(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/kernel/fds/FDSClient;->reqeuestFdsUrlCall:Lokhttp3/Call;

    .line 108
    invoke-virtual {p0}, Lcom/fimi/kernel/fds/FDSClient;->lockedModel()V

    .line 109
    return-void

    .line 83
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    const-string v3, ".zip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method public saveFdsUrl2Fimi(Ljava/lang/String;Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/fimi/kernel/fds/FDSClient;->getRequestParams()Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v5

    .line 174
    .local v5, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v7, "droneId"

    const-string/jumbo v8, "x8"

    invoke-virtual {v5, v7, v8}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v7, "logOwnerId"

    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v7, "fileFdsUrl"

    invoke-interface {p2}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFileFdsUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v7, 0x0

    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss-SSS"

    .line 181
    .local v4, "p":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 183
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 188
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "p":Ljava/lang/String;
    :goto_0
    const-string v7, "createFileTime"

    invoke-virtual {v5, v7, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/fimi/host/HostConstants;->SAVE_FDS_URL_2_FIMI_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uploadFlyLog"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/fimi/kernel/fds/FDSClient;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v9, Lcom/fimi/kernel/fds/FDSClient$2;

    invoke-direct {v9, p0, p2}, Lcom/fimi/kernel/fds/FDSClient$2;-><init>(Lcom/fimi/kernel/fds/FDSClient;Lcom/fimi/kernel/fds/IFdsFileModel;)V

    invoke-direct {v8, v9}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-static {v7, v8}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    move-result-object v7

    iput-object v7, p0, Lcom/fimi/kernel/fds/FDSClient;->postFdsUrlCall:Lokhttp3/Call;

    .line 214
    invoke-virtual {p0}, Lcom/fimi/kernel/fds/FDSClient;->lockedModel()V

    .line 215
    return-void

    .line 185
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public saveFdsUrl2FimiPlayback(Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 13
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    const/4 v12, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/fimi/kernel/fds/FDSClient;->getRequestParams()Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v5

    .line 219
    .local v5, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v7, "fimiId"

    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v7, "flyDuration"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFlightDuration()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v7, "flyDistance"

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFlightMileage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v7, "logFlieSize"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getPlaybackFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v7, "logFileUrl"

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFileFdsUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getPlaybackFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "fileName":Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 226
    const-string v7, "_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 231
    :goto_0
    const-string v7, "istep"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "flightTime"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :try_start_0
    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    .line 234
    .local v4, "p":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 236
    .local v0, "d":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 237
    .local v2, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 240
    .end local v0    # "d":Ljava/util/Date;
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "p":Ljava/lang/String;
    :goto_1
    const-string v7, "flightTime"

    invoke-virtual {v5, v7, v1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/fimi/host/HostConstants;->SAVE_FDS_URL_2_FIMI_URL_PLAYBACK:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "record/upload_flyrecord"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/fimi/kernel/fds/FDSClient;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v7

    new-instance v8, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v9, Lcom/fimi/kernel/fds/FDSClient$3;

    invoke-direct {v9, p0, p1}, Lcom/fimi/kernel/fds/FDSClient$3;-><init>(Lcom/fimi/kernel/fds/FDSClient;Lcom/fimi/kernel/fds/IFdsFileModel;)V

    invoke-direct {v8, v9}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-static {v7, v8}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    move-result-object v7

    iput-object v7, p0, Lcom/fimi/kernel/fds/FDSClient;->postFdsUrlCall:Lokhttp3/Call;

    .line 265
    invoke-virtual {p0}, Lcom/fimi/kernel/fds/FDSClient;->lockedModel()V

    .line 266
    return-void

    .line 228
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    const-string v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public startUpload(Lcom/fimi/kernel/fds/IFdsFileModel;Lcom/fimi/kernel/fds/IFdsUploadListener;)V
    .locals 5
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;
    .param p2, "listener"    # Lcom/fimi/kernel/fds/IFdsUploadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v2, Lcom/fimi/kernel/fds/Zip2Fds;

    invoke-direct {v2}, Lcom/fimi/kernel/fds/Zip2Fds;-><init>()V

    iput-object v2, p0, Lcom/fimi/kernel/fds/FDSClient;->mZip2Fds:Lcom/fimi/kernel/fds/Zip2Fds;

    .line 47
    iget-object v2, p0, Lcom/fimi/kernel/fds/FDSClient;->mZip2Fds:Lcom/fimi/kernel/fds/Zip2Fds;

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getNeedZipFileBySuffix()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/fds/Zip2Fds;->log2Zip(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v0

    .line 48
    .local v0, "b":Z
    const-string v2, "istep"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mZip2Fds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fimi/kernel/fds/FDSClient;->mZip2Fds:Lcom/fimi/kernel/fds/Zip2Fds;

    .line 50
    if-nez v0, :cond_1

    .line 51
    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1, v2}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "zipName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/fimi/kernel/fds/IFdsFileModel;->setZipFile(Ljava/io/File;)V

    .line 58
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/fimi/kernel/fds/FDSClient;->requesetFdsUrl(Ljava/lang/String;Lcom/fimi/kernel/fds/IFdsFileModel;)V

    .line 59
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFileFdsUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFileFdsUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    :cond_2
    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1, v2}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/fimi/kernel/fds/FDSClient;->upload2Fds(Lcom/fimi/kernel/fds/IFdsFileModel;Lcom/fimi/kernel/fds/IFdsUploadListener;)V

    .line 65
    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v3

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 69
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getPlaybackFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 70
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/fds/FDSClient;->saveFdsUrl2FimiPlayback(Lcom/fimi/kernel/fds/IFdsFileModel;)V

    goto/16 :goto_0

    .line 72
    :cond_4
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/fimi/kernel/fds/FDSClient;->saveFdsUrl2Fimi(Ljava/lang/String;Lcom/fimi/kernel/fds/IFdsFileModel;)V

    goto/16 :goto_0
.end method

.method public stopUpload(Lcom/fimi/kernel/fds/IFdsFileModel;Lcom/fimi/kernel/fds/IFdsUploadListener;)V
    .locals 2
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;
    .param p2, "listener"    # Lcom/fimi/kernel/fds/IFdsUploadListener;

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->mZip2Fds:Lcom/fimi/kernel/fds/Zip2Fds;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->mZip2Fds:Lcom/fimi/kernel/fds/Zip2Fds;

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/Zip2Fds;->stop()V

    .line 271
    sget-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1, v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 272
    iput-object v1, p0, Lcom/fimi/kernel/fds/FDSClient;->mZip2Fds:Lcom/fimi/kernel/fds/Zip2Fds;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->reqeuestFdsUrlCall:Lokhttp3/Call;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->reqeuestFdsUrlCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 276
    sget-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1, v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 277
    iput-object v1, p0, Lcom/fimi/kernel/fds/FDSClient;->reqeuestFdsUrlCall:Lokhttp3/Call;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->call:Lokhttp3/Call;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 281
    sget-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1, v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 282
    invoke-interface {p2, p1}, Lcom/fimi/kernel/fds/IFdsUploadListener;->onStop(Ljava/lang/Object;)V

    .line 283
    iput-object v1, p0, Lcom/fimi/kernel/fds/FDSClient;->call:Lokhttp3/Call;

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->postFdsUrlCall:Lokhttp3/Call;

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->postFdsUrlCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 287
    sget-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1, v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 288
    iput-object v1, p0, Lcom/fimi/kernel/fds/FDSClient;->postFdsUrlCall:Lokhttp3/Call;

    .line 290
    :cond_3
    return-void
.end method

.method public upload2Fds(Lcom/fimi/kernel/fds/IFdsFileModel;Lcom/fimi/kernel/fds/IFdsUploadListener;)V
    .locals 12
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;
    .param p2, "listener"    # Lcom/fimi/kernel/fds/IFdsUploadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFileFdsUrl()Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "url":Ljava/lang/String;
    new-instance v7, Lokhttp3/OkHttpClient;

    invoke-direct {v7}, Lokhttp3/OkHttpClient;-><init>()V

    .line 114
    .local v7, "client":Lokhttp3/OkHttpClient;
    new-instance v6, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v6}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 115
    .local v6, "builder":Lokhttp3/MultipartBody$Builder;
    sget-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v6, v0}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 116
    const-string v0, "file"

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/form-data"

    .line 117
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    .line 118
    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getZipFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 116
    invoke-virtual {v6, v0, v1, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 119
    invoke-virtual {v6}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v8

    .line 120
    .local v8, "multipartBody":Lokhttp3/MultipartBody;
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client-ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v11}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    new-instance v1, Lcom/fimi/kernel/network/okhttp/ProgressBody;

    invoke-direct {v1, p1, v8, p2}, Lcom/fimi/kernel/network/okhttp/ProgressBody;-><init>(Lcom/fimi/kernel/fds/IFdsFileModel;Lokhttp3/MultipartBody;Lcom/fimi/kernel/fds/IFdsUploadListener;)V

    .line 122
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    .line 137
    .local v9, "request":Lokhttp3/Request;
    invoke-virtual {v7, v9}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->call:Lokhttp3/Call;

    .line 138
    sget-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->LOADING:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1, v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 139
    const-wide/16 v2, 0x0

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/fimi/kernel/fds/IFdsUploadListener;->onProgress(Ljava/lang/Object;JJ)V

    .line 140
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v10

    .line 141
    .local v10, "response":Lokhttp3/Response;
    invoke-virtual {v10}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const-string v0, "istep"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1, v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    const-string v0, "istep"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResponseBody "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
