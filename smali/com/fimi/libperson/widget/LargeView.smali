.class public Lcom/fimi/libperson/widget/LargeView;
.super Landroid/view/View;
.source "LargeView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LargeView"

.field private static final sHeight:I = 0x780

.field private static final sWidth:I = 0x438


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapIsCached:Z

.field private bitmapPaint:Landroid/graphics/Paint;

.field private duration:J

.field private isFirst:Z

.field private isUp:Z

.field private mReady:Z

.field private matrix:Landroid/graphics/Matrix;

.field private scale:F

.field private startTime:J

.field private vTranslate:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/libperson/widget/LargeView;->mReady:Z

    .line 31
    iput-boolean v2, p0, Lcom/fimi/libperson/widget/LargeView;->isUp:Z

    .line 32
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lcom/fimi/libperson/widget/LargeView;->duration:J

    .line 36
    iput-boolean v2, p0, Lcom/fimi/libperson/widget/LargeView;->isFirst:Z

    .line 41
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/fimi/libperson/widget/LargeView;->vTranslate:Landroid/graphics/PointF;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/libperson/widget/LargeView;->bitmapPaint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/fimi/libperson/widget/LargeView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v0, p0, Lcom/fimi/libperson/widget/LargeView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 46
    iget-object v0, p0, Lcom/fimi/libperson/widget/LargeView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/fimi/libperson/widget/LargeView;->matrix:Landroid/graphics/Matrix;

    .line 48
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/fimi/libperson/widget/LargeView;->mReady:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v6, p0, Lcom/fimi/libperson/widget/LargeView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 57
    iget-boolean v6, p0, Lcom/fimi/libperson/widget/LargeView;->mReady:Z

    if-eqz v6, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/fimi/libperson/widget/LargeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v10

    div-float/2addr v6, v7

    iput v6, p0, Lcom/fimi/libperson/widget/LargeView;->scale:F

    .line 59
    const-string v6, "LargeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDraw: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/fimi/libperson/widget/LargeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/fimi/libperson/widget/LargeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-boolean v6, p0, Lcom/fimi/libperson/widget/LargeView;->isFirst:Z

    if-eqz v6, :cond_0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fimi/libperson/widget/LargeView;->startTime:J

    .line 62
    iput-boolean v5, p0, Lcom/fimi/libperson/widget/LargeView;->isFirst:Z

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/fimi/libperson/widget/LargeView;->startTime:J

    sub-long v2, v6, v8

    .line 65
    .local v2, "scaleElapsed":J
    iget-wide v6, p0, Lcom/fimi/libperson/widget/LargeView;->duration:J

    cmp-long v6, v2, v6

    if-lez v6, :cond_4

    move v0, v4

    .line 66
    .local v0, "finished":Z
    :goto_0
    long-to-float v6, v2

    iget-wide v8, p0, Lcom/fimi/libperson/widget/LargeView;->duration:J

    long-to-float v7, v8

    mul-float/2addr v7, v10

    div-float v1, v6, v7

    .line 67
    .local v1, "percent":F
    iget-boolean v6, p0, Lcom/fimi/libperson/widget/LargeView;->isUp:Z

    if-nez v6, :cond_1

    .line 68
    sub-float v1, v10, v1

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/fimi/libperson/widget/LargeView;->vTranslate:Landroid/graphics/PointF;

    neg-float v7, v1

    iget-object v8, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/fimi/libperson/widget/LargeView;->scale:F

    mul-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/fimi/libperson/widget/LargeView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    .line 71
    const-string v6, "LargeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDraw: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fimi/libperson/widget/LargeView;->vTranslate:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",scale:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/fimi/libperson/widget/LargeView;->scale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",percent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-nez v0, :cond_5

    .line 78
    :goto_1
    invoke-virtual {p0}, Lcom/fimi/libperson/widget/LargeView;->invalidate()V

    .line 80
    .end local v0    # "finished":Z
    .end local v1    # "percent":F
    .end local v2    # "scaleElapsed":J
    :cond_2
    iget-object v4, p0, Lcom/fimi/libperson/widget/LargeView;->matrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/fimi/libperson/widget/LargeView;->scale:F

    iget v6, p0, Lcom/fimi/libperson/widget/LargeView;->scale:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 81
    iget-object v4, p0, Lcom/fimi/libperson/widget/LargeView;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fimi/libperson/widget/LargeView;->vTranslate:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    iget-object v4, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 83
    iget-object v4, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/fimi/libperson/widget/LargeView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/fimi/libperson/widget/LargeView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 85
    :cond_3
    return-void

    .restart local v2    # "scaleElapsed":J
    :cond_4
    move v0, v5

    .line 65
    goto :goto_0

    .line 75
    .restart local v0    # "finished":Z
    .restart local v1    # "percent":F
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/fimi/libperson/widget/LargeView;->startTime:J

    .line 76
    iget-boolean v6, p0, Lcom/fimi/libperson/widget/LargeView;->isUp:Z

    if-nez v6, :cond_6

    :goto_2
    iput-boolean v4, p0, Lcom/fimi/libperson/widget/LargeView;->isUp:Z

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_2
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/libperson/widget/LargeView;->startTime:J

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/libperson/widget/LargeView;->mReady:Z

    .line 112
    invoke-virtual {p0}, Lcom/fimi/libperson/widget/LargeView;->invalidate()V

    .line 114
    :cond_0
    return-void
.end method

.method public setReady(Z)V
    .locals 2
    .param p1, "ready"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/fimi/libperson/widget/LargeView;->mReady:Z

    .line 93
    iget-boolean v0, p0, Lcom/fimi/libperson/widget/LargeView;->mReady:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/libperson/widget/LargeView;->startTime:J

    .line 95
    invoke-virtual {p0}, Lcom/fimi/libperson/widget/LargeView;->invalidate()V

    .line 97
    :cond_0
    return-void
.end method

.method public setRecyle()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/libperson/widget/LargeView;->mReady:Z

    .line 101
    iget-object v0, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/libperson/widget/LargeView;->bitmap:Landroid/graphics/Bitmap;

    .line 105
    :cond_0
    return-void
.end method
