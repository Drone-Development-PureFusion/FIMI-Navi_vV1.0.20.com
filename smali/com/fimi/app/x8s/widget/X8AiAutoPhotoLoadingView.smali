.class public Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;
.super Landroid/widget/RelativeLayout;
.source "X8AiAutoPhotoLoadingView.java"


# static fields
.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PLAYING:I = 0x1

.field public static final STATE_STOP:I = 0x3


# instance fields
.field private imgLoading:Landroid/widget/ImageView;

.field private objectAnimator:Landroid/animation/ObjectAnimator;

.field public state:I

.field private x8TvLoadingHint:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->initView()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->initView()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->initView()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->state:I

    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->imgLoading:Landroid/widget/ImageView;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    .line 53
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 57
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public initView()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_ai_auto_photo_loading_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    sget v0, Lcom/fimi/app/x8s/R$id;->img_loading:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->imgLoading:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_tv_loading_hint:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->x8TvLoadingHint:Landroid/widget/TextView;

    .line 46
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->init()V

    .line 47
    return-void
.end method

.method public playLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 60
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 62
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->state:I

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->state:I

    if-ne v0, v3, :cond_2

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->resume()V

    .line 65
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->state:I

    goto :goto_0

    .line 66
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->state:I

    if-ne v0, v2, :cond_0

    .line 68
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->state:I

    goto :goto_0
.end method

.method public setX8TvLoadingHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->x8TvLoadingHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->state:I

    .line 75
    return-void
.end method
