.class public Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;
.super Landroid/view/View;
.source "X8VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private downX:F

.field private downY:F

.field private height:I

.field private intrinsicHeight:I

.field private intrinsicWidth:I

.field private isInnerClick:Z

.field private listener:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;

.field private locationX:I

.field private locationY:I

.field private mDestRect:Landroid/graphics/RectF;

.field private mInnerProgressWidth:I

.field private mInnerProgressWidthPx:I

.field protected mThumb:Landroid/graphics/Bitmap;

.field private maxProgress:I

.field private orientation:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private selectColor:I

.field private tvHeight:I

.field private unSelectColor:I

.field private vHeight:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 158
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    .line 44
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidth:I

    .line 49
    const v0, -0x33141415    # -1.2369084E8f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->unSelectColor:I

    .line 81
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->selectColor:I

    .line 159
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 178
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    .line 44
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidth:I

    .line 49
    const v0, -0x33141415    # -1.2369084E8f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->unSelectColor:I

    .line 81
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->selectColor:I

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, -0x1

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    .line 44
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidth:I

    .line 49
    const v0, -0x33141415    # -1.2369084E8f

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->unSelectColor:I

    .line 81
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->selectColor:I

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 201
    return-void
.end method

.method private fixLocationY()V
    .locals 3

    .prologue
    .line 284
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_1

    .line 285
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 287
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 211
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->context:Landroid/content/Context;

    .line 212
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->paint:Landroid/graphics/Paint;

    .line 213
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 214
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 216
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$drawable;->x8_img_custom_thum:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    .line 217
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    .line 218
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicWidth:I

    .line 219
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    .line 220
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidth:I

    int-to-float v1, v1

    invoke-virtual {p0, p1, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidthPx:I

    .line 221
    return-void
.end method

.method private isInnerMthum(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->width:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->width:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .locals 5
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .prologue
    .line 404
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 405
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 406
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 407
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 408
    .local v1, "scale":F
    mul-float v3, p2, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method public getDestX()I
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getDestY()I
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 416
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->vHeight:I

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->tvHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 417
    .local v1, "t":I
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    .line 418
    .local v0, "b":I
    add-int v2, v1, v0

    .line 419
    .local v2, "y":I
    const-string/jumbo v3, "zdy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->vHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->tvHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v2
.end method

.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    return v0
.end method

.method public getProcess()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 350
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 351
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v9, 0x40000000    # 2.0f

    .line 304
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->orientation:I

    if-nez v0, :cond_1

    .line 305
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->orientation:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->unSelectColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->context:Landroid/content/Context;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->dip2px(Landroid/content/Context;F)I

    move-result v8

    .line 311
    .local v8, "r":I
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->width:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidthPx:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    .line 312
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v2, v0, v9

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->width:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidthPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    int-to-float v4, v0

    int-to-float v5, v8

    int-to-float v6, v8

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 311
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 316
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->orientation:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->selectColor:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->width:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidthPx:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->width:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidthPx:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v9

    sub-float v4, v0, v4

    int-to-float v5, v8

    int-to-float v6, v8

    iget-object v7, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 319
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v9

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v9

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 323
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    invoke-interface {v0, p0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;->onProgress(Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;I)V

    .line 326
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 327
    return-void

    .line 307
    .end local v8    # "r":I
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    goto/16 :goto_0

    .line 309
    :cond_2
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->selectColor:I

    goto/16 :goto_1

    .line 316
    .restart local v8    # "r":I
    :cond_3
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->unSelectColor:I

    goto/16 :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 227
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    .line 228
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->width:I

    .line 233
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 234
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationX:I

    .line 235
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    .line 237
    const-string/jumbo v0, "xiaozhu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    return v8

    .line 247
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->isInnerMthum(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->isInnerClick:Z

    .line 248
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->isInnerClick:Z

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    invoke-interface {v0, p0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;->onStart(Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;I)V

    .line 253
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->downX:F

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->downY:F

    goto :goto_0

    .line 258
    :pswitch_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->isInnerClick:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    .line 260
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->fixLocationY()V

    .line 262
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    int-to-double v0, v0

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->locationY:I

    int-to-double v2, v2

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    iget v5, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    .line 263
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->orientation:I

    if-ne v0, v8, :cond_2

    .line 264
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    .line 266
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->downY:F

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->downX:F

    .line 269
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->invalidate()V

    goto :goto_0

    .line 273
    :pswitch_2
    iget-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->isInnerClick:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    invoke-interface {v0, p0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;->onStop(Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;I)V

    goto :goto_0

    .line 244
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
    .line 355
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->maxProgress:I

    .line 356
    return-void
.end method

.method public setOnSlideChangeListener(Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->listener:Lcom/fimi/app/x8s/widget/X8VerticalSeekBar$SlideChangeListener;

    .line 366
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->orientation:I

    .line 78
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->invalidate()V

    .line 79
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 330
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->height:I

    .line 334
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->progress:I

    .line 336
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->invalidate()V

    .line 337
    return-void
.end method

.method public setSelectColor(I)V
    .locals 0
    .param p1, "selectColor"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->selectColor:I

    .line 90
    return-void
.end method

.method public setTextHeight(II)V
    .locals 0
    .param p1, "vHeight"    # I
    .param p2, "tvHeight"    # I

    .prologue
    .line 369
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->vHeight:I

    .line 370
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->tvHeight:I

    .line 371
    return-void
.end method

.method public setThumb(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    .line 121
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicWidth:I

    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->invalidate()V

    .line 124
    return-void
.end method

.method public setThumbSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->context:Landroid/content/Context;

    int-to-float v2, p2

    invoke-virtual {p0, v1, v2}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->setThumbSizePx(II)V

    .line 134
    return-void
.end method

.method public setThumbSizePx(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 143
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicHeight:I

    .line 144
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->intrinsicWidth:I

    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mDestRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->invalidate()V

    .line 148
    return-void
.end method

.method public setUnSelectColor(I)V
    .locals 0
    .param p1, "uNSelectColor"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->unSelectColor:I

    .line 67
    return-void
.end method

.method public setmInnerProgressWidth(I)V
    .locals 2
    .param p1, "mInnerProgressWidth"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidth:I

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->context:Landroid/content/Context;

    int-to-float v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidthPx:I

    .line 109
    return-void
.end method

.method public setmInnerProgressWidthPx(I)V
    .locals 0
    .param p1, "mInnerProgressWidthPx"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8VerticalSeekBar;->mInnerProgressWidthPx:I

    .line 99
    return-void
.end method
