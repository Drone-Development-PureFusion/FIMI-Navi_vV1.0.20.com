.class public Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;
.super Landroid/view/View;
.source "X8DoubleWaySeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;
    }
.end annotation


# instance fields
.field private mBgBottom:I

.field private mBgTop:I

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mCurrentLeftOffset:F

.field private mHalfDrawableWidth:I

.field private mHeight:I

.field private mIsOnDrag:Z

.field private mLastX:F

.field private mListener:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mPointerBottom:F

.field private mPointerDrawable:Landroid/graphics/drawable/Drawable;

.field private mPointerLeft:F

.field private mPointerPaint:Landroid/graphics/Paint;

.field private mPointerRight:F

.field private mPointerTop:F

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mRoundSize:I

.field private mSeekBarLeft:I

.field private mSeekBarRight:I

.field private mViewMiddleXPos:I

.field private mWidth:I

.field private total_len:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mCurrentLeftOffset:F

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->init(Landroid/util/AttributeSet;)V

    .line 64
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
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mCurrentLeftOffset:F

    .line 68
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->init(Landroid/util/AttributeSet;)V

    .line 69
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
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mCurrentLeftOffset:F

    .line 73
    invoke-direct {p0, p2}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->init(Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    return v0
.end method

.method static synthetic access$002(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    return p1
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;
    .param p1, "x1"    # F

    .prologue
    .line 25
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerRight:F

    return p1
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private calculatePointerRect()V
    .locals 3

    .prologue
    .line 268
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mCurrentLeftOffset:F

    invoke-direct {p0, v2}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->getPointerLeft(F)F

    move-result v0

    .line 269
    .local v0, "pointerLeft":F
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    add-float v1, v0, v2

    .line 270
    .local v1, "pointerRight":F
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    .line 271
    iput v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerRight:F

    .line 272
    const/4 v2, 0x0

    iput v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerTop:F

    .line 273
    iget v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHeight:I

    int-to-float v2, v2

    iput v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerBottom:F

    .line 274
    return-void
.end method

.method private callbackProgress()V
    .locals 4

    .prologue
    .line 243
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->total_len:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->total_len:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 244
    .local v0, "percent":I
    invoke-direct {p0, v0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->callbackProgressInternal(I)V

    .line 245
    const-string v1, "ljh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent \uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " left : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method private callbackProgressInternal(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mListener:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mListener:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;

    invoke-interface {v0, p1}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;->onSeekProgress(I)V

    .line 252
    :cond_0
    return-void
.end method

.method private getPointerLeft(F)F
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 295
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    add-float/2addr v0, p1

    return v0
.end method

.method private handleDownEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x41f00000    # 30.0f

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 257
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 258
    .local v1, "y":F
    iget v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    sub-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerRight:F

    add-float/2addr v3, v4

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerTop:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerBottom:F

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    .line 259
    iput-boolean v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mIsOnDrag:Z

    .line 260
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mLastX:F

    .line 263
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 208
    .local v0, "x":F
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mIsOnDrag:Z

    if-eqz v1, :cond_2

    .line 209
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mLastX:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mCurrentLeftOffset:F

    .line 211
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->calculatePointerRect()V

    .line 212
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 213
    iput v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    .line 214
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerRight:F

    .line 216
    :cond_0
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mWidth:I

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 217
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mWidth:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    .line 218
    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerRight:F

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->invalidate()V

    .line 221
    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mLastX:F

    .line 222
    const/4 v1, 0x1

    .line 224
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleUpEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-boolean v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mIsOnDrag:Z

    if-eqz v1, :cond_0

    .line 200
    iput-boolean v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mIsOnDrag:Z

    .line 201
    const/4 v0, 0x1

    .line 203
    :cond_0
    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const-string v3, "#FF4081"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "progressColor":I
    const-string v3, "#BBBBBB"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, "backgroundColor":I
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/fimi/app/x8s/R$styleable;->doubleWaySeekBar:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/fimi/app/x8s/R$styleable;->doubleWaySeekBar_pointerBackground:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    .line 84
    sget v3, Lcom/fimi/app/x8s/R$styleable;->doubleWaySeekBar_progressColor:I

    const-string v4, "#FF4081"

    .line 85
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 84
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 86
    sget v3, Lcom/fimi/app/x8s/R$styleable;->doubleWaySeekBar_backgroundColor:I

    const-string v4, "#BBBBBB"

    .line 87
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 86
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mNormalPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mCenterPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mCenterPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 137
    .local v7, "rectF":Landroid/graphics/RectF;
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mSeekBarLeft:I

    int-to-float v0, v0

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 138
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mSeekBarRight:I

    int-to-float v0, v0

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 139
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mBgTop:I

    int-to-float v0, v0

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 140
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mBgBottom:I

    int-to-float v0, v0

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 141
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mRoundSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mRoundSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 145
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerRight:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mViewMiddleXPos:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 146
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerRight:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mBgTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mViewMiddleXPos:I

    int-to-float v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mBgBottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 149
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mViewMiddleXPos:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 150
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mViewMiddleXPos:I

    int-to-float v1, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mBgTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mBgBottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mProgressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 154
    :cond_1
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 155
    .local v8, "rectF1":Landroid/graphics/RectF;
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mSeekBarLeft:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mSeekBarRight:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mSeekBarLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->left:F

    .line 156
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mSeekBarRight:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mSeekBarRight:I

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mSeekBarLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->right:F

    .line 157
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mBgTop:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->top:F

    .line 158
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mBgBottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, v8, Landroid/graphics/RectF;->bottom:F

    .line 159
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 162
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 163
    .local v6, "rect":Landroid/graphics/Rect;
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->left:I

    .line 164
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerTop:F

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 165
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerRight:F

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->right:I

    .line 166
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerBottom:F

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mListener:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mListener:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;->onPointerPositionChanged(II)V

    .line 173
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->callbackProgress()V

    .line 176
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 109
    iput p1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mWidth:I

    .line 110
    iput p2, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHeight:I

    .line 112
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mSeekBarLeft:I

    .line 113
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mWidth:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mSeekBarRight:I

    .line 115
    const/16 v0, 0xf

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mBgTop:I

    .line 116
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHeight:I

    add-int/lit8 v0, v0, -0xf

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mBgBottom:I

    .line 117
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mRoundSize:I

    .line 119
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mViewMiddleXPos:I

    .line 120
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mViewMiddleXPos:I

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->total_len:F

    .line 121
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mViewMiddleXPos:I

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    .line 122
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mLastX:F

    .line 123
    invoke-direct {p0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->calculatePointerRect()V

    .line 125
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mListener:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mListener:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;

    invoke-interface {v0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;->onSizeChanged()V

    .line 129
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    .line 183
    .local v0, "isHandle":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->handleDownEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 186
    goto :goto_0

    .line 188
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->handleMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 189
    goto :goto_0

    .line 192
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->handleUpEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetSeekBar()V
    .locals 5

    .prologue
    .line 280
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mViewMiddleXPos:I

    iget v4, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 281
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 283
    new-instance v1, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$1;-><init>(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 291
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 292
    return-void
.end method

.method public setOnSeekProgressListener(Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mListener:Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar$OnSeekProgressListener;

    .line 302
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "percent"    # F

    .prologue
    .line 233
    float-to-double v0, p1

    const-wide v2, -0x3fa6f9999999999aL    # -100.1

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    const-wide v2, 0x4059066666666666L    # 100.1

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->total_len:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->total_len:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    .line 235
    iget v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerLeft:F

    iget v1, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mHalfDrawableWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->mPointerRight:F

    .line 236
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/X8DoubleWaySeekBar;->invalidate()V

    goto :goto_0
.end method
