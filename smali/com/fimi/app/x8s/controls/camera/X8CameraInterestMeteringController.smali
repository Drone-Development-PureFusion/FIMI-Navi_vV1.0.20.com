.class public Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;
.super Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;
.source "X8CameraInterestMeteringController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DELAYED_TIME:I

.field private final MSG_LOCK_EV:I

.field private final MSG_METERING:I

.field private cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private interestMeteringIndex:I

.field private isLockEv:Z

.field private leftX:I

.field private parentView:Landroid/view/View;

.field private topY:I

.field private x8IvInterestMetering:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/interfaces/AbsX8MenuBoxControllers;-><init>(Landroid/view/View;)V

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->MSG_METERING:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->MSG_LOCK_EV:I

    .line 114
    const/16 v0, 0x1388

    iput v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->DELAYED_TIME:I

    .line 115
    new-instance v0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController$1;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->handler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public defaultVal()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public getIvInterestMeteringVisibility()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public initActions()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 54
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_rl_interest_merering:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->parentView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->parentView:Landroid/view/View;

    sget v1, Lcom/fimi/app/x8s/R$id;->x8_iv_interest_metering:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 36
    .local v0, "id":I
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_iv_interest_metering:I

    if-ne v0, v1, :cond_0

    .line 37
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->isLockEv:Z

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->isLockEv:Z

    .line 40
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->interestMeteringIndex:I

    add-int/lit8 v3, v3, 0x18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/controller/CameraManager;->setInterestMetering(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_camera_interest_metering_pressed:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    iput-boolean v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->isLockEv:Z

    .line 45
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setCameraManager(Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 0
    .param p1, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    .line 31
    return-void
.end method

.method public setImageViewXY(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/16 v8, 0x1388

    const/16 v2, 0xdc

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 72
    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->isLockEv:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 74
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/fimi/kernel/utils/AbViewUtil;->xyToBox(Landroid/content/Context;FF)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->interestMeteringIndex:I

    .line 78
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->cameraManager:Lcom/fimi/x8sdk/controller/CameraManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->interestMeteringIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/fimi/x8sdk/controller/CameraManager;->setInterestMetering(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->leftX:I

    .line 85
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->leftX:I

    if-ge v1, v3, :cond_1

    .line 86
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->leftX:I

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-nez v1, :cond_4

    :goto_2
    div-int/lit8 v1, v2, 0x2

    int-to-float v1, v1

    sub-float v1, p2, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->topY:I

    .line 90
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->topY:I

    if-ge v1, v2, :cond_2

    .line 91
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->topY:I

    .line 94
    :cond_2
    iget v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->topY:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 95
    iget v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->leftX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 96
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 99
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_camera_interest_metering:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    goto/16 :goto_1

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    goto :goto_2
.end method

.method public setIvInterestMeteringVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->x8IvInterestMetering:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    return-void
.end method
