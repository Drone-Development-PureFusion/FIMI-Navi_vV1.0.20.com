.class Lcom/fimi/network/ApkVersionManager$1;
.super Ljava/lang/Object;
.source "ApkVersionManager.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/network/ApkVersionManager;->getAppSetting(Lcom/fimi/network/ApkVersionManager$AppSettingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/network/ApkVersionManager;

.field final synthetic val$appSettingListener:Lcom/fimi/network/ApkVersionManager$AppSettingListener;


# direct methods
.method constructor <init>(Lcom/fimi/network/ApkVersionManager;Lcom/fimi/network/ApkVersionManager$AppSettingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/network/ApkVersionManager;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fimi/network/ApkVersionManager$1;->this$0:Lcom/fimi/network/ApkVersionManager;

    iput-object p2, p0, Lcom/fimi/network/ApkVersionManager$1;->val$appSettingListener:Lcom/fimi/network/ApkVersionManager$AppSettingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 0
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 72
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 10
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/fimi/network/entity/NetModel;

    invoke-static {v7, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fimi/network/entity/NetModel;

    .line 49
    .local v5, "netModel":Lcom/fimi/network/entity/NetModel;
    invoke-virtual {v5}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 50
    iget-object v7, p0, Lcom/fimi/network/ApkVersionManager$1;->this$0:Lcom/fimi/network/ApkVersionManager;

    iget-object v7, v7, Lcom/fimi/network/ApkVersionManager;->appSettingHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 54
    :try_start_0
    invoke-virtual {v5}, Lcom/fimi/network/entity/NetModel;->getData()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 55
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 58
    .local v3, "jsonObjectData":Lcom/alibaba/fastjson/JSONObject;
    const-string v7, "key"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v7, "value"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/fimi/network/ApkVersionManager$1;->this$0:Lcom/fimi/network/ApkVersionManager;

    iget-object v7, v7, Lcom/fimi/network/ApkVersionManager;->appSettingHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "jsonObjectData":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alanqiu  ==============getAppSetting:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 62
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .restart local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/fimi/network/ApkVersionManager$1;->val$appSettingListener:Lcom/fimi/network/ApkVersionManager$AppSettingListener;

    invoke-interface {v7}, Lcom/fimi/network/ApkVersionManager$AppSettingListener;->onAppSettingListener()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
