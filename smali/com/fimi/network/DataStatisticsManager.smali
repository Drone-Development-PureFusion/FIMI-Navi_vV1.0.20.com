.class public Lcom/fimi/network/DataStatisticsManager;
.super Lcom/fimi/network/BaseManager;
.source "DataStatisticsManager.java"


# static fields
.field private static sDataStatisticsManager:Lcom/fimi/network/DataStatisticsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fimi/network/BaseManager;-><init>()V

    .line 25
    return-void
.end method

.method public static getIntance(Landroid/content/Context;)Lcom/fimi/network/DataStatisticsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/fimi/network/DataStatisticsManager;->sDataStatisticsManager:Lcom/fimi/network/DataStatisticsManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/fimi/network/DataStatisticsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fimi/network/DataStatisticsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fimi/network/DataStatisticsManager;->sDataStatisticsManager:Lcom/fimi/network/DataStatisticsManager;

    .line 31
    :cond_0
    sget-object v0, Lcom/fimi/network/DataStatisticsManager;->sDataStatisticsManager:Lcom/fimi/network/DataStatisticsManager;

    return-object v0
.end method


# virtual methods
.method public submitGh2UseRecord(Ljava/util/List;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/DataStatistics;",
            ">;",
            "Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "dataStatisticsList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/DataStatistics;>;"
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 36
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "jsonContent"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v1/gh2record/submitGh2UseRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/DataStatisticsManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 39
    return-void
.end method

.method public submitGh2version(Lcom/fimi/network/entity/DataStatistics;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "dataStatistics"    # Lcom/fimi/network/entity/DataStatistics;
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 42
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 43
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "jsonContent"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v1/gh2v/submitGh2version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/DataStatisticsManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 46
    return-void
.end method

.method public submitX9UseRecord(Ljava/util/List;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/DataStatistics;",
            ">;",
            "Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "dataStatisticsList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/DataStatistics;>;"
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 57
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "jsonContent"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v1/x9record/submitX9UseRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/DataStatisticsManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 60
    return-void
.end method

.method public submitX9Version(Lcom/fimi/network/entity/DataStatistics;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "dataStatistics"    # Lcom/fimi/network/entity/DataStatistics;
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 63
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 64
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "1"

    invoke-virtual {p1, v2}, Lcom/fimi/network/entity/DataStatistics;->setProductModel(Ljava/lang/String;)V

    .line 65
    const-string v2, "jsonContent"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/v1/x9v/submitX9Version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/DataStatisticsManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 68
    return-void
.end method

.method public submitX9flyTime(Ljava/util/List;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/DataStatistics;",
            ">;",
            "Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "dataStatisticsList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/DataStatistics;>;"
    new-instance v0, Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;-><init>()V

    .line 50
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "jsonContent"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->HostURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "v1/x9fly/submitX9flyTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/DataStatisticsManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createPostRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->post(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 53
    return-void
.end method
