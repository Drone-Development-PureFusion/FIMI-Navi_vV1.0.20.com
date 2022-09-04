.class public Lcom/fimi/app/x8s/widget/X8RulerView;
.super Landroid/view/View;
.source "X8RulerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;
    }
.end annotation


# instance fields
.field private curScaleValue:F

.field private endBmp:Landroid/graphics/Bitmap;

.field private firstInit:Z

.field private fixScale:F

.field private height:I

.field private isEnable:Z

.field lastMoveX:F

.field private mMaximumVelocity:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private maxRuler:Landroid/graphics/Bitmap;

.field private max_ruler_len:F

.field private minRuler:Landroid/graphics/Bitmap;

.field private min_ruler_len:F

.field moveX:F

.field private paint:Landroid/graphics/Paint;

.field private pointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field preTime:F

.field private resultBmp:Landroid/graphics/Bitmap;

.field private rulerHeight:I

.field rulerListener:Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;

.field private rulerTopGap:I

.field private scaleGap:I

.field private scaleNum:I

.field tempX:F

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private width:I

.field xVelocity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    const/16 v0, 0x32

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    .line 43
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerTopGap:I

    .line 47
    const/16 v0, 0xe

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleGap:I

    .line 51
    const/16 v0, 0x3c

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleNum:I

    .line 64
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->firstInit:Z

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->curScaleValue:F

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    .line 351
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->isEnable:Z

    .line 75
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8RulerView;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/16 v0, 0x32

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    .line 43
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerTopGap:I

    .line 47
    const/16 v0, 0xe

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleGap:I

    .line 51
    const/16 v0, 0x3c

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleNum:I

    .line 64
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->firstInit:Z

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->curScaleValue:F

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    .line 351
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->isEnable:Z

    .line 80
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8RulerView;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/16 v0, 0x32

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    .line 43
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerTopGap:I

    .line 47
    const/16 v0, 0xe

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleGap:I

    .line 51
    const/16 v0, 0x3c

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleNum:I

    .line 64
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->firstInit:Z

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->curScaleValue:F

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    .line 351
    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->isEnable:Z

    .line 85
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8RulerView;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8RulerView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8RulerView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/widget/X8RulerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8RulerView;

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->width:I

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/widget/X8RulerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8RulerView;

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->fixScale:F

    return v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/widget/X8RulerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8RulerView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->checkRulerValue()V

    return-void
.end method

.method static synthetic access$400(Lcom/fimi/app/x8s/widget/X8RulerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8RulerView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->recycleVelocity()V

    return-void
.end method

.method private autoVelocityScroll(I)V
    .locals 4
    .param p1, "xVelocity"    # I

    .prologue
    .line 249
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/fimi/app/x8s/widget/X8RulerView$1;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/widget/X8RulerView$1;-><init>(Lcom/fimi/app/x8s/widget/X8RulerView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 276
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/fimi/app/x8s/widget/X8RulerView$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/widget/X8RulerView$2;-><init>(Lcom/fimi/app/x8s/widget/X8RulerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 255
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkRulerValue()V
    .locals 8

    .prologue
    .line 287
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 288
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 289
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_4

    .line 290
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 291
    .local v5, "preValue":F
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 292
    .local v4, "nextValue":F
    cmpl-float v6, v5, v4

    if-lez v6, :cond_1

    move v2, v5

    .line 293
    .local v2, "maxValue":F
    :goto_1
    cmpg-float v6, v5, v4

    if-gez v6, :cond_2

    move v3, v5

    .line 294
    .local v3, "minValue":F
    :goto_2
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    cmpl-float v6, v6, v3

    if-ltz v6, :cond_5

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_5

    .line 295
    iget v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 296
    iput v5, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    .line 300
    :goto_3
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->curScaleValue:F

    .line 301
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerListener:Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;

    if-eqz v6, :cond_0

    .line 302
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerListener:Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->curScaleValue:F

    invoke-interface {v6, v7}, Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;->updateRuler(F)V

    .line 315
    .end local v2    # "maxValue":F
    .end local v3    # "minValue":F
    .end local v4    # "nextValue":F
    .end local v5    # "preValue":F
    :cond_0
    :goto_4
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->invalidate()V

    .line 316
    return-void

    .restart local v4    # "nextValue":F
    .restart local v5    # "preValue":F
    :cond_1
    move v2, v4

    .line 292
    goto :goto_1

    .restart local v2    # "maxValue":F
    :cond_2
    move v3, v4

    .line 293
    goto :goto_2

    .line 298
    .restart local v3    # "minValue":F
    :cond_3
    iput v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    goto :goto_3

    .line 306
    .end local v2    # "maxValue":F
    .end local v3    # "minValue":F
    .end local v4    # "nextValue":F
    .end local v5    # "preValue":F
    :cond_4
    add-int/lit8 v6, v1, -0x1

    if-ne v0, v6, :cond_5

    .line 307
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    .line 308
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->curScaleValue:F

    .line 309
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerListener:Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;

    if-eqz v6, :cond_0

    .line 310
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerListener:Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->curScaleValue:F

    invoke-interface {v6, v7}, Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;->updateRuler(F)V

    goto :goto_4

    .line 288
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ev_max_value:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->maxRuler:Landroid/graphics/Bitmap;

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ev_min_value:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->minRuler:Landroid/graphics/Bitmap;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ev_result_value:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->resultBmp:Landroid/graphics/Bitmap;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_ev_end_icon:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->endBmp:Landroid/graphics/Bitmap;

    .line 172
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->paint:Landroid/graphics/Paint;

    .line 173
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->minRuler:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->min_ruler_len:F

    .line 174
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->maxRuler:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->max_ruler_len:F

    .line 175
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->maxRuler:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    .line 176
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 177
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mMaximumVelocity:I

    .line 178
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 179
    return-void
.end method

.method private keep2point(F)F
    .locals 4
    .param p1, "value"    # F

    .prologue
    .line 163
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 164
    .local v0, "b":Ljava/math/BigDecimal;
    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    return v1
.end method

.method private obtainVelocityTracker(Landroid/view/MotionEvent;)Landroid/view/VelocityTracker;
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 229
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private recycleVelocity()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->resultBmp:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->width:I

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->resultBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 92
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    .line 93
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->fixScale:F

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    .line 95
    :cond_0
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v5, :cond_3

    .line 97
    if-ge v0, v5, :cond_2

    .line 98
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->minRuler:Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->min_ruler_len:F

    mul-float/2addr v2, v3

    int-to-float v3, v0

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->max_ruler_len:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->height:I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 99
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->maxRuler:Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->min_ruler_len:F

    mul-float/2addr v2, v3

    int-to-float v3, v0

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->max_ruler_len:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->height:I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->minRuler:Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->min_ruler_len:F

    mul-float/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->max_ruler_len:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->height:I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 96
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_2
    if-ne v0, v5, :cond_1

    .line 103
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->endBmp:Landroid/graphics/Bitmap;

    mul-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->min_ruler_len:F

    mul-float/2addr v2, v3

    int-to-float v3, v0

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->max_ruler_len:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->height:I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 107
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 112
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 113
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 114
    .local v1, "heightModule":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 115
    .local v2, "heightSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 117
    .local v13, "widthSize":I
    sparse-switch v1, :sswitch_data_0

    .line 126
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->getPaddingLeft()I

    move-result v14

    add-int/2addr v14, v13

    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->width:I

    .line 127
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->width:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleGap:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleNum:I

    move/from16 v16, v0

    mul-int v15, v15, v16

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->fixScale:F

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    if-gtz v14, :cond_2

    .line 129
    const/high16 v8, -0x3fc00000    # -3.0f

    .line 130
    .local v8, "keyValue":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v14, 0x6

    if-gt v3, v14, :cond_2

    .line 131
    const/4 v14, 0x6

    if-ge v3, v14, :cond_1

    .line 132
    mul-int/lit8 v14, v3, 0x2

    int-to-float v14, v14

    const v15, 0x3e99999a    # 0.3f

    mul-float/2addr v14, v15

    int-to-float v15, v3

    const v16, 0x3ecccccd    # 0.4f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    add-float/2addr v14, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/fimi/app/x8s/widget/X8RulerView;->keep2point(F)F

    move-result v9

    .line 133
    .local v9, "value":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleGap:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleNum:I

    mul-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->fixScale:F

    add-float/2addr v14, v15

    mul-int/lit8 v15, v3, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->min_ruler_len:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->max_ruler_len:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    sub-float v4, v14, v15

    .line 134
    .local v4, "key":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v14, v14, 0x1

    int-to-float v14, v14

    const v15, 0x3e99999a    # 0.3f

    mul-float/2addr v14, v15

    add-float/2addr v14, v8

    int-to-float v15, v3

    const v16, 0x3ecccccd    # 0.4f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/fimi/app/x8s/widget/X8RulerView;->keep2point(F)F

    move-result v10

    .line 137
    .local v10, "value3":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleGap:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleNum:I

    mul-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->fixScale:F

    add-float/2addr v14, v15

    mul-int/lit8 v15, v3, 0x2

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->min_ruler_len:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->max_ruler_len:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    sub-float v5, v14, v15

    .line 138
    .local v5, "key3":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    mul-int/lit8 v14, v3, 0x2

    add-int/lit8 v14, v14, 0x1

    int-to-float v14, v14

    const v15, 0x3e99999a    # 0.3f

    mul-float/2addr v14, v15

    add-float/2addr v14, v8

    add-int/lit8 v15, v3, 0x1

    int-to-float v15, v15

    const v16, 0x3ecccccd    # 0.4f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/fimi/app/x8s/widget/X8RulerView;->keep2point(F)F

    move-result v11

    .line 141
    .local v11, "value4":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleGap:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleNum:I

    mul-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->fixScale:F

    add-float/2addr v14, v15

    mul-int/lit8 v15, v3, 0x2

    add-int/lit8 v15, v15, 0x1

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->min_ruler_len:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->max_ruler_len:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    sub-float v6, v14, v15

    .line 142
    .local v6, "key4":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v4    # "key":F
    .end local v5    # "key3":F
    .end local v6    # "key4":F
    .end local v9    # "value":F
    .end local v10    # "value3":F
    .end local v11    # "value4":F
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 119
    .end local v3    # "i":I
    .end local v8    # "keyValue":F
    :sswitch_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerTopGap:I

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->getPaddingTop()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->height:I

    goto/16 :goto_0

    .line 123
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->getPaddingTop()I

    move-result v14

    add-int/2addr v14, v2

    invoke-virtual/range {p0 .. p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->getPaddingBottom()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->height:I

    goto/16 :goto_0

    .line 147
    .restart local v3    # "i":I
    .restart local v8    # "keyValue":F
    :cond_1
    const/4 v14, 0x6

    if-ne v3, v14, :cond_0

    .line 148
    mul-int/lit8 v14, v3, 0x2

    int-to-float v14, v14

    const v15, 0x3e99999a    # 0.3f

    mul-float/2addr v14, v15

    add-float/2addr v14, v8

    int-to-float v15, v3

    const v16, 0x3ecccccd    # 0.4f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/fimi/app/x8s/widget/X8RulerView;->keep2point(F)F

    move-result v12

    .line 149
    .local v12, "value5":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleGap:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->scaleNum:I

    mul-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->fixScale:F

    add-float/2addr v14, v15

    mul-int/lit8 v15, v3, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->min_ruler_len:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    int-to-float v0, v3

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->max_ruler_len:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    sub-float v7, v14, v15

    .line 150
    .local v7, "key5":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->points:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 155
    .end local v3    # "i":I
    .end local v7    # "key5":F
    .end local v8    # "keyValue":F
    .end local v12    # "value5":F
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->width:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->height:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/fimi/app/x8s/widget/X8RulerView;->setMeasuredDimension(II)V

    .line 156
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->firstInit:Z

    if-eqz v14, :cond_3

    .line 157
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->firstInit:Z

    .line 158
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fimi/app/x8s/widget/X8RulerView;->curScaleValue:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/fimi/app/x8s/widget/X8RulerView;->setCurScaleValue(F)V

    .line 160
    :cond_3
    return-void

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 185
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->isEnable:Z

    if-nez v1, :cond_0

    .line 213
    :goto_0
    return v4

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8RulerView;->obtainVelocityTracker(Landroid/view/MotionEvent;)Landroid/view/VelocityTracker;

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 192
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->tempX:F

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->checkRulerValue()V

    goto :goto_0

    .line 200
    :pswitch_2
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->tempX:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41f00000    # 30.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    .line 201
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 202
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->width:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    .line 206
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 207
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v1, 0x1f4

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 208
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->xVelocity:I

    .line 209
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->xVelocity:I

    invoke-direct {p0, v1}, Lcom/fimi/app/x8s/widget/X8RulerView;->autoVelocityScroll(I)V

    .line 210
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->invalidate()V

    goto :goto_0

    .line 203
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_3
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->width:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->fixScale:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 204
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->width:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->fixScale:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    goto :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCurScaleValue(F)V
    .locals 5
    .param p1, "curScaleValue"    # F

    .prologue
    .line 326
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->curScaleValue:F

    .line 327
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->pointMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 329
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 331
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 332
    .local v3, "value":F
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 333
    .local v2, "key":F
    cmpl-float v4, v3, p1

    if-nez v4, :cond_2

    .line 334
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    .line 335
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->invalidate()V

    goto :goto_0
.end method

.method public setEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->isEnable:Z

    .line 355
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 356
    if-nez p1, :cond_1

    .line 357
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->white_30:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->invalidate()V

    .line 362
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8RulerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setRulerListener(Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;)V
    .locals 0
    .param p1, "rulerListener"    # Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8RulerView;->rulerListener:Lcom/fimi/app/x8s/widget/X8RulerView$RulerListener;

    .line 345
    return-void
.end method
