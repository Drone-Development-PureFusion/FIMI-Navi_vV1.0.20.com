.class public Lcom/fimi/network/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downLoadFlightPlayback(Lcom/fimi/network/entity/X8PlaybackLogEntity;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 5
    .param p1, "dto"    # Lcom/fimi/network/entity/X8PlaybackLogEntity;
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/fimi/network/entity/X8PlaybackLogEntity;->getLogFileUrl()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "logFileUrl":Ljava/lang/String;
    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "fileNames":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/fimi/network/entity/X8PlaybackLogEntity;->setFlieName(Ljava/lang/String;)V

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-static {v4}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8LoginFlightPlaybackPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mSource:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/fimi/network/entity/X8PlaybackLogEntity;->getLogFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->downloadFile(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 40
    return-void
.end method

.method public downLoadFw(Lcom/fimi/network/entity/UpfirewareDto;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 1
    .param p1, "dto"    # Lcom/fimi/network/entity/UpfirewareDto;
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/utils/DirectoryPath;->getFwPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mSource:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/fimi/network/entity/UpfirewareDto;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->downloadFile(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 25
    return-void
.end method

.method public downLoadX9MediaDescriptionFile(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 43
    iput-object p2, p3, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mSource:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->downloadFile(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 45
    return-void
.end method

.method public downloadApk(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 53
    iput-object p2, p3, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;->mSource:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;)Lokhttp3/Request;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->downloadFile(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 55
    return-void
.end method
