.class public Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;
.super Landroid/widget/ImageView;
.source "MultiTouchImageView.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$SwipeableViewProvider;


# static fields
.field private static final DOUBLE_TAP_SCALE_FACTOR:F = 2.0f

.field private static final MINIMUM_SCALE_FACTOR:F = 1.0f

.field private static final SCALE_ANIMATION_DURATION:J = 0x12cL


# instance fields
.field allowIntercept:Z

.field final baseMatrix:Landroid/graphics/Matrix;

.field final drawMatrix:Landroid/graphics/Matrix;

.field final drawRect:Landroid/graphics/RectF;

.field final gestureDetector:Landroid/view/GestureDetector;

.field final matrixValues:[F

.field final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field final updateMatrix:Landroid/graphics/Matrix;

.field final viewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->drawMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->baseMatrix:Landroid/graphics/Matrix;

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->updateMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->drawRect:Landroid/graphics/RectF;

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->matrixValues:[F

    .line 64
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$1;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$1;-><init>(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 83
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;-><init>(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 107
    return-void
.end method


# virtual methods
.method animateScale(FFFF)V
    .locals 4
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "px"    # F
    .param p4, "py"    # F

    .prologue
    .line 229
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 231
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 232
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    new-instance v1, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;

    invoke-direct {v1, p0, p3, p4}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;-><init>(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 243
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 244
    return-void
.end method

.method public canBeSwiped()Z
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->drawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 217
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->drawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->updateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 219
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->drawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method getDrawRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 209
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->drawRect:Landroid/graphics/RectF;

    return-object v1
.end method

.method getScale()F
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->updateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 165
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->matrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method initializeBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 131
    .local v1, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 132
    .local v0, "drawableHeight":I
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 134
    .local v2, "srcRect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 135
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->baseMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v2, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 136
    return-void
.end method

.method initializeViewRect()V
    .locals 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 126
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 125
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 127
    return-void
.end method

.method isInitializationComplete()Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 116
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 117
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->isInitializationComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->initializeViewRect()V

    .line 119
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->initializeBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setImageMatrix()V

    .line 122
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->isInitializationComplete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    invoke-virtual {p0, v2}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->requestDisallowInterceptTouchEvent(Z)V

    .line 147
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 148
    .local v0, "retVal":Z
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    .line 149
    :goto_1
    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 148
    goto :goto_1
.end method

.method requestDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 154
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 157
    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->updateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 174
    return-void
.end method

.method setImageMatrix()V
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->updateMatrixBounds()V

    .line 224
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 226
    return-void
.end method

.method setScale(FFF)V
    .locals 1
    .param p1, "ds"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F

    .prologue
    .line 160
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->updateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 161
    return-void
.end method

.method setTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 169
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->updateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 170
    return-void
.end method

.method updateMatrixBounds()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 177
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getDrawRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    .line 178
    .local v2, "rect":Landroid/graphics/RectF;
    const/4 v1, 0x0

    .line 179
    .local v1, "dy":F
    const/4 v0, 0x0

    .line 181
    .local v0, "dx":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 182
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float v1, v3, v4

    .line 189
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 190
    iput-boolean v5, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->allowIntercept:Z

    .line 191
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v7

    iget v4, v2, Landroid/graphics/RectF;->left:F

    sub-float v0, v3, v4

    .line 202
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setTranslate(FF)V

    .line 203
    return-void

    .line 183
    :cond_1
    iget v3, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    .line 184
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v3

    goto :goto_0

    .line 185
    :cond_2
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 186
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v3, v4

    goto :goto_0

    .line 192
    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 193
    iput-boolean v5, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->allowIntercept:Z

    .line 194
    iget v3, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v3

    goto :goto_1

    .line 195
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 196
    iput-boolean v5, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->allowIntercept:Z

    .line 197
    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float v0, v3, v4

    goto :goto_1

    .line 199
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->allowIntercept:Z

    goto :goto_1
.end method
