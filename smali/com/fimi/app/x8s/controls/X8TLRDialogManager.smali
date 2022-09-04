.class public Lcom/fimi/app/x8s/controls/X8TLRDialogManager;
.super Ljava/lang/Object;
.source "X8TLRDialogManager.java"


# instance fields
.field private mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

.field private mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

.field private mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

.field private x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/controls/X8RightIconForMapController;)V
    .locals 0
    .param p1, "x8RightIconForMapController"    # Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    .line 29
    return-void
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;Lcom/fimi/app/x8s/widget/X8TLRDialog;)Lcom/fimi/app/x8s/widget/X8TLRDialog;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8TLRDialogManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/widget/X8TLRDialog;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;Lcom/fimi/app/x8s/widget/X8TLRDialog;)Lcom/fimi/app/x8s/widget/X8TLRDialog;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8TLRDialogManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/widget/X8TLRDialog;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;Lcom/fimi/app/x8s/widget/X8TLRDialog;)Lcom/fimi/app/x8s/widget/X8TLRDialog;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8TLRDialogManager;
    .param p1, "x1"    # Lcom/fimi/app/x8s/widget/X8TLRDialog;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    return-object p1
.end method


# virtual methods
.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 32
    if-nez p1, :cond_2

    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->dismiss()V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->dismiss()V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->dismiss()V

    .line 43
    :cond_2
    return-void
.end method

.method public onLandingClick()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getActivity()Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$9;-><init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->land(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 176
    return-void
.end method

.method public onRetureHomeClick()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getActivity()Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$7;-><init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiRetureHome(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 153
    return-void
.end method

.method public onTakeOffClick()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getActivity()Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$8;-><init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->takeOff(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 164
    return-void
.end method

.method public showLandingDialog()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 100
    new-instance v0, Lcom/fimi/app/x8s/widget/X8TLRDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getActivity()Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_land_title:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_land_tip:I

    .line 101
    invoke-virtual {v3, v5}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_img_landing_flag:I

    new-instance v6, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$5;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$5;-><init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8TLRDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$6;-><init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->setCanceledOnTouchOutside(Z)V

    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->show()V

    .line 120
    return-void
.end method

.method public showReturnDialog()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 46
    new-instance v0, Lcom/fimi/app/x8s/widget/X8TLRDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getActivity()Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_home_title:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    new-instance v6, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$1;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$1;-><init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8TLRDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$2;-><init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->show()V

    .line 66
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 2
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    const/4 v1, 0x1

    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 125
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8ReturnDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->dismiss()V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    if-eqz v0, :cond_3

    .line 130
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->dismiss()V

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    if-eqz v0, :cond_5

    .line 135
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8LandingDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->dismiss()V

    .line 141
    :cond_5
    return-void
.end method

.method public showTakeOffDialog(Z)V
    .locals 8
    .param p1, "isVPUMode"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 69
    const-string v7, ""

    .line 70
    .local v7, "number":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 71
    const v0, 0x3f99999a    # 1.2f

    invoke-static {v0, v6, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v7

    .line 76
    :goto_0
    new-instance v0, Lcom/fimi/app/x8s/widget/X8TLRDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getActivity()Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_take_off_title:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->x8RightIconForMapController:Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_take_off_tip:I

    .line 77
    invoke-virtual {v3, v5}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v7, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_img_take_off_flag:I

    new-instance v6, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$3;

    invoke-direct {v6, p0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$3;-><init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V

    invoke-direct/range {v0 .. v6}, Lcom/fimi/app/x8s/widget/X8TLRDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    new-instance v1, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager$4;-><init>(Lcom/fimi/app/x8s/controls/X8TLRDialogManager;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0, v4}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->mX8TakeOffDialog:Lcom/fimi/app/x8s/widget/X8TLRDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8TLRDialog;->show()V

    .line 97
    return-void

    .line 73
    :cond_0
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, v6, v4}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method
