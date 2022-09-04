.class public Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;
.super Landroid/view/View;
.source "X8MainReturnTimeTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "X8MainReturnTimeTextVie"


# instance fields
.field private fontSize:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintStrock:Landroid/graphics/Paint;

.field private mPaintText:Landroid/graphics/Paint;

.field private mStrTime:Ljava/lang/String;

.field private percent:I

.field private photoWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->photoWidth:F

    .line 21
    iput v3, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->fontSize:F

    .line 25
    const-string v1, "00:00"

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mStrTime:Ljava/lang/String;

    .line 26
    const/16 v1, 0x64

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->percent:I

    .line 30
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/R$styleable;->X8MainReturnTimeTextView:[I

    invoke-virtual {v1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainReturnTimeTextView_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->photoWidth:F

    .line 32
    sget v1, Lcom/fimi/app/x8s/R$styleable;->X8MainReturnTimeTextView_fontSize:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->fontSize:F

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->x8_main_return_time_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintStrock:Landroid/graphics/Paint;

    .line 40
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintStrock:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->black_70:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintStrock:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintStrock:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintStrock:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintText:Landroid/graphics/Paint;

    .line 47
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->fontSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 48
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$color;->black_70:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 57
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->percent:I

    mul-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x64

    .line 58
    .local v4, "position":I
    int-to-float v8, v4

    iget v9, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->photoWidth:F

    add-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->photoWidth:F

    sub-float/2addr v8, v9

    float-to-int v4, v8

    .line 61
    :cond_0
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v8, v4

    int-to-float v9, v4

    iget v10, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->photoWidth:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v5, v8, v12, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    .local v5, "rect":Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v11, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 63
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v8, v4

    int-to-float v9, v4

    iget v10, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->photoWidth:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    invoke-direct {v6, v8, v12, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 64
    .local v6, "rect1":Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintStrock:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v11, v11, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 67
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintText:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mStrTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 68
    .local v7, "textWidth":F
    int-to-float v8, v4

    iget v9, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->photoWidth:F

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    div-float v9, v7, v11

    sub-float v0, v8, v9

    .line 69
    .local v0, "Textx":F
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 70
    .local v3, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v2, v8, v9

    .line 71
    .local v2, "dy":F
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v1, v8, v2

    .line 72
    .local v1, "Texty":F
    iget-object v8, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mStrTime:Ljava/lang/String;

    iget-object v9, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method public setPercent(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 76
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->percent:I

    if-ne v0, p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->percent:I

    .line 80
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->invalidate()V

    goto :goto_0
.end method

.method public setStrTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "strTime"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->mStrTime:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8MainReturnTimeTextView;->invalidate()V

    .line 91
    return-void
.end method
