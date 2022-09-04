.class public Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiTripodExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# instance fields
.field protected MAX_WIDTH:I

.field private activity:Landroid/app/Activity;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private flagSmall:Landroid/view/View;

.field private imgBack:Landroid/widget/ImageView;

.field protected isShow:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

.field private mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private tvFlag:Landroid/widget/TextView;

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 37
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->width:I

    .line 57
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->activity:Landroid/app/Activity;

    .line 58
    return-void
.end method

.method private closeFixedwing()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->closeUi()V

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;->onAiTripodBackClick()V

    .line 182
    :cond_0
    return-void
.end method

.method private onTaskComplete()V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 163
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->closeFixedwing()V

    .line 164
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;->onAiTripodComplete(Z)V

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public cancleByModeChange()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->onTaskComplete()V

    .line 149
    return-void
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->isShow:Z

    .line 120
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 121
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 67
    return-void
.end method

.method public isShow()Z
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->isShow:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 90
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->showExitDialog()V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->tvFlag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->tvFlag:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->tvFlag:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 153
    if-nez p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->ononDroneDisconnectedTaskComplete()V

    .line 158
    :cond_0
    return-void
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onRight()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->setTypeEnable()V

    .line 53
    return-void
.end method

.method public ononDroneDisconnectedTaskComplete()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 171
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->closeFixedwing()V

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;->onAiTripodComplete(Z)V

    .line 175
    :cond_0
    return-void
.end method

.method public openUi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 103
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->isShow:Z

    .line 104
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_tripod_excute_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->handleView:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 107
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->flagSmall:Landroid/view/View;

    .line 108
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_task_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->tvFlag:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;->onAiTripodRunning()V

    .line 111
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 115
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 125
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiTripodListener;

    .line 62
    return-void
.end method

.method public setTypeEnable()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setEnableTripod(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 199
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 135
    const-string v1, ""

    .line 136
    .local v1, "t":Ljava/lang/String;
    const-string v0, ""

    .line 137
    .local v0, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fixedwing_exite_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_tripod_exite_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 140
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 141
    return-void
.end method

.method public taskExit()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTripodExcuteController;->onTaskComplete()V

    .line 145
    return-void
.end method
