.class public Lcom/fimi/app/x8s/widget/X8Camera9GridView;
.super Landroid/view/View;
.source "X8Camera9GridView.java"


# instance fields
.field private indexStartX:I

.field private indexStartY:I

.field private paint:Landroid/graphics/Paint;

.field private screenHeight:F

.field private screenWidth:F

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->type:I

    .line 37
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->initPaint()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->type:I

    .line 51
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->initPaint()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->type:I

    .line 46
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->initPaint()V

    .line 47
    return-void
.end method

.method private initPaint()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->type:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->indexStartY:I

    int-to-float v2, v0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenWidth:F

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->indexStartY:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->indexStartY:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenWidth:F

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->indexStartY:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->indexStartX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->indexStartX:I

    int-to-float v5, v0

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenHeight:F

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->indexStartX:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->indexStartX:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenHeight:F

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 78
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenWidth:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenHeight:F

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 79
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenWidth:F

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenHeight:F

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 80
    invoke-static {}, Lcom/fimi/kernel/Constants;->isFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenWidth:F

    div-float v3, v0, v8

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenWidth:F

    div-float v5, v0, v8

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenHeight:F

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenHeight:F

    div-float v2, v0, v8

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenWidth:F

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenHeight:F

    div-float v4, v0, v8

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v1, 0x40400000    # 3.0f

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 92
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 93
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenWidth:F

    .line 94
    int-to-float v0, p2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenHeight:F

    .line 95
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->indexStartX:I

    .line 96
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->screenHeight:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->indexStartY:I

    .line 99
    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->type:I

    .line 30
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8Camera9GridView;->postInvalidate()V

    .line 31
    return-void
.end method
