.class public Lcom/fimi/app/x8s/widget/RcRollerView;
.super Landroid/view/View;
.source "RcRollerView.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bottom:I

.field private final leftDown:I

.field private final leftUp:I

.field private final maxValue:I

.field private paint:Landroid/graphics/Paint;

.field private right:I

.field private rollerType:I

.field private totalH:I

.field private totalW:I

.field private xfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    iput v1, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->leftUp:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->leftDown:I

    .line 31
    iput v1, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->rollerType:I

    .line 32
    const/16 v0, 0x200

    iput v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->maxValue:I

    .line 36
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/RcRollerView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput v3, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->leftUp:I

    .line 30
    const/4 v2, 0x1

    iput v2, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->leftDown:I

    .line 31
    iput v3, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->rollerType:I

    .line 32
    const/16 v2, 0x200

    iput v2, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->maxValue:I

    .line 41
    sget-object v2, Lcom/fimi/app/x8s/R$styleable;->rollerView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v2, Lcom/fimi/app/x8s/R$styleable;->rollerView_viewType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->rollerType:I

    .line 43
    sget v2, Lcom/fimi/app/x8s/R$styleable;->rollerView_rollerSrc:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 44
    .local v1, "rollerSrc":I
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RcRollerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    .line 45
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/RcRollerView;->init()V

    .line 46
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 53
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 54
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->xfermode:Landroid/graphics/PorterDuffXfermode;

    .line 55
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->right:I

    .line 117
    iput v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bottom:I

    .line 118
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RcRollerView;->invalidate()V

    .line 119
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->totalW:I

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->totalH:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v8

    .line 65
    .local v8, "sc":I
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->xfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->rollerType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 69
    new-instance v7, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bottom:I

    int-to-float v2, v2

    invoke-direct {v7, v1, v1, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 70
    .local v7, "rectF":Landroid/graphics/RectF;
    const/high16 v0, 0x420c0000    # 35.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 71
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 80
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 81
    return-void

    .line 73
    .end local v7    # "rectF":Landroid/graphics/RectF;
    :cond_0
    new-instance v7, Landroid/graphics/RectF;

    iget v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bottom:I

    int-to-float v2, v2

    invoke-direct {v7, v1, v1, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    .restart local v7    # "rectF":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 123
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 125
    .local v4, "wSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 126
    .local v5, "wSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 127
    .local v0, "hSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 129
    .local v1, "hSpecSize":I
    move v3, v5

    .line 130
    .local v3, "resultWidth":I
    move v2, v1

    .line 132
    .local v2, "resultHeight":I
    if-ne v4, v6, :cond_1

    if-ne v0, v6, :cond_1

    .line 133
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 134
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 143
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/fimi/app/x8s/widget/RcRollerView;->setMeasuredDimension(II)V

    .line 144
    return-void

    .line 135
    :cond_1
    if-ne v4, v6, :cond_2

    .line 136
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 137
    move v2, v1

    goto :goto_0

    .line 138
    :cond_2
    if-ne v0, v6, :cond_0

    .line 139
    move v3, v5

    .line 140
    iget-object v6, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 86
    iput p1, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->totalW:I

    .line 87
    iput p2, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->totalH:I

    .line 88
    return-void
.end method

.method public upRollerValue(I)V
    .locals 4
    .param p1, "rollerValue"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 91
    iget v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->rollerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 92
    if-gt p1, v3, :cond_0

    .line 93
    iput v2, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bottom:I

    .line 94
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RcRollerView;->postInvalidate()V

    .line 96
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bottom:I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->right:I

    .line 98
    iget v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bottom:I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x200

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bottom:I

    .line 99
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RcRollerView;->postInvalidate()V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->rollerType:I

    if-nez v0, :cond_1

    .line 102
    if-gt p1, v3, :cond_3

    .line 103
    iput v2, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->right:I

    .line 104
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RcRollerView;->postInvalidate()V

    .line 106
    :cond_3
    iget v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->right:I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bottom:I

    .line 108
    iget v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->right:I

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x200

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/RcRollerView;->right:I

    .line 109
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RcRollerView;->postInvalidate()V

    goto :goto_0
.end method
