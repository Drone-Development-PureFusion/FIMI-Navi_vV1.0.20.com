.class public Lcom/fimi/network/FwManager;
.super Lcom/fimi/network/BaseManager;
.source "FwManager.java"


# instance fields
.field private final V2:Ljava/lang/String;

.field private final V3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fimi/network/BaseManager;-><init>()V

    .line 17
    const-string/jumbo v0, "v2"

    iput-object v0, p0, Lcom/fimi/network/FwManager;->V2:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "v3"

    iput-object v0, p0, Lcom/fimi/network/FwManager;->V3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getX9FwNetDetail(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 3
    .param p1, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "v3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/firmware/getFirmwareDetail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fimi/network/FwManager;->getRequestParams()Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->get(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 26
    return-void
.end method

.method public getX9FwNetDetailV3(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 3
    .param p1, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "v3/firmware/getFirmwareDetail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fimi/network/FwManager;->getRequestParams()Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->get(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 37
    return-void
.end method
