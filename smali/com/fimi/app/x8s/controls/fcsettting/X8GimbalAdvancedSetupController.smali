.class public Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8GimbalAdvancedSetupController.java"


# instance fields
.field private btnReturn:Landroid/widget/ImageView;

.field private gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field private isConnected:Z

.field private isRequested:Z

.field private ix8GimbalSettingListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

.field private modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

.field vsbGimbalGain:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;

.field private x8BtnThreeAxisTuning:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 101
    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->isConnected:Z

    .line 102
    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->isRequested:Z

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->ix8GimbalSettingListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Lcom/fimi/x8sdk/controller/X8GimbalManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    return-object v0
.end method

.method private requestValue()V
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    .line 150
    .local v0, "isConnect":Z
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->setViewEnabled(Z)V

    .line 151
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$4;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->getGcGain(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method public closeItem()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->closeItem()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->isShow:Z

    .line 120
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->btnReturn:Landroid/widget/ImageView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->x8BtnThreeAxisTuning:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->vsbGimbalGain:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setConfirmListener(Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip$OnProgressConfirmListener;)V

    .line 95
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 47
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_main_general_item_advanced_setup_layout:I

    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "rootView":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->handleView:Landroid/view/View;

    .line 48
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->btn_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->btnReturn:Landroid/widget/ImageView;

    .line 49
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->vsb_gimbal_gain:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->vsbGimbalGain:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;

    .line 50
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_btn_three_axis_tuning:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->x8BtnThreeAxisTuning:Landroid/widget/Button;

    .line 51
    return-void
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->isConnected:Z

    if-ne v0, p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->isConnected:Z

    .line 107
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->isShow:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->setViewEnabled(Z)V

    .line 109
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->isRequested:Z

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->requestValue()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->isRequested:Z

    goto :goto_0
.end method

.method public setGimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V
    .locals 0
    .param p1, "gimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 131
    return-void
.end method

.method public setModeControllerListener(Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;)V
    .locals 0
    .param p1, "modeControllerListener"    # Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->modeControllerListener:Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    .line 39
    return-void
.end method

.method public setOnGimbalSettingListener(Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;)V
    .locals 0
    .param p1, "ix8GimbalSettingListener"    # Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->ix8GimbalSettingListener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    .line 43
    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 135
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->vsbGimbalGain:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setViewEnable(Z)V

    .line 136
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v0

    .line 137
    .local v0, "isOngroud":Z
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->x8BtnThreeAxisTuning:Landroid/widget/Button;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 139
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->x8BtnThreeAxisTuning:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->x8BtnThreeAxisTuning:Landroid/widget/Button;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 142
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->x8BtnThreeAxisTuning:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public showItem()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;->showItem()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->isShow:Z

    .line 126
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->requestValue()V

    .line 127
    return-void
.end method
