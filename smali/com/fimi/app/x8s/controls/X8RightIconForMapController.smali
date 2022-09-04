.class public Lcom/fimi/app/x8s/controls/X8RightIconForMapController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;
.source "X8RightIconForMapController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private imbAiFly:Landroid/widget/ImageButton;

.field private imbLocation:Landroid/widget/ImageButton;

.field private imgAiReturnHome:Landroid/widget/ImageView;

.field private imgAiTakeLandOff:Landroid/widget/ImageView;

.field private imgSetHomeByDv:Landroid/widget/ImageView;

.field private imgSetHomeByMan:Landroid/widget/ImageView;

.field private isAiRunning:Z

.field private isVPUMode:Z

.field private mX8AiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

.field private mX8TLRDialogManager:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

.field private personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

.field private root:Landroid/view/View;

.field private vSetHomePoint:Landroid/widget/LinearLayout;

.field private vTakeoffLandingAiFly:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;Lcom/fimi/app/x8s/entity/X8AiModeState;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p3, "personLacationListener"    # Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;
    .param p4, "mX8AiModeState"    # Lcom/fimi/app/x8s/entity/X8AiModeState;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;-><init>(Landroid/view/View;)V

    .line 49
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->root:Landroid/view/View;

    .line 50
    iput-object p2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 51
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

    .line 52
    iput-object p4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->mX8AiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    .line 53
    new-instance v0, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;-><init>(Lcom/fimi/app/x8s/controls/X8RightIconForMapController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->mX8TLRDialogManager:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    .line 55
    sget v0, Lcom/fimi/app/x8s/R$id;->imb_location:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbLocation:Landroid/widget/ImageButton;

    .line 56
    sget v0, Lcom/fimi/app/x8s/R$id;->imb_ai_fly:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbAiFly:Landroid/widget/ImageButton;

    .line 58
    sget v0, Lcom/fimi/app/x8s/R$id;->ll_set_home_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vSetHomePoint:Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lcom/fimi/app/x8s/R$id;->ll_takeoff_landing_aifly:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vTakeoffLandingAiFly:Landroid/widget/LinearLayout;

    .line 61
    sget v0, Lcom/fimi/app/x8s/R$id;->imb_x8_take_off_land:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    .line 62
    sget v0, Lcom/fimi/app/x8s/R$id;->imb_x8_ai_reture:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiReturnHome:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcom/fimi/app/x8s/R$id;->img_set_home_by_dv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgSetHomeByDv:Landroid/widget/ImageView;

    .line 64
    sget v0, Lcom/fimi/app/x8s/R$id;->img_set_home_by_man:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgSetHomeByMan:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getDroneState()V

    .line 66
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->isConect:Z

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->isLowpower:Z

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->onFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;Z)V

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->changeState()V

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgSetHomeByDv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgSetHomeByMan:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->switchByCloseFullScreen(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->initAction()V

    .line 76
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->setAiFlyEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/X8RightIconForMapController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method private openTakeOffOrLandingUi()V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    .line 157
    .local v0, "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->mX8TLRDialogManager:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->showLandingDialog()V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->mX8TLRDialogManager:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    iget-boolean v2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->isVPUMode:Z

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->showTakeOffDialog(Z)V

    goto :goto_0
.end method


# virtual methods
.method public changeState()V
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->isConect:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->isInSky:Z

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->setChangeHomeEnabled(Z)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->setChangeHomeEnabled(Z)V

    goto :goto_0
.end method

.method public closeUiForSetting()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->showAll(Z)V

    .line 189
    return-void
.end method

.method public closeUiForTaskRunning()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 192
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vTakeoffLandingAiFly:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    const/4 v0, 0x1

    .line 194
    .local v0, "isShow":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 195
    :goto_0
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbLocation:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 196
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vSetHomePoint:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    return-void

    :cond_0
    move v0, v1

    .line 194
    goto :goto_0

    :cond_1
    move v2, v1

    .line 195
    goto :goto_1

    :cond_2
    move v3, v1

    .line 196
    goto :goto_2
.end method

.method public d()V
    .locals 1

    .prologue
    .line 239
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_take_off_small:I

    .line 240
    .local v0, "res":I
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_landing_small:I

    .line 241
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_return_small:I

    .line 242
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public getActivity()Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method public initAction()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbLocation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgSetHomeByDv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgSetHomeByMan:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbAiFly:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiReturnHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 81
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 110
    .local v1, "id":I
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbAiFly:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->onAiFlyClick()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbLocation:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getId()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->showPersonLocation()V

    goto :goto_0

    .line 114
    :cond_2
    sget v4, Lcom/fimi/app/x8s/R$id;->imb_x8_take_off_land:I

    if-ne v1, v4, :cond_3

    .line 115
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->openTakeOffOrLandingUi()V

    goto :goto_0

    .line 116
    :cond_3
    sget v4, Lcom/fimi/app/x8s/R$id;->imb_x8_ai_reture:I

    if-ne v1, v4, :cond_4

    .line 118
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->mX8TLRDialogManager:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    invoke-virtual {v4}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->showReturnDialog()V

    goto :goto_0

    .line 119
    :cond_4
    sget v4, Lcom/fimi/app/x8s/R$id;->img_set_home_by_dv:I

    if-ne v1, v4, :cond_5

    .line 120
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->root:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_switch_home2_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "t":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->root:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_switch_home2_drone_msg:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "m":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->root:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/X8RightIconForMapController$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController$1;-><init>(Lcom/fimi/app/x8s/controls/X8RightIconForMapController;)V

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 133
    .local v0, "dialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto :goto_0

    .line 135
    .end local v0    # "dialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    .end local v2    # "m":Ljava/lang/String;
    .end local v3    # "t":Ljava/lang/String;
    :cond_5
    sget v4, Lcom/fimi/app/x8s/R$id;->img_set_home_by_man:I

    if-ne v1, v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->root:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_switch_home2_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 137
    .restart local v3    # "t":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->root:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_switch_home2_phone_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "m":Ljava/lang/String;
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->root:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/fimi/app/x8s/controls/X8RightIconForMapController$2;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController$2;-><init>(Lcom/fimi/app/x8s/controls/X8RightIconForMapController;)V

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 149
    .restart local v0    # "dialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    goto/16 :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8Controllers;->onDroneConnected(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->getDroneState()V

    .line 317
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->changeState()V

    .line 318
    if-nez p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_small_takeoff:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->setAiFlyEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->mX8TLRDialogManager:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->onDroneConnected(Z)V

    .line 323
    :cond_0
    return-void
.end method

.method public onFcHeart(Lcom/fimi/x8sdk/dataparser/AutoFcHeart;Z)V
    .locals 10
    .param p1, "fcHeart"    # Lcom/fimi/x8sdk/dataparser/AutoFcHeart;
    .param p2, "isLowPow"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 245
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcHeart;->getCtrlType()I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 246
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->isVPUMode:Z

    .line 251
    :goto_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v2

    .line 252
    .local v2, "state":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_small_landing:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 254
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiReturnHome:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "b":Z
    const/4 v3, 0x0

    .line 258
    .local v3, "takeoffLanding":Z
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->isPilotModePrimary()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 259
    const/4 v0, 0x0

    .line 260
    const/4 v3, 0x1

    .line 273
    .end local v3    # "takeoffLanding":Z
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->isAiRunning:Z

    if-eqz v4, :cond_1

    .line 274
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vTakeoffLandingAiFly:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    :cond_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 280
    .end local v0    # "b":Z
    :cond_2
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->isOnGround()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 281
    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->isCanFly()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 282
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    sget v5, Lcom/fimi/app/x8s/R$drawable;->x8_btn_ai_small_takeoff:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 283
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlType()I

    move-result v1

    .line 284
    .local v1, "ctrtype":I
    const/4 v3, 0x0

    .line 285
    .restart local v3    # "takeoffLanding":Z
    if-ne v1, v6, :cond_9

    .line 286
    const/4 v3, 0x0

    .line 292
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 298
    .end local v1    # "ctrtype":I
    .end local v3    # "takeoffLanding":Z
    :goto_3
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiReturnHome:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 300
    const/4 v3, 0x0

    .line 301
    .restart local v3    # "takeoffLanding":Z
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlType()I

    move-result v1

    .line 302
    .restart local v1    # "ctrtype":I
    if-ne v1, v6, :cond_c

    .line 303
    const/4 v3, 0x0

    .line 312
    .end local v1    # "ctrtype":I
    .end local v3    # "takeoffLanding":Z
    :cond_4
    :goto_4
    return-void

    .line 248
    .end local v2    # "state":Lcom/fimi/x8sdk/modulestate/DroneState;
    :cond_5
    iput-boolean v8, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->isVPUMode:Z

    goto :goto_0

    .line 262
    .restart local v0    # "b":Z
    .restart local v2    # "state":Lcom/fimi/x8sdk/modulestate/DroneState;
    .restart local v3    # "takeoffLanding":Z
    :cond_6
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlType()I

    move-result v1

    .line 263
    .restart local v1    # "ctrtype":I
    if-ne v1, v6, :cond_7

    .line 264
    const/4 v0, 0x0

    .line 265
    const/4 v3, 0x0

    goto :goto_1

    .line 266
    :cond_7
    if-ne v1, v7, :cond_8

    .line 267
    const/4 v0, 0x0

    .line 268
    const/4 v3, 0x1

    goto :goto_1

    .line 269
    :cond_8
    if-ne v1, v9, :cond_0

    .line 270
    const/4 v0, 0x1

    move v3, v0

    .local v3, "takeoffLanding":I
    goto :goto_1

    .line 287
    .end local v0    # "b":Z
    .local v3, "takeoffLanding":Z
    :cond_9
    if-ne v1, v7, :cond_a

    .line 288
    const/4 v3, 0x1

    goto :goto_2

    .line 289
    :cond_a
    if-ne v1, v9, :cond_3

    .line 290
    const/4 v3, 0x1

    goto :goto_2

    .line 296
    .end local v1    # "ctrtype":I
    .end local v3    # "takeoffLanding":Z
    :cond_b
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_3

    .line 304
    .restart local v1    # "ctrtype":I
    .restart local v3    # "takeoffLanding":Z
    :cond_c
    if-ne v1, v7, :cond_d

    .line 305
    const/4 v3, 0x0

    goto :goto_4

    .line 306
    :cond_d
    if-ne v1, v9, :cond_4

    goto :goto_4
.end method

.method public openUiForSetting()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 200
    const/4 v0, 0x1

    .line 201
    .local v0, "isShow":Z
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vTakeoffLandingAiFly:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 203
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbLocation:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vSetHomePoint:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openUiForSetting--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 206
    return-void

    :cond_0
    move v1, v3

    .line 201
    goto :goto_0

    :cond_1
    move v0, v3

    .line 202
    goto :goto_1

    :cond_2
    move v1, v3

    .line 203
    goto :goto_2

    :cond_3
    move v2, v3

    .line 204
    goto :goto_3
.end method

.method public openUiForTaskRunning()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 209
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->mX8AiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/entity/X8AiModeState;->isAiModeStateIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vTakeoffLandingAiFly:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 213
    .local v0, "isShow":Z
    :goto_0
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbLocation:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vSetHomePoint:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    return-void

    .end local v0    # "isShow":Z
    :cond_1
    move v0, v1

    .line 212
    goto :goto_0

    .restart local v0    # "isShow":Z
    :cond_2
    move v2, v1

    .line 213
    goto :goto_1

    :cond_3
    move v3, v1

    .line 214
    goto :goto_2
.end method

.method public setAiFlyEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 334
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiTakeLandOff:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgAiReturnHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 336
    return-void
.end method

.method public setAiRunning(Z)V
    .locals 0
    .param p1, "aiRunning"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->isAiRunning:Z

    .line 354
    return-void
.end method

.method public setChangeHomeEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgSetHomeByDv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imgSetHomeByMan:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 341
    return-void
.end method

.method public showAiFlyIcon()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vTakeoffLandingAiFly:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    return-void
.end method

.method public showAll(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 219
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbLocation:Landroid/widget/ImageButton;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 220
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vSetHomePoint:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vTakeoffLandingAiFly:Landroid/widget/LinearLayout;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    return-void

    :cond_0
    move v0, v2

    .line 219
    goto :goto_0

    :cond_1
    move v0, v2

    .line 220
    goto :goto_1

    :cond_2
    move v1, v2

    .line 221
    goto :goto_2
.end method

.method public showLocation()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 230
    .local v0, "isShow":Z
    :goto_0
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbLocation:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vSetHomePoint:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    return-void

    .end local v0    # "isShow":Z
    :cond_0
    move v0, v1

    .line 229
    goto :goto_0

    .restart local v0    # "isShow":Z
    :cond_1
    move v2, v1

    .line 230
    goto :goto_1

    :cond_2
    move v3, v1

    .line 231
    goto :goto_2
.end method

.method public showPersonLocation()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->personLacationListener:Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CameraPersonLacationListener;->showPersonLocation()V

    .line 170
    :cond_0
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 1
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->mX8TLRDialogManager:Lcom/fimi/app/x8s/controls/X8TLRDialogManager;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8TLRDialogManager;->showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V

    .line 346
    return-void
.end method

.method public showTakeoffLanding()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vTakeoffLandingAiFly:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    return-void
.end method

.method public switch2Map(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->mX8AiModeState:Lcom/fimi/app/x8s/entity/X8AiModeState;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AiModeState;->isAiModeStateReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbLocation:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vSetHomePoint:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 183
    goto :goto_1

    :cond_2
    move v1, v2

    .line 184
    goto :goto_2
.end method

.method public switchByCloseFullScreen(Z)V
    .locals 4
    .param p1, "isFullVideo"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 173
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->imbLocation:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->vSetHomePoint:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    return-void

    :cond_0
    move v0, v2

    .line 173
    goto :goto_0

    :cond_1
    move v1, v2

    .line 174
    goto :goto_1
.end method
