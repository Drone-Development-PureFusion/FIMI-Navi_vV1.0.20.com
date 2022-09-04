.class public final Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;
.super Landroid/view/View;
.source "DisplayConnectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$1;,
        Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;
    }
.end annotation


# static fields
.field private static final clearPaint:Landroid/graphics/Paint;

.field private static final iconPaint:Landroid/graphics/Paint;

.field private static final leakPaint:Landroid/graphics/Paint;

.field private static final rootPaint:Landroid/graphics/Paint;


# instance fields
.field private cache:Landroid/graphics/Bitmap;

.field private type:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->iconPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->rootPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->leakPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->clearPaint:Landroid/graphics/Paint;

    .line 36
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->iconPaint:Landroid/graphics/Paint;

    const v1, -0x454546

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->rootPaint:Landroid/graphics/Paint;

    const v1, -0x7b593b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->leakPaint:Landroid/graphics/Paint;

    const v1, -0x4eaab2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->clearPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->clearPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/github/moduth/blockcanary/ui/BlockCanaryUi;->CLEAR_XFER_MODE:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget-object v0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->NODE:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    iput-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->type:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    .line 54
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->getWidth()I

    move-result v12

    .line 60
    .local v12, "width":I
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->getHeight()I

    move-result v9

    .line 62
    .local v9, "height":I
    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v12, :cond_0

    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v9, :cond_1

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 64
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 68
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    .line 70
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v0, "cacheCanvas":Landroid/graphics/Canvas;
    int-to-float v2, v12

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    .line 73
    .local v1, "halfWidth":F
    int-to-float v2, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 74
    .local v8, "halfHeight":F
    int-to-float v2, v12

    const/high16 v3, 0x40400000    # 3.0f

    div-float v11, v2, v3

    .line 76
    .local v11, "thirdWidth":F
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/github/moduth/blockcanary/ui/BlockCanaryUi;->dpToPixel(FLandroid/content/res/Resources;)F

    move-result v10

    .line 78
    .local v10, "strokeSize":F
    sget-object v2, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    sget-object v2, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->rootPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    sget-object v2, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$1;->$SwitchMap$com$github$moduth$blockcanary$ui$DisplayConnectorView$Type:[I

    iget-object v3, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->type:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    invoke-virtual {v3}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 98
    const/4 v2, 0x0

    sget-object v5, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->iconPaint:Landroid/graphics/Paint;

    move v3, v1

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    sget-object v2, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->leakPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v11, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 103
    .end local v0    # "cacheCanvas":Landroid/graphics/Canvas;
    .end local v1    # "halfWidth":F
    .end local v8    # "halfHeight":F
    .end local v10    # "strokeSize":F
    .end local v11    # "thirdWidth":F
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 104
    return-void

    .line 83
    .restart local v0    # "cacheCanvas":Landroid/graphics/Canvas;
    .restart local v1    # "halfWidth":F
    .restart local v8    # "halfHeight":F
    .restart local v10    # "strokeSize":F
    .restart local v11    # "thirdWidth":F
    :pswitch_0
    const/4 v2, 0x0

    int-to-float v4, v9

    sget-object v5, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->iconPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    sget-object v2, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    sget-object v2, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v11, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 88
    :pswitch_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v10, v2

    sub-float v6, v1, v2

    .line 89
    .local v6, "radiusClear":F
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v12

    sget-object v7, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->rootPaint:Landroid/graphics/Paint;

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 90
    const/4 v2, 0x0

    sget-object v3, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    int-to-float v2, v12

    sget-object v3, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 92
    const/4 v2, 0x0

    sget-object v5, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->rootPaint:Landroid/graphics/Paint;

    move v3, v1

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 93
    int-to-float v4, v9

    sget-object v5, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->iconPaint:Landroid/graphics/Paint;

    move v2, v8

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 94
    sget-object v2, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 95
    sget-object v2, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v11, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setType(Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->type:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    if-eq p1, v0, :cond_1

    .line 108
    iput-object p1, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->type:Lcom/github/moduth/blockcanary/ui/DisplayConnectorView$Type;

    .line 109
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->cache:Landroid/graphics/Bitmap;

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/DisplayConnectorView;->invalidate()V

    .line 115
    :cond_1
    return-void
.end method
