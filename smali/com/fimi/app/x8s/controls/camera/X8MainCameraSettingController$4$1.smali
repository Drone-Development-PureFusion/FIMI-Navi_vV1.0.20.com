.class Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;
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
    .line 322
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 6
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    const-class v4, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {p1, v4}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 327
    .local v2, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getParam()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "paramType":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 329
    const-string v4, "metering_mode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getOptions()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1102(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;Ljava/util/List;)Ljava/util/List;

    .line 332
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1100(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1100(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 333
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1100(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "m":I
    :goto_0
    if-ltz v0, :cond_0

    .line 334
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1100(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 335
    .local v3, "val":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_meter_roi:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1100(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 344
    .end local v0    # "m":I
    .end local v1    # "paramType":Ljava/lang/String;
    .end local v2    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    .end local v3    # "val":Ljava/lang/String;
    :cond_0
    return-void

    .line 333
    .restart local v0    # "m":I
    .restart local v1    # "paramType":Ljava/lang/String;
    .restart local v2    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    .restart local v3    # "val":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
