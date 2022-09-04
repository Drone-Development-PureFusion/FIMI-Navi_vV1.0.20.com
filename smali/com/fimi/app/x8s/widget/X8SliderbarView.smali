.class public Lcom/fimi/app/x8s/widget/X8SliderbarView;
.super Landroid/view/View;
.source "X8SliderbarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8SliderbarView$OnScaleViewChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleView"


# instance fields
.field private MAX_VALUE:I

.field private MIN_VALUE:I

.field private currentX:F

.field private duration:I

.field private isDrag:Z

.field private isInit:Z

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMaxRoundPaint:Landroid/graphics/Paint;

.field private mMinRoundPaint:Landroid/graphics/Paint;

.field private mOnScaleViewChangeListener:Lcom/fimi/app/x8s/widget/X8SliderbarView$OnScaleViewChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mRoundBmp:Landroid/graphics/Bitmap;

.field private mScaleTextPaint:Landroid/graphics/Paint;

.field private radius:F

.field refreshCount:I

.field private refreshProgress:Z

.field private scaleCount:I

.field private scaleHeight:F

.field private scaleOneWidth:F

.field private scaleStrokeWidth:F

.field private scaleTextSize:F

.field private scaleX:F

.field private scaleY:F

.field private tranX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    .line 26
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleHeight:F

    .line 27
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    .line 28
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleStrokeWidth:F

    .line 29
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleTextSize:F

    .line 31
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleX:F

    .line 32
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleY:F

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->duration:I

    .line 34
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    .line 35
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->tranX:F

    .line 36
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshCount:I

    .line 37
    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->isDrag:Z

    .line 40
    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->isInit:Z

    .line 41
    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshProgress:Z

    .line 54
    const/16 v0, 0x14

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    .line 55
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x4089999a    # 4.3f

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleHeight:F

    .line 56
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleStrokeWidth:F

    .line 57
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleTextSize:F

    .line 58
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->radius:F

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleStrokeWidth:F

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#dedede"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mScaleTextPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mScaleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mScaleTextPaint:Landroid/graphics/Paint;

    const-string v1, "#ff4c31"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mScaleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mScaleTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mMaxRoundPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mMaxRoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mMinRoundPaint:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mMinRoundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mMinRoundPaint:Landroid/graphics/Paint;

    const-string v1, "#ff4c31"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mLinePaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleStrokeWidth:F

    sub-float/2addr v1, v4

    div-float/2addr v1, v4

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mLinePaint:Landroid/graphics/Paint;

    const-string v1, "#ff4c31"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->duration:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshCount:I

    .line 84
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->MAX_VALUE:I

    .line 85
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->MIN_VALUE:I

    .line 87
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_img_sliderbar_round:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mRoundBmp:Landroid/graphics/Bitmap;

    .line 88
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 92
    .local v0, "density":F
    mul-float v1, p1, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method

.method private drawScale(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    int-to-float v0, v0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    sub-float v3, v0, v3

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    return-void
.end method


# virtual methods
.method public calculationProgress(F)V
    .locals 4
    .param p1, "x"    # F

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 196
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 197
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    div-float/2addr v2, v3

    add-float/2addr p1, v2

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v0, p1, v2

    .line 202
    .local v0, "calculationX":F
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    div-float v2, v0, v2

    float-to-int v1, v2

    .line 203
    .local v1, "progress":I
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mProgress:I

    .line 204
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mOnScaleViewChangeListener:Lcom/fimi/app/x8s/widget/X8SliderbarView$OnScaleViewChangeListener;

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mOnScaleViewChangeListener:Lcom/fimi/app/x8s/widget/X8SliderbarView$OnScaleViewChangeListener;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mProgress:I

    invoke-interface {v2, v3}, Lcom/fimi/app/x8s/widget/X8SliderbarView$OnScaleViewChangeListener;->onProgressChanged(I)V

    .line 207
    :cond_0
    return-void

    .line 199
    .end local v0    # "calculationX":F
    .end local v1    # "progress":I
    :cond_1
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    goto :goto_0
.end method

.method public getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 8
    .param p1, "mPaint"    # Landroid/graphics/Paint;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "iSum":F
    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 142
    .local v2, "len":I
    new-array v3, v2, [F

    .line 143
    .local v3, "widths":[F
    invoke-virtual {p1, p2, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 146
    float-to-double v4, v1

    aget v6, v3, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    .end local v2    # "len":I
    .end local v3    # "widths":[F
    :cond_0
    float-to-int v4, v1

    return v4
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshProgress:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshProgress:Z

    .line 110
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mProgress:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    .line 112
    :cond_0
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->drawScale(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->radius:F

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mMinRoundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 115
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->radius:F

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mMaxRoundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mRoundBmp:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mRoundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mRoundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mMaxRoundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->calculationProgress(F)V

    .line 118
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mProgress:I

    if-lez v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mScaleTextPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mProgress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mRoundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mScaleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    :goto_0
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->isDrag:Z

    if-eqz v0, :cond_2

    .line 124
    const-string v0, "ScaleView"

    const-string v1, "onDraw: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->invalidate()V

    .line 129
    :goto_1
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mScaleTextPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mProgress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mRoundBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mScaleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refresh()V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 98
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->isInit:Z

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->isInit:Z

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getMeasuredWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    .line 103
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v1, 0x14

    const/high16 v4, 0x40000000    # 2.0f

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return v6

    .line 159
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->tranlateX(FF)V

    goto :goto_0

    .line 162
    :pswitch_1
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshCount:I

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    .line 170
    :goto_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->isDrag:Z

    if-nez v0, :cond_0

    .line 171
    iput-boolean v6, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->isDrag:Z

    .line 172
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->invalidate()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    goto :goto_1

    .line 177
    :pswitch_2
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshCount:I

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    .line 185
    :goto_2
    iput-boolean v5, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->isDrag:Z

    goto/16 :goto_0

    .line 180
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    goto :goto_2

    .line 183
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    goto :goto_2

    .line 188
    :pswitch_3
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshCount:I

    .line 189
    iput-boolean v5, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->isDrag:Z

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshCount:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->duration:I

    if-lt v0, v1, :cond_0

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshCount:I

    .line 224
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->tranX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    .line 225
    const-string v0, "ScaleView"

    const-string v1, "refresh: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->invalidate()V

    goto :goto_0
.end method

.method public setOnScaleViewChangeListener(Lcom/fimi/app/x8s/widget/X8SliderbarView$OnScaleViewChangeListener;)V
    .locals 0
    .param p1, "onScaleViewChangeListener"    # Lcom/fimi/app/x8s/widget/X8SliderbarView$OnScaleViewChangeListener;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mOnScaleViewChangeListener:Lcom/fimi/app/x8s/widget/X8SliderbarView$OnScaleViewChangeListener;

    .line 235
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshProgress:Z

    .line 239
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->MAX_VALUE:I

    if-le p1, v0, :cond_0

    .line 240
    iget p1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->MAX_VALUE:I

    .line 242
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->MIN_VALUE:I

    if-ge p1, v0, :cond_1

    .line 243
    iget p1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->MIN_VALUE:I

    .line 246
    :cond_1
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->mProgress:I

    .line 247
    const-string v0, "ScaleView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleOneWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->invalidate()V

    .line 249
    return-void
.end method

.method public tranlateX(FF)V
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 212
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleX:F

    .line 213
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleY:F

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refreshCount:I

    .line 215
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->scaleX:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->currentX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->duration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SliderbarView;->tranX:F

    .line 216
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SliderbarView;->refresh()V

    .line 217
    return-void
.end method
