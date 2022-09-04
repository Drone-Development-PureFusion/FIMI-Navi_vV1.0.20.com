.class public Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;
.super Landroid/app/Dialog;
.source "X8IMUCustomCheckingDialog.java"


# instance fields
.field private final STATE_PAUSE:I

.field private final STATE_PLAYING:I

.field private final STATE_STOP:I

.field private keyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private objectAnimator:Landroid/animation/ObjectAnimator;

.field private state:I

.field x8ViewImuCheckingLoading:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    sget v0, Lcom/fimi/app/x8s/R$style;->fimisdk_custom_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->STATE_PLAYING:I

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->STATE_PAUSE:I

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->STATE_STOP:I

    .line 68
    new-instance v0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog$1;-><init>(Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->setCanceledOnTouchOutside(Z)V

    .line 34
    sget v0, Lcom/fimi/app/x8s/R$layout;->x8_imu_view_custom_checking_dialog:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->setContentView(I)V

    .line 35
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_view_imu_checking_loading:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->x8ViewImuCheckingLoading:Landroid/widget/ImageView;

    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->init()V

    .line 37
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->playLoading()V

    .line 38
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 39
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->state:I

    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->x8ViewImuCheckingLoading:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->objectAnimator:Landroid/animation/ObjectAnimator;

    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->objectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->objectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 46
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 48
    return-void

    .line 43
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public playLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 51
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 53
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->state:I

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->state:I

    if-ne v0, v3, :cond_2

    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->resume()V

    .line 56
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->state:I

    goto :goto_0

    .line 57
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->state:I

    if-ne v0, v2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    .line 59
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->state:I

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8IMUCustomCheckingDialog;->state:I

    .line 66
    return-void
.end method
