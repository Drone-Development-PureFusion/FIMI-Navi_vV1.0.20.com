.class public Lcom/fimi/network/ApkVersionManager;
.super Lcom/fimi/network/BaseManager;
.source "ApkVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/network/ApkVersionManager$AppSettingListener;
    }
.end annotation


# instance fields
.field public final OPEN_FLY_LOG:Ljava/lang/String;

.field public final OPEN_FORMATTED_MEMORY:Ljava/lang/String;

.field public final OPEN_SIXPOINT_CALIBRATE:Ljava/lang/String;

.field public final OPEN_STATE:Ljava/lang/String;

.field public appSettingHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fimi/network/BaseManager;-><init>()V

    .line 24
    const-string v0, "open_sixpoint_calibrate"

    iput-object v0, p0, Lcom/fimi/network/ApkVersionManager;->OPEN_SIXPOINT_CALIBRATE:Ljava/lang/String;

    .line 25
    const-string v0, "open_fly_log"

    iput-object v0, p0, Lcom/fimi/network/ApkVersionManager;->OPEN_FLY_LOG:Ljava/lang/String;

    .line 26
    const-string v0, "open_Formatted_memory"

    iput-object v0, p0, Lcom/fimi/network/ApkVersionManager;->OPEN_FORMATTED_MEMORY:Ljava/lang/String;

    .line 27
    const-string v0, "on"

    iput-object v0, p0, Lcom/fimi/network/ApkVersionManager;->OPEN_STATE:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/network/ApkVersionManager;->appSettingHashMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getAppSetting(Lcom/fimi/network/ApkVersionManager$AppSettingListener;)V
    .locals 4
    .param p1, "appSettingListener"    # Lcom/fimi/network/ApkVersionManager$AppSettingListener;

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/fimi/host/HostConstants;->GET_APP_SETTING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getAppSetting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fimi/network/ApkVersionManager;->getRequestParams()Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v1

    new-instance v2, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    new-instance v3, Lcom/fimi/network/ApkVersionManager$1;

    invoke-direct {v3, p0, p1}, Lcom/fimi/network/ApkVersionManager$1;-><init>(Lcom/fimi/network/ApkVersionManager;Lcom/fimi/network/ApkVersionManager$AppSettingListener;)V

    invoke-direct {v2, v3}, Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;-><init>(Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;)V

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->get(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 74
    return-void
.end method

.method public getOnlineNewApkFileInfo(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "disposeDataHandle"    # Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/fimi/network/ApkVersionManager;->getRequestParams()Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v0

    .line 35
    .local v0, "requestParams":Lcom/fimi/kernel/network/okhttp/request/RequestParams;
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p1}, Lcom/fimi/kernel/network/okhttp/request/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fimi/host/HostConstants;->NEW_APK_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getApkDetail2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/fimi/network/ApkVersionManager;->getRequestParams(Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lcom/fimi/kernel/network/okhttp/request/RequestParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/network/okhttp/request/CommonRequest;->createGetRequest(Ljava/lang/String;Lcom/fimi/kernel/network/okhttp/request/RequestParams;)Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/fimi/kernel/network/okhttp/CommonOkHttpClient;->get(Lokhttp3/Request;Lcom/fimi/kernel/network/okhttp/listener/DisposeDataHandle;)Lokhttp3/Call;

    .line 38
    return-void
.end method

.method public isOpen(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/fimi/network/ApkVersionManager;->appSettingHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/fimi/network/ApkVersionManager;->appSettingHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const/4 v1, 0x1

    .line 85
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return v1
.end method
