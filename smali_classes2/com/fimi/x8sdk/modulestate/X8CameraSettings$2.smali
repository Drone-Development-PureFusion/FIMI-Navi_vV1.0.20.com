.class final Lcom/fimi/x8sdk/modulestate/X8CameraSettings$2;
.super Ljava/lang/Object;
.source "X8CameraSettings.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->getSettings(Lcom/fimi/x8sdk/controller/CameraManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 4
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 54
    .local v1, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getOptions()Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 57
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->access$102(Ljava/util/List;)Ljava/util/List;

    .line 58
    const/4 v2, 0x1

    sput-boolean v2, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->hasGetFoucusSettingValues:Z

    .line 63
    .end local v0    # "param":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :cond_0
    return-void
.end method
