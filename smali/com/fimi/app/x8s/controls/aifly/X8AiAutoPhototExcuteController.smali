.class public Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiAutoPhototExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
.implements Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;
.implements Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhototExcuteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;
    }
.end annotation


# instance fields
.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private blank:Landroid/view/View;

.field private count:I

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private flagSmall:Landroid/view/View;

.field private imgAutoBg:Landroid/widget/ImageView;

.field private imgBack:Landroid/widget/ImageView;

.field private imgCloud:Landroid/widget/ImageView;

.field private imgNext:Landroid/widget/ImageView;

.field protected isNextShow:Z

.field protected isShow:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

.field private mAngle:Landroid/view/View;

.field private mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private mTimeHandler:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;

.field private mX8AiAutoPhotoExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;

.field private nextRootView:Landroid/view/View;

.field private pitchAngle:I

.field private state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

.field private timeSend:I

.field private tvCloud:Landroid/widget/TextView;

.field private tvP2PTip:Landroid/widget/TextView;

.field private tvTime:Landroid/widget/TextView;

.field private tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field private type:I

.field protected width:I


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;I)V
    .locals 2
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "state"    # Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;
    .param p4, "type"    # I

    .prologue
    .line 93
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 40
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->width:I

    .line 53
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    .line 54
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mTimeHandler:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->count:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->timeSend:I

    .line 285
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$2;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 94
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 95
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    .line 96
    iput p4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->type:I

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 33
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->count:I

    return v0
.end method

.method static synthetic access$110(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 33
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->count:I

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->nextRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->flagSmall:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mX8AiAutoPhotoExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method private closeAutoPhoto()V
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->closeUi()V

    .line 459
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;->onAutoPhotoBackClick()V

    .line 462
    :cond_0
    return-void
.end method

.method private onDisconnectTaskComplete()V
    .locals 2

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->closeAutoPhoto()V

    .line 452
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;->onAutoPhotoComplete(Z)V

    .line 455
    :cond_0
    return-void
.end method

.method private onTaskComplete(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->closeAutoPhoto()V

    .line 444
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;->onAutoPhotoComplete(Z)V

    .line 447
    :cond_0
    return-void
.end method


# virtual methods
.method public autoPhototExcute(Z)V
    .locals 2
    .param p1, "isExcute"    # Z

    .prologue
    const/16 v1, 0x8

    .line 381
    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgAutoBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mAngle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 385
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    .line 386
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;->onAutoPhotoRunning()V

    .line 388
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mTimeHandler:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->sendEmptyMessage(I)Z

    .line 389
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->count:I

    .line 390
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->taskExit()V

    goto :goto_0
.end method

.method public cancleByModeChange(I)V
    .locals 1
    .param p1, "taskMode"    # I

    .prologue
    const/4 v0, 0x1

    .line 438
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->onTaskComplete(Z)V

    .line 439
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeIconByNextUi()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 481
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    return-void
.end method

.method public closeNextUi(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/4 v5, 0x0

    .line 261
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->blank:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->isNextShow:Z

    if-eqz v1, :cond_0

    .line 264
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->isNextShow:Z

    .line 265
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->width:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 266
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 267
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 268
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 282
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public closeUi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->isShow:Z

    .line 231
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->closeUi()V

    .line 232
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mTimeHandler:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->removeMessages(I)V

    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mTimeHandler:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$TimeHandler;->removeMessages(I)V

    .line 236
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->setAiVcClose()V

    .line 237
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 238
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    :cond_0
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 102
    return-void
.end method

.method public onChangeGoLocation(FFFFII)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "top"    # F
    .param p4, "bottom"    # F
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 400
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 149
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    if-ne v1, v2, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->showExitDialog()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->closeUi()V

    .line 155
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;->onAutoPhotoBackClick()V

    goto :goto_0

    .line 157
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_next:I

    if-ne v0, v1, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->openNextUi()V

    goto :goto_0

    .line 159
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_main_ai_auto_photo_next_blank:I

    if-ne v0, v1, :cond_4

    .line 160
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->closeNextUi(Z)V

    goto :goto_0

    .line 161
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvP2PTip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 163
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvP2PTip:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_5
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvP2PTip:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 427
    if-nez p1, :cond_1

    .line 429
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->onDisconnectTaskComplete()V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->showGimbalState()V

    .line 432
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->sysAiVcCtrlMode()V

    goto :goto_0
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->stopAutoPhoto()V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->taskExit()V

    goto :goto_0
.end method

.method public onTouchActionDown()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public onTouchActionUp()V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

.method public onTracking()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public openNextUi()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 241
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->closeIconByNextUi()V

    .line 244
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mX8AiAutoPhotoExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->nextRootView:Landroid/view/View;

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->type:I

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->pitchAngle:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;II)V

    .line 245
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mX8AiAutoPhotoExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V

    .line 246
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mX8AiAutoPhotoExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;->setValue()V

    .line 247
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->isNextShow:Z

    if-nez v1, :cond_0

    .line 248
    iput-boolean v7, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->isNextShow:Z

    .line 249
    sget v1, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->width:I

    .line 252
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->width:I

    int-to-float v4, v4

    aput v4, v3, v6

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 253
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 254
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 257
    .end local v0    # "animatorY":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public openUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 172
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->isShow:Z

    .line 174
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_ai_auto_photo_layout:I

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->rootView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    .line 176
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_p2p_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvP2PTip:Landroid/widget/TextView;

    .line 177
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->flagSmall:Landroid/view/View;

    .line 178
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_follow_next:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgNext:Landroid/widget/ImageView;

    .line 181
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 182
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->v_content_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 183
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_auto_photo_bg:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgAutoBg:Landroid/widget/ImageView;

    .line 184
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->rl_angle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mAngle:Landroid/view/View;

    .line 185
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_cloud:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgCloud:Landroid/widget/ImageView;

    .line 186
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->tv_cloud:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvCloud:Landroid/widget/TextView;

    .line 188
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->img_ai_time:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvTime:Landroid/widget/TextView;

    .line 190
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->x8_main_ai_auto_photo_next_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->nextRootView:Landroid/view/View;

    .line 191
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->x8_main_ai_auto_photo_next_blank:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->blank:Landroid/view/View;

    .line 192
    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;

    invoke-direct {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;-><init>()V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mX8AiAutoPhotoExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiAutoPhotoExcuteConfirmModule;

    .line 194
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    sget-object v3, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    if-ne v2, v3, :cond_3

    .line 195
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 196
    iget v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->type:I

    if-nez v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_tip5:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgAutoBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 222
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->setOnAiTrackControllerListener(Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;)V

    .line 223
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->initActions()V

    .line 224
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->openUi()V

    .line 225
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 226
    return-void

    .line 201
    .restart local v1    # "s":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgAutoBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 206
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_tip5:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    .restart local v1    # "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgAutoBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v2, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    goto :goto_1

    .line 213
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    sget-object v3, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    if-ne v2, v3, :cond_0

    .line 214
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgAutoBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->mAngle:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v2, v4}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 218
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    invoke-interface {v2}, Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;->onAutoPhotoRunning()V

    goto :goto_1
.end method

.method public setAiVcClose()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 362
    return-void
.end method

.method public setAiVcNotityFc()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcNotityFc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 376
    return-void
.end method

.method public setGoEnabled(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 404
    if-eqz p1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgNext:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 406
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->setAiVcNotityFc()V

    .line 408
    :cond_0
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8AiAutoPhotoExcuteControllerListener;

    .line 316
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_auto_photo:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_auto_photo_exite:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 142
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 144
    return-void
.end method

.method public showGimbalState()V
    .locals 8

    .prologue
    .line 320
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getGimbalState()Lcom/fimi/x8sdk/modulestate/GimbalState;

    move-result-object v3

    .line 321
    .local v3, "state":Lcom/fimi/x8sdk/modulestate/GimbalState;
    if-nez v3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->handleView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->isShow:Z

    if-eqz v4, :cond_0

    .line 325
    invoke-virtual {v3}, Lcom/fimi/x8sdk/modulestate/GimbalState;->getPitchAngle()I

    move-result v4

    iput v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->pitchAngle:I

    .line 326
    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->pitchAngle:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v0, v4, v6

    .line 327
    .local v0, "angle":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-static {v0, v1, v5}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u00b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "angleStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->tvCloud:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public stopAutoPhoto()V
    .locals 2

    .prologue
    .line 337
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->STOP:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiAutoPhotoExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 348
    return-void
.end method

.method public switchMapVideo(Z)V
    .locals 2
    .param p1, "isVideo"    # Z

    .prologue
    .line 470
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    if-ne v0, v1, :cond_0

    .line 471
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->type:I

    if-nez v0, :cond_0

    .line 472
    if-nez p1, :cond_1

    .line 473
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgAutoBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->imgAutoBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public sysAiVcCtrlMode()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiAutoPhotoState;

    if-ne v0, v1, :cond_0

    .line 487
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->timeSend:I

    if-nez v0, :cond_1

    .line 488
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->timeSend:I

    .line 489
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)V

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_SELFIE:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 495
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;->ordinal()I

    move-result v2

    .line 489
    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcManager;->sysCtrlMode2AiVc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->timeSend:I

    goto :goto_0
.end method

.method public taskExit()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->onTaskComplete(Z)V

    .line 335
    return-void
.end method
