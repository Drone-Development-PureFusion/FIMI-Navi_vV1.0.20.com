.class Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;
.super Ljava/lang/Object;
.source "X8MainCameraSettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->initCameraParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 3
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 313
    if-eqz p1, :cond_1

    .line 314
    const-string v0, "msg_id"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 315
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1000(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1000(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->initCameraParams(Lcom/alibaba/fastjson/JSONObject;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->parseParamsValue(Lcom/alibaba/fastjson/JSONObject;)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1300(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v0

    const-string v1, "metering_mode"

    new-instance v2, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$1;-><init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 347
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1300(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v0

    const-string v1, "record_mode"

    new-instance v2, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$2;-><init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 363
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1300(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v0

    const-string v1, "capture_mode"

    new-instance v2, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$3;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4$3;-><init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraKeyOptions(Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 379
    return-void
.end method
