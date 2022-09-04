.class public Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;
.super Lcom/fimi/network/BaseManager;
.source "X8FlightPlayBackManager.java"


# static fields
.field private static volatile x8FlightPlayBackManager:Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;->x8FlightPlayBackManager:Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fimi/network/BaseManager;-><init>()V

    return-void
.end method

.method public static getX8FlightPlayBackManagerInstans()Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;->x8FlightPlayBackManager:Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;

    if-nez v0, :cond_1

    .line 19
    const-class v1, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;

    monitor-enter v1

    .line 20
    :try_start_0
    sget-object v0, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;->x8FlightPlayBackManager:Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;->x8FlightPlayBackManager:Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;

    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;->x8FlightPlayBackManager:Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getX8FlightPlaybackLog(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;
    .param p3, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/fimi/x8sdk/controller/X8FlightPlayBackManager;->getRequestParams()Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v0

    .line 30
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "start"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v2, "pageSize"

    const-string v3, "10000"

    invoke-virtual {v0, v2, v3}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v2, "startTime"

    invoke-virtual {v0, v2, p1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "endTime"

    invoke-virtual {v0, v2, p2}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->SAVE_FDS_URL_2_FIMI_URL_PLAYBACK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "record/fetchFlyRecordByPage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->get(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 36
    return-void
.end method
