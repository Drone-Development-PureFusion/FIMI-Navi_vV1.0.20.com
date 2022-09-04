.class public Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8GimbalItemController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnGimbalCalibration:Landroid/widget/Button;

.field private btnHorizontalTrim:Landroid/widget/Button;

.field btnRestParams:Landroid/widget/Button;

.field private fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

.field private isConnected:Z

.field private isRequested:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

.field private mContext:Landroid/content/Context;

.field pbRestsystemLoading:Landroid/widget/ProgressBar;

.field private rlFcItem:Landroid/view/View;

.field private sbPitchSpeed:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

.field private stubFcItem:Landroid/view/ViewStub;

.field x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field x8LlAdvancedSetting:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 39
    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->isRequested:Z

    .line 88
    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->isConnected:Z

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)Lcom/fimi/x8sdk/controller/X8GimbalManager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->sbPitchSpeed:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->resetGimbalSystemParams()V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->requestValue()V

    return-void
.end method

.method private requestValue()V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    .line 126
    .local v0, "isConnect":Z
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->setViewEnabled(Z)V

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$2;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->getPitchSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 143
    :cond_0
    return-void
.end method

.method private resetGimbalSystemParams()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$4;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->resetGCParams(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 245
    return-void
.end method


# virtual methods
.method public closeItem()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->rlFcItem:Landroid/view/View;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->rlFcItem:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->isShow:Z

    goto :goto_0
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public initActions()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->sbPitchSpeed:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->sbPitchSpeed:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setConfirmListener(Lcom/fimi/app/x8s/widget/X8ValueSeakBarView$OnProgressConfirmListener;)V

    .line 81
    :cond_0
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 54
    sget v0, Lcom/fimi/app/x8s/R$id;->stub_gimbal_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->stubFcItem:Landroid/view/ViewStub;

    .line 55
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 176
    .local v0, "i":I
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_gimbal_calibration:I

    if-ne v0, v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;->onGimbalCalibrationClick()V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_horizontal_trim:I

    if-ne v0, v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;->onHorizontalTrimClick()V

    goto :goto_0

    .line 185
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_rest_params:I

    if-ne v0, v1, :cond_3

    .line 186
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->showRestParamDialog()V

    goto :goto_0

    .line 187
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_ll_advanced_setting:I

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;->onAdvancedSetup()V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->isConnected:Z

    if-ne v0, p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->isConnected:Z

    .line 94
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->isShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->rlFcItem:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->setViewEnabled(Z)V

    .line 96
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->isRequested:Z

    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->requestValue()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->isRequested:Z

    goto :goto_0
.end method

.method public setFcCtrlManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcCtrlManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->fcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 199
    return-void
.end method

.method public setGimbalManager(Lcom/fimi/x8sdk/controller/X8GimbalManager;)V
    .locals 0
    .param p1, "gimbalManager"    # Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->gimbalManager:Lcom/fimi/x8sdk/controller/X8GimbalManager;

    .line 203
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->listener:Lcom/fimi/app/x8s/interfaces/IX8GimbalSettingListener;

    .line 195
    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    .line 147
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->rlFcItem:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnHorizontalTrim:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 149
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->sbPitchSpeed:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setViewEnable(Z)V

    .line 151
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v0

    .line 152
    .local v0, "isOngroud":Z
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnRestParams:Landroid/widget/Button;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnRestParams:Landroid/widget/Button;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 154
    if-eqz p1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnHorizontalTrim:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 162
    .end local v0    # "isOngroud":Z
    :cond_0
    :goto_2
    return-void

    .line 152
    .restart local v0    # "isOngroud":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 153
    goto :goto_1

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnHorizontalTrim:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_2
.end method

.method public showItem()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->rlFcItem:Landroid/view/View;

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->stubFcItem:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rl_main_gimbal_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->rlFcItem:Landroid/view/View;

    .line 107
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_gimbal_calibration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnGimbalCalibration:Landroid/widget/Button;

    .line 108
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_horizontal_trim:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnHorizontalTrim:Landroid/widget/Button;

    .line 109
    sget v1, Lcom/fimi/app/x8s/R$id;->vsb_pitching_speed_limit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->sbPitchSpeed:Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    .line 110
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_rest_params:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnRestParams:Landroid/widget/Button;

    .line 111
    sget v1, Lcom/fimi/app/x8s/R$id;->pb_restsystem_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->pbRestsystemLoading:Landroid/widget/ProgressBar;

    .line 112
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_ll_advanced_setting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->x8LlAdvancedSetting:Landroid/widget/LinearLayout;

    .line 113
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnRestParams:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnGimbalCalibration:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->btnHorizontalTrim:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->x8LlAdvancedSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->requestValue()V

    .line 118
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->initActions()V

    .line 120
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->rlFcItem:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->isShow:Z

    .line 122
    return-void
.end method

.method public showRestParamDialog()V
    .locals 6

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->mContext:Landroid/content/Context;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_gimbal_setting_gimbal_reset_params:I

    .line 208
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->mContext:Landroid/content/Context;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_gimbale_settting_rest_params_content:I

    .line 209
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->mContext:Landroid/content/Context;

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_general_rest:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$3;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$3;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->x8DoubleCustomDialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 226
    return-void
.end method
