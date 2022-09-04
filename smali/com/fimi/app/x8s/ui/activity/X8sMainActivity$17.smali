.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/x8sdk/listener/IX8FiveKeyDefine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backCenterDownSwitch(Z)V
    .locals 1
    .param p1, "isLongPress"    # Z

    .prologue
    .line 1404
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->setFiveKeyPitchAngle()V

    goto :goto_0
.end method

.method public batteryFrame(Z)V
    .locals 2
    .param p1, "isLongPress"    # Z

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-boolean v0, v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->activateTTS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$900(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->isTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$500(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->FULL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fiveKeySwitchUI()V

    .line 1415
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->closeOther2FCAllSetting()V

    goto :goto_0
.end method

.method public cancelParameterSetting()V
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->closeUi()V

    .line 1487
    return-void
.end method

.method public mapFPVSwitch(Z)V
    .locals 1
    .param p1, "isLongPress"    # Z

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->switchMapVideo()V

    goto :goto_0
.end method

.method public mediaFrame(Z)V
    .locals 4
    .param p1, "isLongPress"    # Z

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1430
    :goto_0
    return-void

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    const-class v3, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public meteringSwitch(Z)V
    .locals 1
    .param p1, "isLongPress"    # Z

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    :goto_0
    return-void

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeySetMetering()V

    goto :goto_0
.end method

.method public selfCheckFrame(Z)V
    .locals 2
    .param p1, "isLongPress"    # Z

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-boolean v0, v0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->activateTTS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$900(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->isTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$500(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->FULL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->fiveKeySwitchDronestateUI()V

    goto :goto_0
.end method

.method public setContrastRatio(ZZ)V
    .locals 7
    .param p1, "isLongPress"    # Z
    .param p2, "isAdd"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1453
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-boolean v1, v1, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->activateTTS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$900(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->isTaskRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$500(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->FULL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1456
    const-string v0, ""

    .line 1457
    .local v0, "contrast":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->isShow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1458
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v2

    if-eqz p2, :cond_2

    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ADD_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    :goto_1
    invoke-virtual {v2, v1, v6}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeySetContrast(Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;I)Ljava/lang/String;

    move-result-object v0

    .line 1465
    :goto_2
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_five_key_show_type:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_camera_contrast:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->setTvFiveKeyShowType(Ljava/lang/String;)V

    .line 1466
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->setSbarFiveKey(Ljava/lang/String;)V

    .line 1467
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->openUi()V

    goto/16 :goto_0

    .line 1458
    :cond_2
    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->DECREASE_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    goto :goto_1

    .line 1461
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->getCurrentContrast()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public setSaturation(ZZ)V
    .locals 7
    .param p1, "isLongPress"    # Z
    .param p2, "isAdd"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1434
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-boolean v1, v1, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->activateTTS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$900(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->isTaskRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$500(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->FULL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->isShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1437
    const-string v0, ""

    .line 1438
    .local v0, "saturation":Ljava/lang/String;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->isShow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1439
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v2

    if-eqz p2, :cond_2

    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->ADD_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    :goto_1
    invoke-virtual {v2, v1, v6}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeySetSaturation(Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;I)Ljava/lang/String;

    move-result-object v0

    .line 1445
    :goto_2
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_rc_setting_five_key_show_type:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_camera_saturation:I

    invoke-virtual {v4, v5}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->setTvFiveKeyShowType(Ljava/lang/String;)V

    .line 1446
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->setSbarFiveKey(Ljava/lang/String;)V

    .line 1447
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->openUi()V

    goto/16 :goto_0

    .line 1439
    :cond_2
    sget-object v1, Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;->DECREASE_VALUE:Lcom/fimi/x8sdk/presenter/FiveKeyDefinePresenter$ParameterType;

    goto :goto_1

    .line 1442
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->getCurrentSaturation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public shootModeSwitch(Z)V
    .locals 1
    .param p1, "isLongPress"    # Z

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1475
    :goto_0
    return-void

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$17;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->fiveKeyShootModeSwitch()V

    goto :goto_0
.end method
