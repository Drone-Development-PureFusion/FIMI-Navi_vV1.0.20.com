.class public Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiHeadLockExcuteController.java"

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

.field private imgLockAngle:Landroid/widget/ImageView;

.field private imgLockBg:Landroid/widget/ImageView;

.field private isNextShow:Z

.field protected isShow:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

.field private mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

.field private nextRootView:Landroid/view/View;

.field private prex:Ljava/lang/String;

.field private tvAngle:Landroid/widget/TextView;

.field private tvFlag:Landroid/widget/TextView;

.field protected width:I


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 44
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->width:I

    .line 73
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->nextRootView:Landroid/view/View;

    return-object v0
.end method

.method private closeFixedwing()V
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->closeUi()V

    .line 255
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;->onAiHeadLockBackClick()V

    .line 258
    :cond_0
    return-void
.end method

.method private onTaskComplete()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 239
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->closeFixedwing()V

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;->onAiHeadLockComplete(Z)V

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public cancleByModeChange()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->onTaskComplete()V

    .line 225
    return-void
.end method

.method public closeNextUi()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 181
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->blank:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->isNextShow:Z

    if-eqz v1, :cond_0

    .line 183
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->isNextShow:Z

    .line 184
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->width:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 185
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 186
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 187
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1, v6}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->taskFullScreen(Z)V

    .line 197
    return-void
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->isShow:Z

    .line 161
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 162
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
    .line 204
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->isShow:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 107
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->showExitDialog()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->img_change_angle:I

    if-ne v0, v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->openNextUi()V

    goto :goto_0

    .line 111
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_head_lock_next_blank:I

    if-ne v0, v1, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->closeNextUi()V

    goto :goto_0

    .line 113
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    if-ne v0, v1, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->updateHead()V

    goto :goto_0

    .line 115
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->tvFlag:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 117
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->tvFlag:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_5
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->tvFlag:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 229
    if-nez p1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->ononDroneDisconnectedTaskComplete()V

    .line 234
    :cond_0
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
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->setTypeEnable()V

    .line 69
    return-void
.end method

.method public ononDroneDisconnectedTaskComplete()V
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 247
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->closeFixedwing()V

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;->onAiHeadLockComplete(Z)V

    .line 251
    :cond_0
    return-void
.end method

.method public openNextUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->isNextShow:Z

    if-nez v1, :cond_0

    .line 169
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->isNextShow:Z

    .line 170
    sget v1, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->width:I

    .line 172
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->width:I

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 173
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 177
    .end local v0    # "animatorY":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1, v6}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->taskFullScreen(Z)V

    .line 178
    return-void
.end method

.method public openUi()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 126
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->isShow:Z

    .line 127
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 128
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_ai_head_lock_excute_layout:I

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->handleView:Landroid/view/View;

    .line 129
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 130
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->v_x8_head_lock_next:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->nextRootView:Landroid/view/View;

    .line 131
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->x8_head_lock_next_blank:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->blank:Landroid/view/View;

    .line 132
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_change_angle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->imgChangeAngle:Landroid/widget/ImageView;

    .line 133
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_lock_bg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->imgLockBg:Landroid/widget/ImageView;

    .line 134
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_lock_angle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->imgLockAngle:Landroid/widget/ImageView;

    .line 135
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->imgLockBg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_head_lock_bg:I

    invoke-static {v3, v4}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->imgLockAngle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_img_head_lock_arrow:I

    invoke-static {v3, v4}, Lcom/fimi/app/x8s/tools/ImageUtils;->getBitmapByPath(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->flagSmall:Landroid/view/View;

    .line 139
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_task_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->tvFlag:Landroid/widget/TextView;

    .line 141
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;->onAiHeadLockRunning()V

    .line 142
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->imgChangeAngle:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->btn_ai_follow_confirm_ok:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->btnOk:Landroid/widget/Button;

    .line 146
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->btnOk:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_lock_angle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->tvAngle:Landroid/widget/TextView;

    .line 150
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_heading_lock_tip3:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->prex:Ljava/lang/String;

    .line 151
    const/high16 v0, 0x42700000    # 60.0f

    .line 152
    .local v0, "angle":F
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->tvAngle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->prex:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->imgLockAngle:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 154
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 156
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcCtrlManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    .line 201
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiHeadLockListener;

    .line 78
    return-void
.end method

.method public setTypeEnable()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setDisenableHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 278
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 211
    const-string v1, ""

    .line 212
    .local v1, "t":Ljava/lang/String;
    const-string v0, ""

    .line 213
    .local v0, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fixedwing_exite_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_heading_lock_tip5:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 216
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 217
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 6
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getDeviceAngle()F

    move-result v0

    .line 262
    .local v0, "angle":F
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->tvAngle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->prex:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->imgLockAngle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 264
    return-void
.end method

.method public taskExit()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->onTaskComplete()V

    .line 221
    return-void
.end method

.method public updateHead()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->mFcCtrlManager:Lcom/fimi/x8sdk/controller/FcCtrlManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setUpdateHeadingFree(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 292
    return-void
.end method
