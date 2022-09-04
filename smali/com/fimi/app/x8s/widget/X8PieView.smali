.class public Lcom/fimi/app/x8s/widget/X8PieView;
.super Landroid/view/View;
.source "X8PieView.java"


# instance fields
.field private centerX:I

.field private centerY:I

.field private circleWidth:F

.field private colors:[I

.field private dataPaint:Landroid/graphics/Paint;

.field private dataTextBound:Landroid/graphics/Rect;

.field private dataTextColor:I

.field private dataTextSize:F

.field private mArcPaint:Landroid/graphics/Paint;

.field private names:[Ljava/lang/String;

.field private numbers:[I

.field private radius:F

.field private random:Ljava/util/Random;

.field private rectF:Landroid/graphics/RectF;

.field private sum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextBound:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->random:Ljava/util/Random;

    .line 78
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextSize:F

    .line 83
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextColor:I

    .line 88
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->circleWidth:F

    .line 94
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->init()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/app/x8s/widget/X8PieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextBound:Landroid/graphics/Rect;

    .line 71
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->random:Ljava/util/Random;

    .line 78
    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextSize:F

    .line 83
    const/high16 v1, -0x10000

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextColor:I

    .line 88
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->circleWidth:F

    .line 103
    sget-object v1, Lcom/fimi/app/x8s/R$styleable;->PieView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/app/x8s/R$styleable;->PieView_dataTextSize:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextSize:F

    .line 105
    sget v1, Lcom/fimi/app/x8s/R$styleable;->PieView_circleWidth:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->circleWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->circleWidth:F

    .line 106
    sget v1, Lcom/fimi/app/x8s/R$styleable;->PieView_dataTextColor:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextColor:I

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->init()V

    .line 109
    return-void
.end method

.method private calculateAndDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->numbers:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->numbers:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    return-void

    .line 172
    :cond_1
    const/4 v8, 0x0

    .line 177
    .local v8, "startAngle":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->numbers:[I

    array-length v0, v0

    if-ge v5, v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->numbers:[I

    aget v0, v0, v5

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->sum:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 180
    .local v7, "percent":F
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->numbers:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_2

    .line 181
    rsub-int v0, v8, 0x168

    int-to-float v3, v0

    .line 186
    .local v3, "angle":F
    :goto_1
    int-to-float v2, v8

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->colors:[I

    aget v4, v0, v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8PieView;->drawArc(Landroid/graphics/Canvas;FFII)V

    .line 187
    int-to-float v0, v8

    add-float/2addr v0, v3

    float-to-int v8, v0

    .line 190
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->numbers:[I

    aget v0, v0, v5

    if-gtz v0, :cond_3

    .line 177
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    .end local v3    # "angle":F
    :cond_2
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, v7

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v3, v0

    .restart local v3    # "angle":F
    goto :goto_1

    .line 194
    :cond_3
    add-int/lit8 v0, v8, 0x5a

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v3, v1

    sub-float v6, v0, v1

    .line 195
    .local v6, "arcCenterDegree":F
    invoke-direct {p0, v6}, Lcom/fimi/app/x8s/widget/X8PieView;->calculatePosition(F)[F

    .line 196
    invoke-direct {p0, p1, v5, v7}, Lcom/fimi/app/x8s/widget/X8PieView;->drawData(Landroid/graphics/Canvas;IF)V

    goto :goto_2
.end method

.method private calculatePosition(F)[F
    .locals 10
    .param p1, "degree"    # F

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    iput v5, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    .line 211
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    float-to-double v8, v5

    mul-double/2addr v6, v8

    double-to-float v3, v6

    .line 214
    .local v3, "x":F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    float-to-double v8, v5

    mul-double/2addr v6, v8

    double-to-float v4, v6

    .line 217
    .local v4, "y":F
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerX:I

    int-to-float v5, v5

    add-float v1, v5, v3

    .line 218
    .local v1, "startX":F
    iget v5, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerY:I

    int-to-float v5, v5

    sub-float v2, v5, v4

    .line 220
    .local v2, "startY":F
    const/4 v5, 0x2

    new-array v0, v5, [F

    .line 221
    .local v0, "position":[F
    const/4 v5, 0x0

    aput v1, v0, v5

    .line 222
    const/4 v5, 0x1

    aput v2, v0, v5

    .line 223
    return-object v0
.end method

.method private drawArc(Landroid/graphics/Canvas;FFII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startAngle"    # F
    .param p3, "angle"    # F
    .param p4, "color"    # I
    .param p5, "index"    # I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    mul-int/lit8 v0, p5, 0x8

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    .line 298
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    .line 303
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    sub-float v2, p2, v6

    add-float v3, p3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8PieView;->mArcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 304
    return-void
.end method

.method private drawData(Landroid/graphics/Canvas;IF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I
    .param p3, "percent"    # F

    .prologue
    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v1, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    const v4, 0x3f99999a    # 1.2f

    const v3, 0x3f19999a    # 0.6f

    .line 235
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 236
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 237
    .local v6, "path":Landroid/graphics/Path;
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 243
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->names:[Ljava/lang/String;

    aget-object v2, v0, p2

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v1, v7

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    .line 244
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v1, v4

    sub-float v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8PieView;->drawPieValue(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    .line 264
    .end local v6    # "path":Landroid/graphics/Path;
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 246
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 247
    .restart local v6    # "path":Landroid/graphics/Path;
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->names:[Ljava/lang/String;

    aget-object v2, v0, p2

    const/high16 v0, -0x40400000    # -1.5f

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8PieView;->drawPieValue(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto :goto_0

    .line 254
    .end local v6    # "path":Landroid/graphics/Path;
    :cond_2
    if-nez p2, :cond_0

    .line 255
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 256
    .restart local v6    # "path":Landroid/graphics/Path;
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 259
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v0, v5

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 262
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->names:[Ljava/lang/String;

    aget-object v2, v0, p2

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    mul-float/2addr v0, v7

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8PieView;->drawPieValue(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_0
.end method

.method private drawPieValue(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "percent"    # F

    .prologue
    const/4 v6, 0x0

    .line 268
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextBound:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, v6, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 270
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextBound:Landroid/graphics/Rect;

    .line 271
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p3, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextBound:Landroid/graphics/Rect;

    .line 272
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, p4

    const/high16 v4, 0x41a00000    # 20.0f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    .line 270
    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 276
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.0"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "df":Ljava/text/DecimalFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, p5

    float-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "percentString":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextBound:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v6, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 281
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p3, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, p4

    const/high16 v4, 0x41f00000    # 30.0f

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->mArcPaint:Landroid/graphics/Paint;

    .line 116
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->mArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->circleWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->dataTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    return-void
.end method

.method private randomColor()I
    .locals 5

    .prologue
    const/16 v4, 0x100

    .line 310
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8PieView;->random:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 311
    .local v2, "red":I
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8PieView;->random:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 312
    .local v1, "green":I
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8PieView;->random:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 313
    .local v0, "blue":I
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8PieView;->calculateAndDraw(Landroid/graphics/Canvas;)V

    .line 162
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, -0x80000000

    .line 129
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 131
    .local v3, "measureWidthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 132
    .local v1, "measureHeightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 133
    .local v2, "measureWidthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 134
    .local v0, "measureHeightMode":I
    if-ne v2, v4, :cond_1

    if-ne v0, v4, :cond_1

    .line 136
    invoke-virtual {p0, v3, v1}, Lcom/fimi/app/x8s/widget/X8PieView;->setMeasuredDimension(II)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    if-ne v2, v4, :cond_2

    .line 138
    invoke-virtual {p0, v3, v1}, Lcom/fimi/app/x8s/widget/X8PieView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 139
    :cond_2
    if-ne v0, v4, :cond_0

    .line 140
    invoke-virtual {p0, v3, v1}, Lcom/fimi/app/x8s/widget/X8PieView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 147
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerX:I

    .line 148
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerY:I

    .line 150
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8PieView;->centerY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8PieView;->radius:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8PieView;->rectF:Landroid/graphics/RectF;

    .line 156
    return-void
.end method

.method public setData([I[Ljava/lang/String;)V
    .locals 3
    .param p1, "numbers"    # [I
    .param p2, "names"    # [Ljava/lang/String;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    array-length v1, p1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    .line 330
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->numbers:[I

    .line 331
    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8PieView;->names:[Ljava/lang/String;

    .line 332
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->colors:[I

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->numbers:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 335
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->sum:I

    aget v2, p1, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->sum:I

    .line 337
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8PieView;->colors:[I

    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->randomColor()I

    move-result v2

    aput v2, v1, v0

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8PieView;->invalidate()V

    goto :goto_0
.end method
