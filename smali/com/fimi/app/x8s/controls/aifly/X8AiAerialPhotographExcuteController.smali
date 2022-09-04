.class public Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiAerialPhotographExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# instance fields
.field protected MAX_WIDTH:I

.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private blank:Landroid/view/View;

.field private btnOk:Landroid/widget/Button;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private flagSmall:Landroid/view/View;

.field private imgBack:Landroid/widget/ImageView;

.field private imgChangeAngle:Landroid/widget/ImageView;

.field private imgEdit:Landroid/widget/ImageView;

.field private imgLockAngle:Landroid/widget/ImageView;

.field private imgLockBg:Landroid/widget/ImageView;

.field private isNextShow:Z

.field protected isShow:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

.field private mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private mX8AiAerialPhotographNextUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;

.field private nextRootView:Landroid/view/View;

.field private prex:Ljava/lang/String;

.field private tvAngle:Landroid/widget/TextView;

.field private tvFlag:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private vSensity:Landroid/view/View;

.field private vSetAngle:Landroid/view/View;

.field protected width:I


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 36
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->width:I

    .line 70
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->nextRootView:Landroid/view/View;

    return-object v0
.end method

.method private closeFixedwing()V
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->closeUi()V

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;->onAerialGraphBackClick()V

    .line 292
    :cond_0
    return-void
.end method

.method private onTaskComplete()V
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 273
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->closeFixedwing()V

    .line 274
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;->onAerialGraphComplete(Z)V

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public cancleByModeChange()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->onTaskComplete()V

    .line 259
    return-void
.end method

.method public closeNextUi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 200
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->blank:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->isNextShow:Z

    if-eqz v1, :cond_0

    .line 202
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->isNextShow:Z

    .line 203
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->width:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 204
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 206
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 215
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1, v6}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->taskFullScreen(Z)V

    .line 216
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mX8AiAerialPhotographNextUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->isSaveData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->setSensity()V

    .line 219
    :cond_1
    return-void
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->isShow:Z

    .line 167
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 168
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 80
    return-void
.end method

.method public isShow()Z
    .locals 2

    .prologue
    .line 238
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->isShow:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 104
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->showExitDialog()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->img_change_angle:I

    if-ne v0, v1, :cond_2

    .line 107
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->openNextUi(I)V

    goto :goto_0

    .line 108
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_head_lock_next_blank:I

    if-ne v0, v1, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->closeNextUi()V

    goto :goto_0

    .line 110
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v0, v1, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->closeNextUi()V

    goto :goto_0

    .line 112
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->img_edit:I

    if-ne v0, v1, :cond_5

    .line 113
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->openNextUi(I)V

    goto :goto_0

    .line 114
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->tvFlag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 116
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->tvFlag:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_6
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->tvFlag:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 263
    if-nez p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->ononDroneDisconnectedTaskComplete()V

    .line 268
    :cond_0
    return-void
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onRight()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->setTypeEnable()V

    .line 66
    return-void
.end method

.method public ononDroneDisconnectedTaskComplete()V
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 281
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->closeFixedwing()V

    .line 282
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;->onAerialGraphComplete(Z)V

    .line 285
    :cond_0
    return-void
.end method

.method public openNextUi(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 171
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->isNextShow:Z

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mX8AiAerialPhotographNextUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;

    invoke-virtual {v1, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->setType(I)V

    .line 176
    if-ne p1, v6, :cond_1

    .line 177
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->vSensity:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->vSetAngle:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mX8AiAerialPhotographNextUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_aerail_graph_next_title:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->setTitle(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->btnOk:Landroid/widget/Button;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_save:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mX8AiAerialPhotographNextUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->setSensity()V

    .line 189
    :goto_0
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->isNextShow:Z

    .line 190
    sget v1, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->width:I

    .line 192
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->width:I

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 193
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 194
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 196
    .end local v0    # "animatorY":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1, v6}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->taskFullScreen(Z)V

    .line 197
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->vSensity:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->vSetAngle:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mX8AiAerialPhotographNextUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_heading_lock_update:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->setTitle(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->btnOk:Landroid/widget/Button;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lines_point_action_update:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public openUi()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 125
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->isShow:Z

    .line 126
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 127
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_ai_aerial_photograph_excute_layout:I

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->handleView:Landroid/view/View;

    .line 128
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 129
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->v_x8_head_lock_next:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->nextRootView:Landroid/view/View;

    .line 130
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->x8_head_lock_next_blank:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->blank:Landroid/view/View;

    .line 131
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_change_angle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgChangeAngle:Landroid/widget/ImageView;

    .line 132
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_lock_bg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgLockBg:Landroid/widget/ImageView;

    .line 133
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_lock_angle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgLockAngle:Landroid/widget/ImageView;

    .line 134
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgLockBg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_head_lock_bg:I

    invoke-static {v3, v4}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgLockAngle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_head_lock_arrow:I

    invoke-static {v3, v4}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->btnOk:Landroid/widget/Button;

    .line 137
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rl_aerail_sensity:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->vSensity:Landroid/view/View;

    .line 138
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rl_head_lock_setangle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->vSetAngle:Landroid/view/View;

    .line 139
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_edit:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgEdit:Landroid/widget/ImageView;

    .line 141
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->flagSmall:Landroid/view/View;

    .line 142
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_task_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->tvFlag:Landroid/widget/TextView;

    .line 143
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_lock_angle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->tvAngle:Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_heading_lock_tip3:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->prex:Ljava/lang/String;

    .line 148
    const/high16 v0, 0x42700000    # 60.0f

    .line 149
    .local v0, "angle":F
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->tvAngle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->prex:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgLockAngle:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 152
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;->onAerialGraphRunning()V

    .line 153
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgChangeAngle:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->btnOk:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgEdit:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    invoke-direct {v2, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mX8AiAerialPhotographNextUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;

    .line 160
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 162
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 2
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 224
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getYawTrip(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 235
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AerialGraphListener;

    .line 75
    return-void
.end method

.method public setSensity()V
    .locals 4

    .prologue
    .line 316
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mX8AiAerialPhotographNextUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->getBrakingSensity()I

    move-result v0

    .line 317
    .local v0, "braking":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mX8AiAerialPhotographNextUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiAerialPhotographNextUi;->getYawSensity()I

    move-result v1

    .line 318
    .local v1, "yaw":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$5;

    invoke-direct {v3, p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;I)V

    invoke-virtual {v2, v3, v0, v0}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setBrakeSens(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;II)V

    .line 327
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v3, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$6;

    invoke-direct {v3, p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;I)V

    invoke-virtual {v2, v3, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setYawSensitivity(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 337
    return-void
.end method

.method public setTypeEnable()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$4;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setEnableAerailShot(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 313
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 245
    const-string v1, ""

    .line 246
    .local v1, "t":Ljava/lang/String;
    const-string v0, ""

    .line 247
    .local v0, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fixedwing_exite_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_aerail_graph_exite_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 250
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 251
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 6
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 295
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getDeviceAngle()F

    move-result v0

    .line 296
    .local v0, "angle":F
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->tvAngle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->prex:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->imgLockAngle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 298
    return-void
.end method

.method public taskExit()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->onTaskComplete()V

    .line 255
    return-void
.end method
