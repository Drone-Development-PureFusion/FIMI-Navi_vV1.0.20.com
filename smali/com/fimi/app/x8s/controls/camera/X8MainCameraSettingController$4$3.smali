.class Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$3;
.super Ljava/lang/Object;
.source "X8MainCameraSettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$3;->this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 4
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    const-class v2, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 368
    .local v1, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getParam()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "paramType":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 370
    const-string v2, "capture_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$3;->this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    iget-object v2, v2, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getOptions()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1502(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;Ljava/util/List;)Ljava/util/List;

    .line 377
    .end local v0    # "paramType":Ljava/lang/String;
    .end local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    :cond_0
    return-void
.end method
