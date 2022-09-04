.class public Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;
.super Landroid/view/View;
.source "X8MainPitchingAngle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8MainPitchingAngle$OnProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "X8MainPitchingAngle"


# instance fields
.field private MAX:I

.field private MAXPROGRESS:I

.field private MIN:I

.field private listener:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle$OnProgressListener;

.field private mBgColor:I

.field private mBounds:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mProgressColor:I

.field private mProgressMarginLeft:F

.field private mProgressWidth:F

.field private final mProjectionColor:I

.field private mRadius:F

.field private mTextBgPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;

.field private rectangleColor:I

.field private rectangleHeight:F

.field private rectangleLeft:F

.field private rectangleWidth:F

.field private textColor:I

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/high16 v5, -0x1000000

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPercent:F

    .line 54
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mBounds:Landroid/graphics/Rect;

    .line 178
    const/4 v1, 0x5

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->MIN:I

    .line 179
    const/16 v1, 0x78

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->MAX:I

    .line 180
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->MAX:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->MIN:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->MAXPROGRESS:I

    .line 58
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle:[I

    invoke-virtual {v1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_bg_color:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mBgColor:I

    .line 60
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_progress_projection_color:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProjectionColor:I

    .line 61
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_progress_color:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressColor:I

    .line 62
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_progress_bar_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressWidth:F

    .line 63
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_progress_margin_left:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressMarginLeft:F

    .line 64
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_radius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mRadius:F

    .line 65
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_rectangle_left:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->rectangleLeft:F

    .line 66
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_rectangle_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->rectangleWidth:F

    .line 67
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_rectangle_height:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->rectangleHeight:F

    .line 68
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_rectangle_color:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->rectangleColor:I

    .line 69
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_text_size:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->textSize:F

    .line 70
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainPitchingAngle_text_color:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->textColor:I

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mBgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mTextBgPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mTextBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mTextBgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->rectangleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mTextPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->textSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 82
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->textColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->setLayerType(ILandroid/graphics/Paint;)V

    .line 84
    return-void
.end method

.method private calculProgress(F)V
    .locals 5
    .param p1, "y"    # F

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "progress":F
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 174
    :goto_0
    sub-float v2, v4, v1

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 175
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->setPercent(F)V

    .line 176
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 169
    const/high16 v1, 0x42c80000    # 100.0f

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getHeight()I

    move-result v0

    .line 172
    .local v0, "h":I
    int-to-float v2, v0

    div-float v2, p1, v2

    mul-float v1, v2, v4

    goto :goto_0
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x40a00000    # 5.0f

    const/high16 v10, 0x40400000    # 3.0f

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 98
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mRadius:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressWidth:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressMarginLeft:F

    add-float v1, v4, v5

    .line 99
    .local v1, "left":F
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mBgColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProjectionColor:I

    invoke-virtual {v4, v11, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 101
    const-string v4, "X8MainPitchingAngle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawProgress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v2, Landroid/graphics/RectF;

    div-float v4, v1, v8

    const/high16 v5, 0x41200000    # 10.0f

    div-float v6, v1, v8

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressWidth:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0xa

    int-to-float v7, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 103
    .local v2, "rectF":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v10, v10, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 104
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mRadius:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPercent:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mRadius:F

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 108
    .local v0, "circularY":I
    new-instance v3, Landroid/graphics/RectF;

    div-float v4, v1, v8

    int-to-float v5, v0

    div-float v6, v1, v8

    iget v7, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressWidth:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0xa

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 109
    .local v3, "rectFProgress":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 110
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v10, v10, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 111
    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProjectionColor:I

    invoke-virtual {v4, v11, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 112
    iget v4, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mRadius:F

    div-float/2addr v4, v8

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mProgressMarginLeft:F

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    int-to-float v5, v0

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mRadius:F

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 113
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v13, 0x40400000    # 3.0f

    const/high16 v12, 0x40000000    # 2.0f

    .line 116
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getRegulationProgress()F

    move-result v2

    .line 117
    .local v2, "heightValue":F
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 118
    .local v1, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v8, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v12

    iget v9, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v0, v8, v9

    .line 120
    .local v0, "dy":F
    float-to-int v3, v2

    .line 121
    .local v3, "intHeightValue":I
    int-to-float v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/fimi/app/x8s/tools/X8NumberUtil;->getDistanceNumberString(FIZ)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "text":Ljava/lang/String;
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mTextPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->rectangleLeft:F

    float-to-int v9, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v11, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v5, v9, v10, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 125
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v7, v8

    .line 126
    .local v7, "textWidth":F
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v6, v8

    .line 127
    .local v6, "textHeight":F
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 128
    .local v4, "rectF":Landroid/graphics/RectF;
    iget v8, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->rectangleLeft:F

    iput v8, v4, Landroid/graphics/RectF;->left:F

    .line 129
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    div-float v9, v6, v12

    sub-float/2addr v8, v9

    sub-float/2addr v8, v0

    iput v8, v4, Landroid/graphics/RectF;->top:F

    .line 130
    iget v8, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->rectangleLeft:F

    add-float/2addr v8, v7

    mul-float v9, v12, v0

    add-float/2addr v8, v9

    iput v8, v4, Landroid/graphics/RectF;->right:F

    .line 131
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    div-float v9, v6, v12

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    iput v8, v4, Landroid/graphics/RectF;->bottom:F

    .line 132
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mTextBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v13, v13, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 133
    iget v8, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->rectangleLeft:F

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    div-float v10, v6, v12

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->listener:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle$OnProgressListener;

    if-eqz v8, :cond_0

    .line 137
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->listener:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle$OnProgressListener;

    int-to-float v9, v3

    invoke-interface {v8, v9}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle$OnProgressListener;->onProgressChanage(F)V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public getRegulationProgress()F
    .locals 4

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 182
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPercent:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->MAXPROGRESS:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->MIN:I

    int-to-float v2, v2

    add-float v0, v1, v2

    .line 183
    .local v0, "heightValue":F
    mul-float v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v3

    .line 184
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->drawProgress(Landroid/graphics/Canvas;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->drawText(Landroid/graphics/Canvas;)V

    .line 93
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 156
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->calculProgress(F)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnProgressListener(Lcom/fimi/app/x8s/widget/X8MainPitchingAngle$OnProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/X8MainPitchingAngle$OnProgressListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->listener:Lcom/fimi/app/x8s/widget/X8MainPitchingAngle$OnProgressListener;

    .line 87
    return-void
.end method

.method public setPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 142
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPercent:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->mPercent:F

    .line 146
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->invalidate()V

    goto :goto_0
.end method

.method public setProcess(F)V
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 188
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->MIN:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42e60000    # 115.0f

    div-float v0, v1, v2

    .line 189
    .local v0, "progress":F
    mul-float v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v3

    .line 190
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->setPercent(F)V

    .line 191
    return-void
.end method
