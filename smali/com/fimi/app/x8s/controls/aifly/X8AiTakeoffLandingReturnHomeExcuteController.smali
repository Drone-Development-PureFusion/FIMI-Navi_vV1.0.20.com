.class public Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiTakeoffLandingReturnHomeExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# instance fields
.field protected MAX_WIDTH:I

.field private activity:Landroid/app/Activity;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private fcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private flagSmall:Landroid/view/View;

.field private imgBack:Landroid/widget/ImageView;

.field private imgSmall:Landroid/widget/ImageView;

.field protected isShow:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

.field state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

.field private tvTakeLandReturn:Landroid/widget/TextView;

.field private type:I

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "type"    # I

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 30
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->width:I

    .line 35
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiTLRState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    .line 55
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->activity:Landroid/app/Activity;

    .line 56
    iput p3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public cancleByModeChange(I)V
    .locals 1
    .param p1, "taskMode"    # I

    .prologue
    const/4 v0, 0x1

    .line 325
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->onTaskComplete(Z)V

    .line 326
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->isShow:Z

    .line 118
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiTLRState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    .line 120
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 121
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 66
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->isShow:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 85
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiTLRState;->RUNING:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    if-ne v1, v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->showExitDialog()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->tvTakeLandReturn:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->tvTakeLandReturn:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->tvTakeLandReturn:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 266
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiTLRState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    if-eq v0, v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->ononDroneDisconnectedTaskComplete()V

    .line 271
    :cond_0
    return-void
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiTLRState;->RUNING:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->taskExit()V

    .line 51
    :cond_0
    return-void
.end method

.method public onTaskComplete(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->closeUi()V

    .line 277
    const-string v0, ""

    .line 278
    .local v0, "t":Ljava/lang/String;
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 279
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_take_off_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    const/4 p1, 0x0

    .line 294
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

    invoke-interface {v1, v0, p1}, Lcom/fimi/app/x8s/interfaces/IX8TLRListener;->onComplete(Ljava/lang/String;Z)V

    .line 297
    :cond_1
    return-void

    .line 281
    :cond_2
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 282
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_land_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    const/4 p1, 0x0

    goto :goto_0

    .line 284
    :cond_3
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 285
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_home_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    const/4 p1, 0x0

    goto :goto_0

    .line 287
    :cond_4
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 288
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_disconnect_return_home_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    const/4 p1, 0x0

    goto :goto_0

    .line 290
    :cond_5
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 291
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lowpower_return_home_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public ononDroneDisconnectedTaskComplete()V
    .locals 3

    .prologue
    .line 300
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 301
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->closeUi()V

    .line 302
    const-string v0, ""

    .line 303
    .local v0, "t":Ljava/lang/String;
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 304
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_take_off_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/fimi/app/x8s/interfaces/IX8TLRListener;->onComplete(Ljava/lang/String;Z)V

    .line 317
    :cond_1
    return-void

    .line 305
    :cond_2
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 306
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_land_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_3
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 308
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_home_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_4
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 310
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_disconnect_return_home_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_5
    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 312
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lowpower_return_home_complete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public openUi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 100
    iput-boolean v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->isShow:Z

    .line 101
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_takeoff_landing_return_excute_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->handleView:Landroid/view/View;

    .line 103
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 104
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->tv_take_land_return:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->tvTakeLandReturn:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->flagSmall:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_flag_small:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->imgSmall:Landroid/widget/ImageView;

    .line 109
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->showTaskView()V

    .line 112
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 113
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 125
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8TLRListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

    .line 61
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 171
    const-string v1, ""

    .line 172
    .local v1, "t":Ljava/lang/String;
    const-string v0, ""

    .line 173
    .local v0, "m":Ljava/lang/String;
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 174
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_take_off:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_takeland_exit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    :goto_0
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 190
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 192
    return-void

    .line 176
    :cond_1
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 177
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_land_off:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_takeland_exit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_2
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 180
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_home:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_exit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_3
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 183
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_disconnect_return_home:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_exit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_4
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 186
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lowpower_return_home:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_exit:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public showTaskView()V
    .locals 4

    .prologue
    .line 129
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    sget-object v3, Lcom/fimi/app/x8s/enums/X8AiTLRState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    if-ne v2, v3, :cond_2

    .line 130
    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiTLRState;->RUNING:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    .line 131
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8TLRListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8TLRListener;->onRunning()V

    .line 134
    :cond_0
    const-string v1, ""

    .line 135
    .local v1, "t":Ljava/lang/String;
    const/4 v0, 0x0

    .line 136
    .local v0, "res":I
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 137
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_take_off:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_take_off_small:I

    .line 156
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->tvTakeLandReturn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->imgSmall:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    .end local v0    # "res":I
    .end local v1    # "t":Ljava/lang/String;
    :cond_2
    return-void

    .line 139
    .restart local v0    # "res":I
    .restart local v1    # "t":Ljava/lang/String;
    :cond_3
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 140
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_land_off:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 141
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_landing_small:I

    goto :goto_0

    .line 143
    :cond_4
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 144
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_return_home:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_return_small:I

    goto :goto_0

    .line 147
    :cond_5
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 148
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_disconnect_return_home:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_return_small:I

    goto :goto_0

    .line 151
    :cond_6
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 152
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_lowpower_return_home:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    sget v0, Lcom/fimi/app/x8s/R$drawable;->x8_img_return_small:I

    goto :goto_0
.end method

.method public taskExit()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiTLRState;->STOP:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiTLRState;

    .line 196
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->takeOffExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->landExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0

    .line 220
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 221
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiRetureHomeExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0

    .line 235
    :cond_3
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiRetureHomeExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0

    .line 247
    :cond_4
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;->fcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiTakeoffLandingReturnHomeExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiRetureHomeExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    goto :goto_0
.end method
