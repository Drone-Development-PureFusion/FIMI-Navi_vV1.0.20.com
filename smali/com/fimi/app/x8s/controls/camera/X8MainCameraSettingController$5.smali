.class Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;
.super Ljava/lang/Object;
.source "X8MainCameraSettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;
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
    .line 475
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 9
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    .line 478
    if-eqz p1, :cond_0

    .line 479
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;

    .line 480
    .local v1, "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getRval()I

    move-result v2

    .line 481
    .local v2, "rval":I
    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getType()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "paramType":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 512
    .end local v0    # "paramType":Ljava/lang/String;
    .end local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    .end local v2    # "rval":I
    :cond_0
    :goto_0
    return-void

    .line 484
    .restart local v0    # "paramType":Ljava/lang/String;
    .restart local v1    # "paramsJson":Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;
    .restart local v2    # "rval":I
    :cond_1
    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CameraParamsJson;->getMsg_id()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 486
    :pswitch_0
    const-string v3, "contrast"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ltz v2, :cond_2

    .line 487
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1600(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setContrast(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_2
    const-string v3, "saturation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ltz v2, :cond_3

    .line 490
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1600(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setSaturation(Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_3
    const-string v3, "metering_mode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ltz v2, :cond_4

    .line 493
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$array;->x8_meter_array:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->strings:[Ljava/lang/String;

    .line 494
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v5}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_metering_switch_hint:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v5, v5, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->strings:[Ljava/lang/String;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v6}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1100(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v7, v7, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 495
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1600(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setMetering_mode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 497
    :cond_4
    const-string v3, "capture_mode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-ltz v2, :cond_5

    .line 498
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$array;->x8_photo_mode_array:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->strings:[Ljava/lang/String;

    .line 499
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v5}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_metering_switch_hint:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v5, v5, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->strings:[Ljava/lang/String;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v6}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1500(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v7, v7, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 500
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1600(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setCapture_mode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 502
    :cond_5
    const-string v3, "record_mode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ltz v2, :cond_0

    .line 503
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$array;->x8_record_mode_array:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->strings:[Ljava/lang/String;

    .line 504
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v5}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_metering_switch_hint:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v5, v5, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->strings:[Ljava/lang/String;

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v6}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1400(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v7, v7, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 505
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$1600(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    iget-object v4, v4, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->curParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setRecord_mode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
