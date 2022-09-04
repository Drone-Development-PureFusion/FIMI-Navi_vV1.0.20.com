.class public Lcom/fimi/album/widget/MediaDownloadProgressView;
.super Landroid/view/View;
.source "MediaDownloadProgressView.java"


# static fields
.field private static final SECTION_COLORS:[I


# instance fields
.field private backColor:I

.field private currentCount:F

.field private frontColor:I

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private maxCount:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fimi/album/widget/MediaDownloadProgressView;->SECTION_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->frontColor:I

    .line 26
    iput v0, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->backColor:I

    .line 40
    invoke-direct {p0, p1}, Lcom/fimi/album/widget/MediaDownloadProgressView;->initView(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v0, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->frontColor:I

    .line 26
    iput v0, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->backColor:I

    .line 35
    invoke-direct {p0, p1}, Lcom/fimi/album/widget/MediaDownloadProgressView;->initView(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    iput v0, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->frontColor:I

    .line 26
    iput v0, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->backColor:I

    .line 30
    invoke-direct {p0, p1}, Lcom/fimi/album/widget/MediaDownloadProgressView;->initView(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private dipToPx(I)I
    .locals 4
    .param p1, "dip"    # I

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/fimi/album/widget/MediaDownloadProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 74
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float v2, v1, v0

    const/high16 v3, 0x3f000000    # 0.5f

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    return-void
.end method


# virtual methods
.method public getCurrentCount()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->currentCount:F

    return v0
.end method

.method public getMaxCount()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->maxCount:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mHeight:I

    div-int/lit8 v2, v4, 0x2

    .line 53
    .local v2, "round":I
    iget v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->backColor:I

    if-nez v4, :cond_0

    .line 54
    iget-object v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mPaint:Landroid/graphics/Paint;

    const v5, 0x2dffffff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mHeight:I

    int-to-float v5, v5

    invoke-direct {v0, v7, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 61
    .local v0, "rectBg":Landroid/graphics/RectF;
    int-to-float v4, v2

    int-to-float v5, v2

    iget-object v6, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 62
    iget v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->currentCount:F

    iget v5, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->maxCount:F

    div-float v3, v4, v5

    .line 63
    .local v3, "section":F
    new-instance v1, Landroid/graphics/RectF;

    iget v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mHeight:I

    int-to-float v5, v5

    invoke-direct {v1, v7, v7, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 64
    .local v1, "rectProgressBg":Landroid/graphics/RectF;
    iget v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->frontColor:I

    if-nez v4, :cond_1

    .line 65
    iget-object v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mPaint:Landroid/graphics/Paint;

    const v5, 0x70ffffff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    :goto_1
    int-to-float v4, v2

    int-to-float v5, v2

    iget-object v6, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 70
    return-void

    .line 58
    .end local v0    # "rectBg":Landroid/graphics/RectF;
    .end local v1    # "rectProgressBg":Landroid/graphics/RectF;
    .end local v3    # "section":F
    :cond_0
    iget-object v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->backColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 67
    .restart local v0    # "rectBg":Landroid/graphics/RectF;
    .restart local v1    # "rectProgressBg":Landroid/graphics/RectF;
    .restart local v3    # "section":F
    :cond_1
    iget-object v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->frontColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, -0x80000000

    .line 114
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 115
    .local v2, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 116
    .local v3, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 117
    .local v0, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 118
    .local v1, "heightSpecSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_2

    .line 120
    :cond_0
    iput v3, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mWidth:I

    .line 124
    :goto_0
    if-eq v0, v5, :cond_1

    if-nez v0, :cond_3

    .line 126
    :cond_1
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/fimi/album/widget/MediaDownloadProgressView;->dipToPx(I)I

    move-result v4

    iput v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mHeight:I

    .line 130
    :goto_1
    iget v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mWidth:I

    iget v5, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mHeight:I

    invoke-virtual {p0, v4, v5}, Lcom/fimi/album/widget/MediaDownloadProgressView;->setMeasuredDimension(II)V

    .line 131
    return-void

    .line 122
    :cond_2
    const/4 v4, 0x0

    iput v4, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mWidth:I

    goto :goto_0

    .line 128
    :cond_3
    iput v1, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->mHeight:I

    goto :goto_1
.end method

.method public setBackColor(I)V
    .locals 0
    .param p1, "backColor"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->backColor:I

    .line 110
    return-void
.end method

.method public setCurrentCount(F)V
    .locals 1
    .param p1, "currentCount"    # F

    .prologue
    .line 92
    iget v0, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->maxCount:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->maxCount:F

    .end local p1    # "currentCount":F
    :cond_0
    iput p1, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->currentCount:F

    .line 93
    invoke-virtual {p0}, Lcom/fimi/album/widget/MediaDownloadProgressView;->invalidate()V

    .line 94
    return-void
.end method

.method public setFrontColor(I)V
    .locals 0
    .param p1, "frontColor"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->frontColor:I

    .line 106
    return-void
.end method

.method public setMaxCount(F)V
    .locals 0
    .param p1, "maxCount"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/fimi/album/widget/MediaDownloadProgressView;->maxCount:F

    .line 84
    return-void
.end method
