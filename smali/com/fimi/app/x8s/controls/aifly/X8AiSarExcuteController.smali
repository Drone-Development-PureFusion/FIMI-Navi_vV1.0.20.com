.class public Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiSarExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# instance fields
.field protected MAX_WIDTH:I

.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private flagSmall:Landroid/view/View;

.field private imgBack:Landroid/widget/ImageView;

.field private imgShot:Landroid/widget/ImageView;

.field private imgSwith:Landroid/widget/ImageView;

.field protected isShow:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

.field private mContentTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field private mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

.field private tvFlag:Landroid/widget/TextView;

.field private tvLatlng:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field protected width:I


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 47
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->width:I

    .line 73
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 74
    return-void
.end method

.method private closeFixedwing()V
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->closeUi()V

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;->onAiSarBackClick()V

    .line 255
    :cond_0
    return-void
.end method

.method private onTaskComplete(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 234
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 236
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->closeFixedwing()V

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;->onAiSarComplete(Z)V

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method public cancleByModeChange()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->onTaskComplete(Z)V

    .line 210
    return-void
.end method

.method public changeProcessByRc(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->changeProcess(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->isShow:Z

    .line 181
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 182
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 83
    return-void
.end method

.method public isShow()Z
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->isShow:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 106
    .local v0, "id":I
    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v2, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->showExitDialog()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_map_switch:I

    if-ne v0, v2, :cond_3

    .line 109
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapStyle()I

    move-result v1

    .line 110
    .local v1, "mapType":I
    sget v2, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    if-ne v1, v2, :cond_2

    .line 111
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v2

    sget v3, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_SATELLITE:I

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/common/GlobalConfig;->setMapStyle(I)V

    .line 112
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v2

    sget v3, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_SATELLITE:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->switchMapStyle(I)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v2

    sget v3, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    invoke-virtual {v2, v3}, Lcom/fimi/x8sdk/common/GlobalConfig;->setMapStyle(I)V

    .line 115
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v2

    sget v3, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->switchMapStyle(I)V

    goto :goto_0

    .line 117
    .end local v1    # "mapType":I
    :cond_3
    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_screen_shot:I

    if-ne v0, v2, :cond_4

    .line 118
    sget-boolean v2, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->isBusy:Z

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;

    invoke-direct {v2}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;-><init>()V

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->starThread(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    goto :goto_0

    .line 124
    :cond_4
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->tvFlag:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 126
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->tvFlag:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_5
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->tvFlag:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    .line 213
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->isShow:Z

    if-eqz v1, :cond_1

    .line 214
    if-nez p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->ononDroneDisconnectedTaskComplete()V

    .line 218
    :cond_0
    if-eqz p1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->tvTime:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getDevicePosition()[D

    move-result-object v0

    .line 222
    .local v0, "position":[D
    if-eqz v0, :cond_1

    .line 223
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->tvLatlng:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->tvTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "yyyyMMdd HH:mm:ss"

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/DateUtil;->getStringByFormat(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .end local v0    # "position":[D
    :cond_1
    return-void
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onRight()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->taskExit()V

    .line 69
    return-void
.end method

.method public ononDroneDisconnectedTaskComplete()V
    .locals 2

    .prologue
    .line 243
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 244
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->closeFixedwing()V

    .line 245
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;->onAiSarComplete(Z)V

    .line 248
    :cond_0
    return-void
.end method

.method public openUi()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 135
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->isShow:Z

    .line 136
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 137
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_sar_excute_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    .line 138
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_latlng:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->tvLatlng:Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_time:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->tvTime:Landroid/widget/TextView;

    .line 140
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->v_sar_content_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->mContentTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 141
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->mContentTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_sar_content_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 144
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_map_switch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->imgSwith:Landroid/widget/ImageView;

    .line 145
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_screen_shot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->imgShot:Landroid/widget/ImageView;

    .line 146
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->sb_switch_focus:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    .line 147
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->flagSmall:Landroid/view/View;

    .line 148
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_task_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->tvFlag:Landroid/widget/TextView;

    .line 149
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;->onAiSarRunning()V

    .line 151
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->imgSwith:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->imgShot:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->imgSwith:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->getMinMaxFocuse()[I

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getCameraManager()Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->setMinMax([ILcom/fimi/x8sdk/controller/CameraManager;)V

    .line 162
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->setProgress()V

    .line 163
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 165
    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->imgSwith:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-virtual {v1, v5}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 186
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiSarListener;

    .line 78
    return-void
.end method

.method public setProgress()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/X8CameraSettings;->getFocuse()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->setProgress(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public setTypeEnable()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setEnableTripod(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 271
    return-void
.end method

.method public setd()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 196
    const-string v1, ""

    .line 197
    .local v1, "t":Ljava/lang/String;
    const-string v0, ""

    .line 198
    .local v0, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fixedwing_exite_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_sar_exite_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 201
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 202
    return-void
.end method

.method public switchMapVideo(Z)V
    .locals 3
    .param p1, "sightFlag"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->handleView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 278
    if-nez p1, :cond_2

    .line 279
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->imgSwith:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->imgSwith:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->sbLayout:Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBarValueLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public taskExit()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSarExcuteController;->onTaskComplete(Z)V

    .line 206
    return-void
.end method
