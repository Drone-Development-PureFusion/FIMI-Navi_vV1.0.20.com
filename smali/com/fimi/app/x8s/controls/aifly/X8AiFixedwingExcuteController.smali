.class public Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiFixedwingExcuteController.java"

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

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

.field private mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field speedState:I

.field private tvFlag:Landroid/widget/TextView;

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 39
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->width:I

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->speedState:I

    .line 60
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->activity:Landroid/app/Activity;

    .line 61
    return-void
.end method

.method private closeFixedwing()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->closeUi()V

    .line 212
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;->onFixedwingBackClick()V

    .line 215
    :cond_0
    return-void
.end method

.method private onTaskComplete()V
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 196
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->closeFixedwing()V

    .line 197
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;->onFixedwingComplete(Z)V

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public cancleByModeChange()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->onTaskComplete()V

    .line 153
    return-void
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->isShow:Z

    .line 124
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 125
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 70
    return-void
.end method

.method public isShow()Z
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->isShow:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 93
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->showExitDialog()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->tvFlag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->tvFlag:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->tvFlag:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 10
    .param p1, "b"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 158
    iget-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->isShow:Z

    if-eqz v5, :cond_1

    .line 159
    if-nez p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->ononDroneDisconnectedTaskComplete()V

    .line 163
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fimi/x8sdk/modulestate/DroneState;->getAutoFixedwingState()Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;

    move-result-object v2

    .line 164
    .local v2, "state":Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;
    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {v2}, Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;->getFixedwingphase()I

    move-result v5

    if-nez v5, :cond_2

    .line 166
    iput v8, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->speedState:I

    .line 167
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->isClose()Z

    move-result v5

    if-nez v5, :cond_1

    .line 168
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5, v7, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "h1":Ljava/lang/String;
    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5, v7, v7}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getSpeedNumberString(FIZ)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "vs1":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->handleView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_fixedwing_speed_tip1:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "prex":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v7

    aput-object v0, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "tip":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v5, v3}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 173
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->showTip()V

    .line 191
    .end local v0    # "h1":Ljava/lang/String;
    .end local v1    # "prex":Ljava/lang/String;
    .end local v2    # "state":Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;
    .end local v3    # "tip":Ljava/lang/String;
    .end local v4    # "vs1":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 176
    .restart local v2    # "state":Lcom/fimi/x8sdk/dataparser/AutoFixedwingState;
    :cond_2
    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->speedState:I

    if-ne v5, v8, :cond_3

    .line 177
    iput v9, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->speedState:I

    .line 178
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->handleView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_fixedwing_speed_tip3:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    .restart local v3    # "tip":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v5, v3}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 180
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->showTip()V

    goto :goto_0

    .line 182
    .end local v3    # "tip":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->isClose()Z

    move-result v5

    if-nez v5, :cond_1

    .line 183
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->handleView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_ai_fixedwing_speed_tip3:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    .restart local v3    # "tip":Ljava/lang/String;
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v5, v3}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 185
    iget-object v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v5}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->showTip()V

    goto :goto_0
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onRight()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->setTypeDisEnable()V

    .line 56
    return-void
.end method

.method public ononDroneDisconnectedTaskComplete()V
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 204
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->closeFixedwing()V

    .line 205
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;->onFixedwingComplete(Z)V

    .line 208
    :cond_0
    return-void
.end method

.method public openUi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->isShow:Z

    .line 107
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 108
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_fixedwing_excute_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->handleView:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->v_content_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 110
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 111
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->flagSmall:Landroid/view/View;

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_task_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->tvFlag:Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;->onFixedwingRunning()V

    .line 114
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 119
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 129
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiFixedwingListener;

    .line 65
    return-void
.end method

.method public setTypeDisEnable()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setDisenableFixwing(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 230
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 139
    const-string v1, ""

    .line 140
    .local v1, "t":Ljava/lang/String;
    const-string v0, ""

    .line 141
    .local v0, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fixedwing_exite_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fixedwing_exite_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 144
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 145
    return-void
.end method

.method public taskExit()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFixedwingExcuteController;->onTaskComplete()V

    .line 149
    return-void
.end method
