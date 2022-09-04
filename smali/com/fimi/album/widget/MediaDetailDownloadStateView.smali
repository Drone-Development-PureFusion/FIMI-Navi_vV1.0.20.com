.class public Lcom/fimi/album/widget/MediaDetailDownloadStateView;
.super Landroid/view/View;
.source "MediaDetailDownloadStateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/album/widget/MediaDetailDownloadStateView$State;
    }
.end annotation


# static fields
.field private static DOWNLOADING_COLOR:I

.field private static DOWNLOAD_FAIL_COLOR:I

.field private static TEXT_COLOR:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mState:Lcom/fimi/album/widget/DownloadStateView$State;

.field private mTextPaint:Landroid/graphics/Paint;

.field private sweepAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "#38bbff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->DOWNLOADING_COLOR:I

    .line 36
    const-string v0, "#f23206"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->DOWNLOAD_FAIL_COLOR:I

    .line 38
    const-string v0, "#ffffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->sweepAngle:I

    .line 33
    sget-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    iput-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    .line 43
    iput-object p1, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->initView()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->sweepAngle:I

    .line 33
    sget-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    iput-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    .line 49
    iput-object p1, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->initView()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->sweepAngle:I

    .line 33
    sget-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    iput-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    .line 55
    iput-object p1, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->initView()V

    .line 57
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->DOWNLOADING_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mTextPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/AbViewUtil;->dip2px(Landroid/content/Context;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mTextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->TEXT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1}, Lcom/fimi/kernel/utils/FontUtil;->getDINAlernateBold(Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 73
    sget v0, Lcom/example/album/R$drawable;->album_btn_media_pause:I

    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->setBackgroundResource(I)V

    .line 74
    return-void
.end method


# virtual methods
.method public getState()Lcom/fimi/album/widget/DownloadStateView$State;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    invoke-direct {v1, v10, v10, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 80
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    sget-object v3, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    if-ne v0, v3, :cond_1

    .line 81
    sget v0, Lcom/example/album/R$drawable;->album_btn_media_pause:I

    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->setBackgroundResource(I)V

    .line 82
    iget v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->sweepAngle:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    sget-object v3, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOADING:Lcom/fimi/album/widget/DownloadStateView$State;

    if-ne v0, v3, :cond_2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->sweepAngle:I

    int-to-float v3, v3

    const v5, 0x40666666    # 3.6f

    div-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "text":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    .line 87
    .local v7, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v0, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v6, v0, v3

    .line 89
    .local v6, "fontHeight":F
    invoke-virtual {p0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v6

    div-float/2addr v3, v10

    sub-float/2addr v0, v3

    iget v3, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v9, v0, v3

    .line 90
    .local v9, "textBaseY":F
    invoke-virtual {p0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 92
    sget v0, Lcom/example/album/R$drawable;->album_btn_media_detail_download:I

    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->setBackgroundResource(I)V

    .line 93
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->DOWNLOADING_COLOR:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->sweepAngle:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 95
    .end local v6    # "fontHeight":F
    .end local v7    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "textBaseY":F
    :cond_2
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    sget-object v3, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOAD_FAIL:Lcom/fimi/album/widget/DownloadStateView$State;

    if-ne v0, v3, :cond_0

    .line 96
    sget v0, Lcom/example/album/R$drawable;->album_btn_media_redownload:I

    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->setBackgroundResource(I)V

    .line 97
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->DOWNLOAD_FAIL_COLOR:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->sweepAngle:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const v2, 0x40666666    # 3.6f

    .line 104
    iget v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->sweepAngle:I

    int-to-float v1, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->sweepAngle:I

    .line 108
    invoke-virtual {p0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->invalidate()V

    goto :goto_0
.end method

.method public setState(Lcom/fimi/album/widget/DownloadStateView$State;)V
    .locals 1
    .param p1, "state"    # Lcom/fimi/album/widget/DownloadStateView$State;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    if-ne v0, p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    .line 116
    invoke-virtual {p0}, Lcom/fimi/album/widget/MediaDetailDownloadStateView;->invalidate()V

    goto :goto_0
.end method
