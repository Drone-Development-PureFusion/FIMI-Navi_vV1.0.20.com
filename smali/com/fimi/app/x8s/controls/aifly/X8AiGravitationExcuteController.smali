.class public Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8AiController;
.source "X8AiGravitationExcuteController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;
.implements Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;
    }
.end annotation


# instance fields
.field private final activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

.field private dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

.field private imgBack:Landroid/widget/ImageView;

.field private imgNext:Landroid/widget/ImageView;

.field protected isNextShow:Z

.field private mAckAiGetGravitationPrameter:Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

.field private mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private mCurrentLatitude:D

.field private mCurrentLongitude:D

.field private mExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;

.field private mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

.field private mFlagBottom:Landroid/view/View;

.field private mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

.field private mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

.field private mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

.field private mImSuroundBg:Landroid/widget/ImageView;

.field private mNextBlank:Landroid/view/View;

.field private mNextContent:Landroid/view/View;

.field private tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;)V
    .locals 1
    .param p1, "activity"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "state"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;-><init>(Landroid/view/View;)V

    .line 52
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .line 347
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    .line 62
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .line 63
    iput-object p3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;
    .param p1, "x1"    # Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->drawEllipse(Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;)Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;
    .param p1, "x1"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->closeNextUi(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mImSuroundBg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->exitGravitation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->onTaskComplete(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;)Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;
    .param p1, "x1"    # Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mAckAiGetGravitationPrameter:Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->drawIdleEllipse()V

    return-void
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mNextContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mNextBlank:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFlagBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    return-object v0
.end method

.method private closeGravitationing()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$5;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 345
    return-void
.end method

.method private closeNextUi(Z)V
    .locals 6
    .param p1, "isImgNextShow"    # Z

    .prologue
    const/4 v5, 0x0

    .line 246
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->isNextShow:Z

    if-eqz v1, :cond_0

    .line 247
    iput-boolean v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->isNextShow:Z

    .line 248
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mNextContent:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->width:I

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 249
    .local v0, "translationRight":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 250
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 251
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    .end local v0    # "translationRight":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method private drawEllipse(Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;)V
    .locals 8
    .param p1, "prameter"    # Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    .line 207
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->getStartLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->getStartLng()D

    move-result-wide v4

    .line 208
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->getHorizontalDistance()I

    move-result v0

    int-to-float v6, v0

    .line 209
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->getStartNosePoint()F

    move-result v0

    const/high16 v7, 0x42b40000    # 90.0f

    add-float/2addr v7, v0

    .line 207
    invoke-virtual/range {v1 .. v7}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->addEllipse(DDFF)V

    .line 210
    return-void
.end method

.method private drawIdleEllipse()V
    .locals 8

    .prologue
    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    .line 239
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v2

    .line 240
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mAckAiGetGravitationPrameter:Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    .line 241
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->getHorizontalDistance()I

    move-result v0

    int-to-float v6, v0

    .line 242
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->getDeviceAngle()F

    move-result v0

    const/high16 v7, 0x42b40000    # 90.0f

    add-float/2addr v7, v0

    .line 239
    invoke-virtual/range {v1 .. v7}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->addEllipse(DDFF)V

    .line 243
    return-void
.end method

.method private exitGravitation()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$8;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setGravitationExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 414
    return-void
.end method

.method private getIdleParmeter()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$3;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getGravitationPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 235
    return-void
.end method

.method private getRunningDisconnectParmeter()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$2;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getGravitationPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 223
    return-void
.end method

.method private getRunningParmeter()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$1;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->getGravitationPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 204
    return-void
.end method

.method private onTaskComplete(Z)V
    .locals 1
    .param p1, "showText"    # Z

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->closeGravitationing()V

    .line 325
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;->onAiGravitationComplete(Z)V

    .line 328
    :cond_0
    return-void
.end method

.method private openNextUi()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x8

    .line 273
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mNextBlank:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mNextContent:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFlagBottom:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mImSuroundBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mNextContent:Landroid/view/View;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;->init(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;)V

    .line 280
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mIX8NextViewListener:Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;->setsetListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 281
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->isNextShow:Z

    if-nez v1, :cond_0

    .line 282
    iput-boolean v6, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->isNextShow:Z

    .line 283
    sget v1, Lcom/fimi/app/x8s/X8Application;->ANIMATION_WIDTH:I

    iput v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->width:I

    .line 285
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mNextContent:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->width:I

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 286
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 289
    .end local v0    # "animatorY":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancleByModeChange(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 312
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->closeGravitationing()V

    .line 313
    if-ne p1, v0, :cond_1

    .line 314
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->onTaskComplete(Z)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;->onAiGravitationInterrupt()V

    goto :goto_0
.end method

.method public closeUi()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->closeUi()V

    .line 144
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->closeUi()V

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->clearSurroundMarker()V

    .line 146
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->resetMapEvent()V

    .line 147
    return-void
.end method

.method public defaultVal()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public initActions()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mNextBlank:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_0
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 81
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
    .line 420
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 152
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_gravitation_follow_next:I

    if-ne v0, v1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->openNextUi()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sget v1, Lcom/fimi/app/x8s/R$id;->img_ai_gravitation_follow_back:I

    if-ne v0, v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    sget-object v2, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    if-ne v1, v2, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->showExitDialog()V

    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->closeGravitationing()V

    goto :goto_0

    .line 160
    :cond_3
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_main_ai_gravitation_next_blank:I

    if-ne v0, v1, :cond_0

    .line 161
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->closeNextUi(Z)V

    .line 162
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mImSuroundBg:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClickBackKey()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onDroneConnected(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->onDroneConnected(Z)V

    .line 186
    if-nez p1, :cond_0

    .line 187
    sget-object v0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING_DISCONNECT:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .line 188
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->closeUi()V

    .line 193
    :cond_0
    return-void
.end method

.method public onLeft()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$7;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 400
    return-void
.end method

.method public onTouchActionDown()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public onTouchActionUp()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgNext:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 435
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->setAiVcOpen()V

    .line 436
    return-void
.end method

.method public onTracking()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public openUi()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 105
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 106
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_ai_gravitation_layout:I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->rootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    .line 107
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_gravitation_follow_next:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgNext:Landroid/widget/ImageView;

    .line 108
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_gravitation_follow_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgBack:Landroid/widget/ImageView;

    .line 109
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->v_gravitation_content_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    .line 110
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_main_ai_gravitation_next_blank:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mNextBlank:Landroid/view/View;

    .line 111
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->x8_main_ai_gravitation_next_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mNextContent:Landroid/view/View;

    .line 112
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->rl_flag_gravitation_bottom:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFlagBottom:Landroid/view/View;

    .line 113
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    sget v2, Lcom/fimi/app/x8s/R$id;->img_ai_gravitation_suround_bg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mImSuroundBg:Landroid/widget/ImageView;

    .line 114
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_gravitation_tip4:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setTipText(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 116
    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;

    invoke-direct {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mExcuteConfirmModule:Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiGravitationExcuteConfirmModule;

    .line 118
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mImSuroundBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->onLocationGravitTrailEvent()V

    .line 126
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->setOnAiTrackControllerListener(Lcom/fimi/app/x8s/controls/X8AiTrackController$OnAiTrackControllerListener;)V

    .line 127
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmX8AiTrackController()Lcom/fimi/app/x8s/controls/X8AiTrackController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/X8AiTrackController;->openUi()V

    .line 128
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    sget-object v2, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    if-ne v1, v2, :cond_2

    .line 129
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v1, v5}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;->onAiGravitaionRunning()V

    .line 132
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->getRunningParmeter()V

    .line 137
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->initActions()V

    .line 138
    invoke-super {p0}, Lcom/fimi/app/x8s/interfaces/AbsX8AiController;->openUi()V

    .line 139
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mImSuroundBg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    sget-object v2, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->imgNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->tvTip:Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setAiVcOpen()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    new-instance v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$9;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$9;-><init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcManager;->setAiVcOpen(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 454
    return-void
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mCameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 68
    return-void
.end method

.method public setFcManager(Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 0
    .param p1, "mFcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mFcManager:Lcom/fimi/x8sdk/controller/FcManager;

    .line 72
    return-void
.end method

.method public setGoEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 425
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mIX8AiGravitationExcuteControllerListener:Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    .line 76
    return-void
.end method

.method public showExitDialog()V
    .locals 4

    .prologue
    .line 293
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    if-nez v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_gravitation_dialog_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_fly_gravitation_dialog_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 298
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->dialog:Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 299
    return-void
.end method

.method public showSportState(Lcom/fimi/x8sdk/dataparser/AutoFcSportState;)V
    .locals 4
    .param p1, "state"    # Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    if-ne v0, v1, :cond_0

    .line 169
    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mCurrentLongitude:D

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mCurrentLatitude:D

    .line 170
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mCurrentLatitude:D

    .line 172
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mCurrentLongitude:D

    .line 173
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->getIdleParmeter()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mGravitationState:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING_DISCONNECT:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    if-ne v0, v1, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->getRunningDisconnectParmeter()V

    .line 181
    :cond_1
    return-void
.end method

.method public switchMapVideo(Z)V
    .locals 2
    .param p1, "sightFlag"    # Z

    .prologue
    .line 303
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->handleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->mImSuroundBg:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
