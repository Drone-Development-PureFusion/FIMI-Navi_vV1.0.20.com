.class public Lcom/fimi/album/widget/DownloadStateView;
.super Landroid/view/View;
.source "DownloadStateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/album/widget/DownloadStateView$State;
    }
.end annotation


# static fields
.field private static DOWNLOADING_COLOR:I

.field private static DOWNLOAD_FAIL_COLOR:I


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mState:Lcom/fimi/album/widget/DownloadStateView$State;

.field private sweepAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "#38bbff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fimi/album/widget/DownloadStateView;->DOWNLOADING_COLOR:I

    .line 30
    const-string v0, "#f23206"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fimi/album/widget/DownloadStateView;->DOWNLOAD_FAIL_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/widget/DownloadStateView;->sweepAngle:I

    .line 27
    sget-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    iput-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    .line 35
    invoke-direct {p0}, Lcom/fimi/album/widget/DownloadStateView;->initView()V

    .line 36
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
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/widget/DownloadStateView;->sweepAngle:I

    .line 27
    sget-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    iput-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    .line 40
    invoke-direct {p0}, Lcom/fimi/album/widget/DownloadStateView;->initView()V

    .line 41
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
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/album/widget/DownloadStateView;->sweepAngle:I

    .line 27
    sget-object v0, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    iput-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    .line 45
    invoke-direct {p0}, Lcom/fimi/album/widget/DownloadStateView;->initView()V

    .line 46
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/fimi/album/widget/DownloadStateView;->DOWNLOADING_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    sget v0, Lcom/example/album/R$drawable;->album_btn_media_pause:I

    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/DownloadStateView;->setBackgroundResource(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public getState()Lcom/fimi/album/widget/DownloadStateView$State;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/fimi/album/widget/DownloadStateView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/fimi/album/widget/DownloadStateView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    invoke-direct {v1, v5, v5, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    sget-object v3, Lcom/fimi/album/widget/DownloadStateView$State;->PAUSE:Lcom/fimi/album/widget/DownloadStateView$State;

    if-ne v0, v3, :cond_1

    .line 63
    sget v0, Lcom/example/album/R$drawable;->album_btn_media_pause:I

    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/DownloadStateView;->setBackgroundResource(I)V

    .line 64
    iget v0, p0, Lcom/fimi/album/widget/DownloadStateView;->sweepAngle:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/fimi/album/widget/DownloadStateView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    sget-object v3, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOADING:Lcom/fimi/album/widget/DownloadStateView$State;

    if-ne v0, v3, :cond_2

    .line 66
    sget v0, Lcom/example/album/R$drawable;->album_btn_media_download:I

    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/DownloadStateView;->setBackgroundResource(I)V

    .line 67
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/fimi/album/widget/DownloadStateView;->DOWNLOADING_COLOR:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget v0, p0, Lcom/fimi/album/widget/DownloadStateView;->sweepAngle:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/fimi/album/widget/DownloadStateView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    sget-object v3, Lcom/fimi/album/widget/DownloadStateView$State;->DOWNLOAD_FAIL:Lcom/fimi/album/widget/DownloadStateView$State;

    if-ne v0, v3, :cond_0

    .line 70
    sget v0, Lcom/example/album/R$drawable;->album_btn_media_redownload:I

    invoke-virtual {p0, v0}, Lcom/fimi/album/widget/DownloadStateView;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/fimi/album/widget/DownloadStateView;->DOWNLOAD_FAIL_COLOR:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget v0, p0, Lcom/fimi/album/widget/DownloadStateView;->sweepAngle:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/fimi/album/widget/DownloadStateView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    const v2, 0x40666666    # 3.6f

    .line 78
    iget v0, p0, Lcom/fimi/album/widget/DownloadStateView;->sweepAngle:I

    int-to-float v1, p1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/fimi/album/widget/DownloadStateView;->sweepAngle:I

    .line 82
    invoke-virtual {p0}, Lcom/fimi/album/widget/DownloadStateView;->invalidate()V

    goto :goto_0
.end method

.method public setState(Lcom/fimi/album/widget/DownloadStateView$State;)V
    .locals 1
    .param p1, "state"    # Lcom/fimi/album/widget/DownloadStateView$State;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/album/widget/DownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    if-ne v0, p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/fimi/album/widget/DownloadStateView;->mState:Lcom/fimi/album/widget/DownloadStateView$State;

    .line 90
    invoke-virtual {p0}, Lcom/fimi/album/widget/DownloadStateView;->invalidate()V

    goto :goto_0
.end method
