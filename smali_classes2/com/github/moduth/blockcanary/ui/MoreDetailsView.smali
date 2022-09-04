.class public final Lcom/github/moduth/blockcanary/ui/MoreDetailsView;
.super Landroid/view/View;
.source "MoreDetailsView.java"


# instance fields
.field private mFolding:Z

.field private final mIconPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->mIconPaint:Landroid/graphics/Paint;

    .line 27
    iput-boolean v1, p0, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->mFolding:Z

    .line 32
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->mIconPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/github/moduth/blockcanary/ui/BlockCanaryUi;->dpToPixel(FLandroid/content/res/Resources;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    iget-object v0, p0, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->mIconPaint:Landroid/graphics/Paint;

    const v1, -0x7b593b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->getWidth()I

    move-result v11

    .line 38
    .local v11, "width":I
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->getHeight()I

    move-result v10

    .line 39
    .local v10, "height":I
    div-int/lit8 v8, v10, 0x2

    .line 40
    .local v8, "halfHeight":I
    div-int/lit8 v9, v11, 0x2

    .line 42
    .local v9, "halfWidth":I
    int-to-float v2, v8

    int-to-float v3, v11

    int-to-float v4, v8

    iget-object v5, p0, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->mIconPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    iget-boolean v0, p0, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->mFolding:Z

    if-eqz v0, :cond_0

    .line 44
    int-to-float v3, v9

    int-to-float v5, v9

    int-to-float v6, v10

    iget-object v7, p0, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->mIconPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    :cond_0
    return-void
.end method

.method public setFolding(Z)V
    .locals 1
    .param p1, "folding"    # Z

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->mFolding:Z

    if-eq p1, v0, :cond_0

    .line 50
    iput-boolean p1, p0, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->mFolding:Z

    .line 51
    invoke-virtual {p0}, Lcom/github/moduth/blockcanary/ui/MoreDetailsView;->invalidate()V

    .line 53
    :cond_0
    return-void
.end method
