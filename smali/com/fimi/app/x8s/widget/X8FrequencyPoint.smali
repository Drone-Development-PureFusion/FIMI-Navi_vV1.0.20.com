.class public Lcom/fimi/app/x8s/widget/X8FrequencyPoint;
.super Landroid/view/View;
.source "X8FrequencyPoint.java"


# instance fields
.field colorG:I

.field colorR:I

.field colorW:I

.field colorY:I

.field private dashPaint:Landroid/graphics/Paint;

.field lineW:I

.field private mPaint:Landroid/graphics/Paint;

.field pW:I

.field private pencent:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const v0, -0xddedf

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorR:I

    .line 20
    const/16 v0, -0x4600

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorY:I

    .line 21
    const v0, -0xd50100

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorG:I

    .line 22
    const v0, -0x7f000001

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorW:I

    .line 23
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pW:I

    .line 24
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pencent:[I

    .line 28
    return-void

    .line 25
    :array_0
    .array-data 4
        0x5a
        0x32
        0x14
        0x32
        0x5a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const v0, -0xddedf

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorR:I

    .line 20
    const/16 v0, -0x4600

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorY:I

    .line 21
    const v0, -0xd50100

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorG:I

    .line 22
    const v0, -0x7f000001

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorW:I

    .line 23
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pW:I

    .line 24
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pencent:[I

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->dashPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->dashPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->dashPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->dashPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->dashPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorW:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pW:I

    .line 44
    return-void

    .line 25
    nop

    :array_0
    .array-data 4
        0x5a
        0x32
        0x14
        0x32
        0x5a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const v0, -0xddedf

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorR:I

    .line 20
    const/16 v0, -0x4600

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorY:I

    .line 21
    const v0, -0xd50100

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorG:I

    .line 22
    const v0, -0x7f000001

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorW:I

    .line 23
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pW:I

    .line 24
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pencent:[I

    .line 48
    return-void

    .line 25
    :array_0
    .array-data 4
        0x5a
        0x32
        0x14
        0x32
        0x5a
    .end array-data
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 86
    .local v0, "density":F
    mul-float v1, p1, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorW:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 57
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->setLayerType(ILandroid/graphics/Paint;)V

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->dashPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 60
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, v0, v4

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->dashPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 61
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    add-int/lit8 v0, v0, 0x0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float v2, v0, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, v0, v4

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->dashPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v12, v0, v1

    .line 65
    .local v12, "w":I
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    .line 66
    .local v7, "h":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x6

    if-ge v8, v0, :cond_2

    .line 67
    mul-int v0, v12, v8

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pW:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float v9, v0, v1

    .line 68
    .local v9, "l":F
    mul-int v0, v12, v8

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pW:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float v10, v0, v1

    .line 69
    .local v10, "r":F
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pencent:[I

    add-int/lit8 v1, v8, -0x1

    aget v0, v0, v1

    mul-int/2addr v0, v7

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    int-to-float v1, v1

    add-float v11, v0, v1

    .line 70
    .local v11, "t":F
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->lineW:I

    sub-int/2addr v0, v1

    int-to-float v6, v0

    .line 71
    .local v6, "b":F
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pencent:[I

    add-int/lit8 v1, v8, -0x1

    aget v0, v0, v1

    const/16 v1, 0x42

    if-lt v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorG:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v9, v11, v10, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 66
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pencent:[I

    add-int/lit8 v1, v8, -0x1

    aget v0, v0, v1

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorY:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->colorR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 82
    .end local v6    # "b":F
    .end local v9    # "l":F
    .end local v10    # "r":F
    .end local v11    # "t":F
    :cond_2
    return-void

    .line 58
    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public setPercent(I)V
    .locals 2
    .param p1, "p"    # I

    .prologue
    .line 90
    rsub-int/lit8 p1, p1, 0x64

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pencent:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->pencent:[I

    aput p1, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8FrequencyPoint;->postInvalidate()V

    .line 95
    return-void
.end method
