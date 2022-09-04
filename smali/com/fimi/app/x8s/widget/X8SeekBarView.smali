.class public Lcom/fimi/app/x8s/widget/X8SeekBarView;
.super Landroid/view/View;
.source "X8SeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;
    }
.end annotation


# instance fields
.field private bgColor:I

.field private cicleR:F

.field private cicleX:F

.field private cicleY:F

.field private downX:F

.field private downY:F

.field private dpLineH:F

.field private dpMaginW:F

.field private dpR:F

.field private dpThumpW:F

.field private dph:F

.field private endX:F

.field private endY:F

.field private h:I

.field private isInnerClick:Z

.field private lineH:I

.field private listener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

.field private locationX:F

.field private mPaint:Landroid/graphics/Paint;

.field private maginW:F

.field private maxProgress:I

.field private progress:I

.field private progressColor:I

.field private r:F

.field private startX:F

.field private startY:F

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const v1, 0x3faa3d71    # 1.33f

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maxProgress:I

    .line 75
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->w:I

    .line 76
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->h:I

    .line 77
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dph:F

    .line 78
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpMaginW:F

    .line 79
    const v0, 0x417547ae    # 15.33f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpThumpW:F

    .line 87
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpLineH:F

    .line 88
    const v0, 0x3f2ac083    # 0.667f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpR:F

    .line 89
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->r:F

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const v1, 0x3faa3d71    # 1.33f

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maxProgress:I

    .line 75
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->w:I

    .line 76
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->h:I

    .line 77
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dph:F

    .line 78
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpMaginW:F

    .line 79
    const v0, 0x417547ae    # 15.33f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpThumpW:F

    .line 87
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpLineH:F

    .line 88
    const v0, 0x3f2ac083    # 0.667f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpR:F

    .line 89
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->r:F

    .line 97
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->init()V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    const v1, 0x3faa3d71    # 1.33f

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maxProgress:I

    .line 75
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->w:I

    .line 76
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->h:I

    .line 77
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dph:F

    .line 78
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpMaginW:F

    .line 79
    const v0, 0x417547ae    # 15.33f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpThumpW:F

    .line 87
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpLineH:F

    .line 88
    const v0, 0x3f2ac083    # 0.667f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpR:F

    .line 89
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->r:F

    .line 102
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->init()V

    .line 104
    return-void
.end method

.method private fixLocationX()V
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->locationX:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->startX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 245
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->startX:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->locationX:F

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->locationX:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->endX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 247
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->endX:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->locationX:F

    goto :goto_0
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .prologue
    .line 159
    move v0, p0

    .line 160
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 161
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 162
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 171
    :goto_0
    return v0

    .line 164
    :sswitch_0
    move v0, p0

    .line 165
    goto :goto_0

    .line 168
    :sswitch_1
    move v0, v2

    goto :goto_0

    .line 162
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private isInnerMthum(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->w:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->h:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 240
    :cond_0
    return v0
.end method


# virtual methods
.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maxProgress:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->progress:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->mPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->white_15:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->bgColor:I

    .line 110
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$color;->white_60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->progressColor:I

    .line 112
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 116
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->w:I

    if-nez v3, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->w:I

    .line 119
    :cond_0
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->h:I

    if-eqz v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->bgColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maginW:F

    div-float/2addr v3, v7

    iput v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->startX:F

    .line 123
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->w:I

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maginW:F

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->endX:F

    .line 124
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->h:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->lineH:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->startY:F

    .line 125
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->h:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->lineH:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    iput v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->endY:F

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->startX:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->startY:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->endX:F

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->endY:F

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 127
    .local v0, "rf":Landroid/graphics/RectF;
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->r:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->r:F

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 130
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->startX:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->w:I

    int-to-float v4, v4

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maginW:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->progress:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maxProgress:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float v2, v3, v4

    .line 131
    .local v2, "x":F
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->cicleX:F

    .line 132
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->h:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->cicleY:F

    .line 133
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->progressColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->startX:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->startY:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->cicleX:F

    iget v6, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->endY:F

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 135
    .local v1, "rf1":Landroid/graphics/RectF;
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->r:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->r:F

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->cicleX:F

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->cicleY:F

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->cicleR:F

    iget-object v6, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    .end local v0    # "rf":Landroid/graphics/RectF;
    .end local v1    # "rf1":Landroid/graphics/RectF;
    .end local v2    # "x":F
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dph:F

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->h:I

    .line 146
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpMaginW:F

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maginW:F

    .line 147
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpLineH:F

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->lineH:I

    .line 148
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpR:F

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->r:F

    .line 149
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->dpThumpW:F

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->cicleR:F

    .line 150
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->setMeasuredDimension(II)V

    .line 153
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    :goto_0
    return v1

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    move v1, v2

    .line 225
    goto :goto_0

    .line 187
    :pswitch_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 188
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->isInnerMthum(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->isInnerClick:Z

    .line 189
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->isInnerClick:Z

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->listener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->listener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->progress:I

    invoke-interface {v1, p0, v3}, Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;->onStart(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V

    .line 194
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->downX:F

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->downY:F

    goto :goto_1

    .line 199
    :pswitch_1
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->isInnerClick:Z

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->locationX:F

    .line 201
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->fixLocationX()V

    .line 203
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->locationX:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->startX:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->w:I

    int-to-float v3, v3

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maginW:F

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maxProgress:I

    int-to-float v3, v3

    mul-float v0, v1, v3

    .line 204
    .local v0, "p":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->progress:I

    .line 205
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->listener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    if-eqz v1, :cond_3

    .line 206
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->listener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->progress:I

    invoke-interface {v1, p0, v3}, Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;->onProgress(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V

    .line 208
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->downY:F

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->downX:F

    .line 211
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->invalidate()V

    goto :goto_1

    .line 216
    .end local v0    # "p":F
    :pswitch_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 218
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->isInnerClick:Z

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->listener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    if-eqz v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->listener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->progress:I

    invoke-interface {v1, p0, v3}, Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;->onStop(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V

    goto :goto_1

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 252
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->maxProgress:I

    .line 253
    return-void
.end method

.method public setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->listener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    .line 259
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->progress:I

    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->listener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8SeekBarView;->listener:Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/fimi/app/x8s/widget/X8SeekBarView$SlideChangeListener;->onProgress(Lcom/fimi/app/x8s/widget/X8SeekBarView;I)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8SeekBarView;->invalidate()V

    .line 46
    return-void
.end method
