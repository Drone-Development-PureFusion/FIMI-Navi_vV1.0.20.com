.class public Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiD2PExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8MainPitchingAngle$OnProgressListener;
.implements Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
.implements Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;
    }
.end annotation


# instance fields
.field protected MAX_WIDTH:I

.field private activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private blank:Landroid/view/View;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private flagSmall:Landroid/view/View;

.field private imgBack:Landroid/widget/ImageView;

.field private imgNext:Landroid/widget/ImageView;

.field private imgVcToggle:Landroid/widget/ImageView;

.field private isDraw:Z

.field protected isNextShow:Z

.field protected isShow:Z

.field private listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

.field private mAiGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

.field private mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field private mX8AiFollowPoint2PointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

.field private mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

.field private nextRootView:Landroid/view/View;

.field private state:Lcom/fimi/app/x8s/enums/X8AiPointState;

.field private stubPoint2Point:Landroid/view/ViewStub;

.field private timeSend:I

.field private tvP2PTip:Landroid/widget/TextView;

.field private vHeight:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

.field protected width:I


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/enums/X8AiPointState;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "state"    # Lcom/fimi/app/x8s/enums/X8AiPointState;

    .prologue
    .line 124
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 52
    sget v0, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->width:I

    .line 59
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiPointState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiPointState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    .line 62
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mAiGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->timeSend:I

    .line 388
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 125
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 126
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->nextRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->flagSmall:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->vHeight:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/controls/X8MapVideoController;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;)Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mAiGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    return-object p1
.end method

.method static synthetic access$702(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isDraw:Z

    return p1
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->onTaskComplete(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Lcom/fimi/app/x8s/enums/X8AiPointState;)Lcom/fimi/app/x8s/enums/X8AiPointState;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/enums/X8AiPointState;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    return-object p1
.end method

.method private onDroneDisconnectTaskComplete()V
    .locals 2

    .prologue
    .line 434
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->resetCtrlMode()V

    .line 436
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->closeUi()V

    .line 437
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;->onPoint2PointBackClick()V

    .line 439
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;->onPoint2PointComplete(Z)V

    .line 441
    :cond_0
    return-void
.end method

.method private onTaskComplete(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->closeUi()V

    .line 427
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;->onPoint2PointBackClick()V

    .line 429
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;->onPoint2PointComplete(Z)V

    .line 431
    :cond_0
    return-void
.end method


# virtual methods
.method public cancleByModeChange(I)V
    .locals 1
    .param p1, "taskMode"    # I

    .prologue
    const/4 v0, 0x1

    .line 340
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->onTaskComplete(Z)V

    .line 341
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closeIconByNextUi()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 547
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->vHeight:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->setVisibility(I)V

    .line 551
    return-void
.end method

.method public closeNextUi(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/4 v5, 0x0

    .line 287
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->blank:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isNextShow:Z

    if-eqz v1, :cond_0

    .line 290
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isNextShow:Z

    .line 291
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->width:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 292
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 293
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 294
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method public closeUi()V
    .locals 2

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isShow:Z

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->closeUi()V

    .line 253
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiPointState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiPointState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    .line 254
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setmX8AiItemMapListener(Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;)V

    .line 255
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->clearPoint2PointMarker()V

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->resetMapEvent()V

    .line 257
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->setAiVcClose()V

    .line 259
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 260
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public getDeletePosition()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOration()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getPoint()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getAiFollowPoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 356
    return-void
.end method

.method public getRunningPoint()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mAiGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    if-ne v0, v1, :cond_0

    .line 522
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;->GET_POINT:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mAiGetPointState:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$AiGetPointState;

    .line 523
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->getPoint()V

    .line 526
    :cond_0
    return-void
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public initViewStubViews(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 137
    return-void
.end method

.method public isShow()Z
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getCtrlMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 362
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isShow:Z

    goto :goto_0
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
    .line 489
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 156
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    if-ne v0, v1, :cond_3

    .line 157
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiPointState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiPointState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiPointState;->RUNNING2:Lcom/fimi/app/x8s/enums/X8AiPointState;

    if-ne v1, v2, :cond_2

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->showExitDialog()V

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->closeUi()V

    .line 162
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;->onPoint2PointBackClick()V

    goto :goto_0

    .line 165
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_follow_next:I

    if-ne v0, v1, :cond_4

    .line 166
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->getMapPointLatLng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->openNextUi()V

    .line 171
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->getMapPointLatLng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->vHeight:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getRegulationProgress()F

    move-result v2

    iput v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->altitude:F

    .line 172
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->calcDistance()V

    .line 173
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->getMapPointLatLng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->setMapPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    goto :goto_0

    .line 175
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_main_ai_point2point_next_blank:I

    if-ne v0, v1, :cond_5

    .line 176
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->closeNextUi(Z)V

    goto :goto_0

    .line 177
    :cond_5
    sget v1, Lcom/fimi/app/x8s/R$id;->img_vc_targgle:I

    if-ne v0, v1, :cond_7

    .line 178
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_6

    .line 179
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->setAiVcOpen()V

    goto :goto_0

    .line 181
    :cond_6
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->setAiVcClose()V

    goto :goto_0

    .line 183
    :cond_7
    sget v1, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    if-ne v0, v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->tvP2PTip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 185
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->tvP2PTip:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 187
    :cond_8
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->tvP2PTip:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isShow:Z

    if-eqz v0, :cond_0

    .line 415
    if-nez p1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->onDroneDisconnectTaskComplete()V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->sysAiVcCtrlMode()V

    goto :goto_0
.end method

.method public onInterestSizeEnable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 91
    return-void
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onMarkerSelect(ZFLcom/fimi/app/x8s/map/model/MapPointLatLng;Z)V
    .locals 3
    .param p1, "onSelect"    # Z
    .param p2, "altitude"    # F
    .param p3, "mpl"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .param p4, "isClick"    # Z

    .prologue
    const/4 v2, 0x1

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->vHeight:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->vHeight:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->setProcess(F)V

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->vHeight:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onMarkerSizeChange(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onProgressChanage(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->setMarkerViewInfo(F)V

    .line 284
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiPointState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiPointState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiPointState;->RUNNING2:Lcom/fimi/app/x8s/enums/X8AiPointState;

    if-ne v0, v1, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->p2pTaskExite()V

    .line 120
    :cond_1
    return-void
.end method

.method public onRunIndex(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "action"    # I

    .prologue
    .line 102
    return-void
.end method

.method public onTouchActionDown()V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public onTouchActionUp()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public onTracking()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 511
    return-void
.end method

.method public openNextUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 263
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->closeIconByNextUi()V

    .line 266
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mX8AiFollowPoint2PointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->nextRootView:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;->init(Landroid/app/Activity;Landroid/view/View;)V

    .line 267
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mX8AiFollowPoint2PointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mX8AiFollowPoint2PointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 269
    :cond_0
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isNextShow:Z

    if-nez v1, :cond_1

    .line 270
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isNextShow:Z

    .line 271
    sget v1, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->width:I

    .line 274
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->nextRootView:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->width:I

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 275
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 276
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 279
    .end local v0    # "animatorY":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method public openUi()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 194
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isShow:Z

    .line 196
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 197
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_follow_point2point_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->handleView:Landroid/view/View;

    .line 198
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_small:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->flagSmall:Landroid/view/View;

    .line 199
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_next:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgNext:Landroid/widget/ImageView;

    .line 200
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 201
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 202
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_p2p_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->tvP2PTip:Landroid/widget/TextView;

    .line 203
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_pitching_angle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->vHeight:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    .line 204
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_follow_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 205
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_vc_targgle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    .line 206
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 208
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8AiPointState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiPointState;

    if-ne v1, v2, :cond_0

    .line 210
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_follow_select_point:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->setPoint2PointMarkerSelectListener(Lcom/fimi/app/x8s/interfaces/IX8MarkerListener;)V

    .line 215
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->setOnMapClickListener()V

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_main_ai_point2point_next_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->nextRootView:Landroid/view/View;

    .line 227
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->rootView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_main_ai_point2point_next_blank:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->blank:Landroid/view/View;

    .line 228
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

    invoke-direct {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mX8AiFollowPoint2PointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

    .line 229
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->vHeight:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->setOnProgressListener(Lcom/fimi/app/x8s/widget/X8MainPitchingAngle$OnProgressListener;)V

    .line 231
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    new-instance v2, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->setmX8AiItemMapListener(Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;)V

    .line 238
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->setOnAiTrackControllerListener(Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;)V

    .line 241
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->blank:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->flagSmall:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 246
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->setAiVcOpen()V

    .line 219
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->openVcToggle()V

    .line 220
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mTipBgView:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->vHeight:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->setVisibility(I)V

    goto :goto_0
.end method

.method public openVcToggle()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public p2pTaskExite()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiFollowPoint2PointExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 386
    return-void
.end method

.method public setAiVcClose()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$7;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 469
    return-void
.end method

.method public setAiVcNotityFc()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$8;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcNotityFc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 484
    return-void
.end method

.method public setAiVcOpen()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcOpen(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 456
    return-void
.end method

.method public setGoEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 493
    if-eqz p1, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->setAiVcNotityFc()V

    .line 496
    :cond_0
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    .line 132
    return-void
.end method

.method public setMapPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 1
    .param p1, "mapPoint"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mX8AiFollowPoint2PointExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;->setMapPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    .line 314
    return-void
.end method

.method public setMapVideoController(Lcom/fimi/app/x8s/controls/X8MapVideoController;)V
    .locals 0
    .param p1, "mapVideoController"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->mapVideoController:Lcom/fimi/app/x8s/controls/X8MapVideoController;

    .line 318
    return-void
.end method

.method public showAiPointView()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiPointState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiPointState;

    if-ne v0, v1, :cond_0

    .line 326
    sget-object v0, Lcom/fimi/app/x8s/enums/X8AiPointState;->RUNNING2:Lcom/fimi/app/x8s/enums/X8AiPointState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    .line 327
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->listener:Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteConttrollerListener;->onPoint2PointRunning()V

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isDraw:Z

    if-eqz v0, :cond_1

    .line 337
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->getRunningPoint()V

    goto :goto_0
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 366
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_point_to_point:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_p2p_exite:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 371
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 373
    return-void
.end method

.method public switchMapVideo(Z)V
    .locals 2
    .param p1, "isVideo"    # Z

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->isDraw:Z

    if-eqz v0, :cond_0

    .line 538
    if-eqz p1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->imgVcToggle:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public sysAiVcCtrlMode()V
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->state:Lcom/fimi/app/x8s/enums/X8AiPointState;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiPointState;->IDLE:Lcom/fimi/app/x8s/enums/X8AiPointState;

    if-ne v0, v1, :cond_0

    .line 556
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->timeSend:I

    if-nez v0, :cond_1

    .line 557
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->timeSend:I

    .line 558
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getFcManager()Lcom/fimi/x8sdk/controller/FcManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$9;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Task;->VCM_FLY_TO:Lcom/fimi/x8sdk/cmdsenum/X8Task;

    .line 564
    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Task;->ordinal()I

    move-result v2

    .line 558
    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcManager;->sysCtrlMode2AiVc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->timeSend:I

    goto :goto_0
.end method
