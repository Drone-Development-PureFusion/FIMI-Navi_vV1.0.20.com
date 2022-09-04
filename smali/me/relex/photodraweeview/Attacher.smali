.class public Lme/relex/photodraweeview/Attacher;
.super Ljava/lang/Object;
.source "Attacher.java"

# interfaces
.implements Lme/relex/photodraweeview/IAttacher;
.implements Landroid/view/View$OnTouchListener;
.implements Lme/relex/photodraweeview/OnScaleDragGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/photodraweeview/Attacher$FlingRunnable;,
        Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;,
        Lme/relex/photodraweeview/Attacher$OrientationMode;
    }
.end annotation


# static fields
.field private static final EDGE_BOTH:I = 0x2

.field private static final EDGE_BOTTOM:I = 0x1

.field private static final EDGE_LEFT:I = 0x0

.field private static final EDGE_NONE:I = -0x1

.field private static final EDGE_RIGHT:I = 0x1

.field private static final EDGE_TOP:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private mDraweeView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/drawee/view/DraweeView",
            "<",
            "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mImageInfoHeight:I

.field private mImageInfoWidth:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOrientation:I

.field private mPhotoTapListener:Lme/relex/photodraweeview/OnPhotoTapListener;

.field private mScaleChangeListener:Lme/relex/photodraweeview/OnScaleChangeListener;

.field private mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

.field private mScrollEdgeX:I

.field private mScrollEdgeY:I

.field private mViewTapListener:Lme/relex/photodraweeview/OnViewTapListener;

.field private mZoomDuration:J

.field private final mZoomInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/view/DraweeView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/DraweeView",
            "<",
            "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v3, p0, Lme/relex/photodraweeview/Attacher;->mOrientation:I

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrixValues:[F

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mZoomInterpolator:Landroid/view/animation/Interpolator;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    .line 46
    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lme/relex/photodraweeview/Attacher;->mMidScale:F

    .line 47
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    .line 48
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lme/relex/photodraweeview/Attacher;->mZoomDuration:J

    .line 53
    iput-boolean v3, p0, Lme/relex/photodraweeview/Attacher;->mBlockParentIntercept:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/relex/photodraweeview/Attacher;->mAllowParentInterceptOnEdge:Z

    .line 55
    iput v4, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    .line 56
    iput v4, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    .line 59
    iput v2, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoHeight:I

    iput v2, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoWidth:I

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mDraweeView:Ljava/lang/ref/WeakReference;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)V

    .line 71
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/view/DraweeView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    new-instance v0, Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lme/relex/photodraweeview/ScaleDragDetector;-><init>(Landroid/content/Context;Lme/relex/photodraweeview/OnScaleDragGestureListener;)V

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    .line 73
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lme/relex/photodraweeview/Attacher$1;

    invoke-direct {v2, p0}, Lme/relex/photodraweeview/Attacher$1;-><init>(Lme/relex/photodraweeview/Attacher;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 82
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v1, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;-><init>(Lme/relex/photodraweeview/Attacher;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lme/relex/photodraweeview/Attacher;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lme/relex/photodraweeview/Attacher;

    .prologue
    .line 25
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lme/relex/photodraweeview/Attacher;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lme/relex/photodraweeview/Attacher;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lme/relex/photodraweeview/Attacher;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lme/relex/photodraweeview/Attacher;)J
    .locals 2
    .param p0, "x0"    # Lme/relex/photodraweeview/Attacher;

    .prologue
    .line 25
    iget-wide v0, p0, Lme/relex/photodraweeview/Attacher;->mZoomDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lme/relex/photodraweeview/Attacher;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lme/relex/photodraweeview/Attacher;

    .prologue
    .line 25
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mZoomInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lme/relex/photodraweeview/Attacher;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lme/relex/photodraweeview/Attacher;

    .prologue
    .line 25
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher$FlingRunnable;->cancelFling()V

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    .line 544
    :cond_0
    return-void
.end method

.method private checkMinScale()V
    .locals 8

    .prologue
    .line 328
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v6

    .line 329
    .local v6, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-nez v6, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v0

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 335
    .local v7, "rect":Landroid/graphics/RectF;
    if-eqz v7, :cond_0

    .line 336
    new-instance v0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v2

    iget v3, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 337
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;-><init>(Lme/relex/photodraweeview/Attacher;FFFF)V

    .line 336
    invoke-virtual {v6, v0}, Lcom/facebook/drawee/view/DraweeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2
    .param p0, "minZoom"    # F
    .param p1, "midZoom"    # F
    .param p2, "maxZoom"    # F

    .prologue
    .line 200
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 301
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 302
    .local v0, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-eqz v0, :cond_0

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoWidth:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoHeight:I

    if-ne v1, v2, :cond_1

    .line 303
    :cond_0
    const/4 v1, 0x0

    .line 308
    :goto_0
    return-object v1

    .line 305
    :cond_1
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mDisplayRect:Landroid/graphics/RectF;

    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoWidth:I

    int-to-float v2, v2

    iget v3, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 306
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    iget-object v2, p0, Lme/relex/photodraweeview/Attacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->getActualImageBounds(Landroid/graphics/RectF;)V

    .line 307
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 308
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mDisplayRect:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private getMatrixValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 233
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private getViewHeight()I
    .locals 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 223
    .local v0, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHeight()I

    move-result v1

    .line 225
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 226
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 228
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getViewWidth()I
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 211
    .local v0, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getWidth()I

    move-result v1

    .line 214
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 215
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 218
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 547
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 548
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private resetMatrix()V
    .locals 2

    .prologue
    .line 319
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 320
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixBounds()Z

    .line 321
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 322
    .local v0, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->invalidate()V

    .line 325
    :cond_0
    return-void
.end method

.method private updateBaseMatrix()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 312
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoHeight:I

    if-ne v0, v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->resetMatrix()V

    goto :goto_0
.end method


# virtual methods
.method public checkMatrixAndInvalidate()V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 249
    .local v0, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->invalidate()V

    goto :goto_0
.end method

.method public checkMatrixBounds()Z
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 259
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-direct {p0, v9}, Lme/relex/photodraweeview/Attacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v3

    .line 260
    .local v3, "rect":Landroid/graphics/RectF;
    if-nez v3, :cond_0

    .line 297
    :goto_0
    return v7

    .line 264
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 265
    .local v2, "height":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 266
    .local v6, "width":F
    const/4 v0, 0x0

    .line 267
    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 268
    .local v1, "deltaY":F
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->getViewHeight()I

    move-result v4

    .line 270
    .local v4, "viewHeight":I
    int-to-float v9, v4

    cmpg-float v9, v2, v9

    if-gtz v9, :cond_1

    .line 271
    int-to-float v9, v4

    sub-float/2addr v9, v2

    div-float/2addr v9, v12

    iget v10, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v9, v10

    .line 272
    const/4 v9, 0x2

    iput v9, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    .line 282
    :goto_1
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->getViewWidth()I

    move-result v5

    .line 283
    .local v5, "viewWidth":I
    int-to-float v9, v5

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_4

    .line 284
    int-to-float v7, v5

    sub-float/2addr v7, v6

    div-float/2addr v7, v12

    iget v9, v3, Landroid/graphics/RectF;->left:F

    sub-float v0, v7, v9

    .line 285
    const/4 v7, 0x2

    iput v7, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    .line 296
    :goto_2
    iget-object v7, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v7, v8

    .line 297
    goto :goto_0

    .line 273
    .end local v5    # "viewWidth":I
    :cond_1
    iget v9, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_2

    .line 274
    iget v9, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v9

    .line 275
    iput v7, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    goto :goto_1

    .line 276
    :cond_2
    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v4

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 277
    int-to-float v9, v4

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v9, v10

    .line 278
    iput v8, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    goto :goto_1

    .line 280
    :cond_3
    iput v13, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    goto :goto_1

    .line 286
    .restart local v5    # "viewWidth":I
    :cond_4
    iget v9, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_5

    .line 287
    iget v9, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v9

    .line 288
    iput v7, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    goto :goto_2

    .line 289
    :cond_5
    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v9, v5

    cmpg-float v7, v7, v9

    if-gez v7, :cond_6

    .line 290
    int-to-float v7, v5

    iget v9, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v7, v9

    .line 291
    iput v8, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    goto :goto_2

    .line 293
    :cond_6
    iput v13, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    goto :goto_2
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixBounds()Z

    .line 242
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/relex/photodraweeview/Attacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDraweeView()Lcom/facebook/drawee/view/DraweeView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/view/DraweeView",
            "<",
            "Lcom/facebook/drawee/generic/GenericDraweeHierarchy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mDraweeView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/DraweeView;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Lme/relex/photodraweeview/OnPhotoTapListener;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mPhotoTapListener:Lme/relex/photodraweeview/OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Lme/relex/photodraweeview/OnViewTapListener;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mViewTapListener:Lme/relex/photodraweeview/OnViewTapListener;

    return-object v0
.end method

.method public getScale()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 125
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, v0, v1}, Lme/relex/photodraweeview/Attacher;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    .line 127
    invoke-direct {p0, v1, v2}, Lme/relex/photodraweeview/Attacher;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    .line 126
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->cancelFling()V

    .line 556
    return-void
.end method

.method public onDrag(FF)V
    .locals 8
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x1

    .line 360
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 362
    .local v0, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-eqz v0, :cond_0

    iget-object v2, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {v2}, Lme/relex/photodraweeview/ScaleDragDetector;->isScaling()Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    iget-object v2, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 364
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixAndInvalidate()V

    .line 366
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 367
    .local v1, "parent":Landroid/view/ViewParent;
    if-nez v1, :cond_1

    .line 384
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 370
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    iget-boolean v2, p0, Lme/relex/photodraweeview/Attacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    .line 371
    invoke-virtual {v2}, Lme/relex/photodraweeview/ScaleDragDetector;->isScaling()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lme/relex/photodraweeview/Attacher;->mBlockParentIntercept:Z

    if-nez v2, :cond_7

    .line 373
    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mOrientation:I

    if-nez v2, :cond_4

    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    if-nez v2, :cond_2

    cmpl-float v2, p1, v5

    if-gez v2, :cond_3

    :cond_2
    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeX:I

    if-ne v2, v3, :cond_4

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_4

    .line 375
    :cond_3
    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 376
    :cond_4
    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mOrientation:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    if-eq v2, v7, :cond_6

    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    if-nez v2, :cond_5

    cmpl-float v2, p2, v5

    if-gez v2, :cond_6

    :cond_5
    iget v2, p0, Lme/relex/photodraweeview/Attacher;->mScrollEdgeY:I

    if-ne v2, v3, :cond_0

    cmpg-float v2, p2, v4

    if-gtz v2, :cond_0

    .line 378
    :cond_6
    invoke-interface {v1, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 381
    :cond_7
    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onFling(FFFF)V
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 387
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 388
    .local v0, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 392
    :cond_0
    new-instance v1, Lme/relex/photodraweeview/Attacher$FlingRunnable;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lme/relex/photodraweeview/Attacher$FlingRunnable;-><init>(Lme/relex/photodraweeview/Attacher;Landroid/content/Context;)V

    iput-object v1, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    .line 393
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->getViewWidth()I

    move-result v2

    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->getViewHeight()I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lme/relex/photodraweeview/Attacher$FlingRunnable;->fling(IIII)V

    .line 395
    iget-object v1, p0, Lme/relex/photodraweeview/Attacher;->mCurrentFlingRunnable:Lme/relex/photodraweeview/Attacher$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/DraweeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onScale(FFF)V
    .locals 2
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 343
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v0

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 345
    :cond_0
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mScaleChangeListener:Lme/relex/photodraweeview/OnScaleChangeListener;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mScaleChangeListener:Lme/relex/photodraweeview/OnScaleChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lme/relex/photodraweeview/OnScaleChangeListener;->onScaleChange(FFF)V

    .line 349
    :cond_1
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 350
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixAndInvalidate()V

    .line 352
    :cond_2
    return-void
.end method

.method public onScaleEnd()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->checkMinScale()V

    .line 356
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 399
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 400
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v9, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {v9}, Lme/relex/photodraweeview/ScaleDragDetector;->isScaling()Z

    move-result v6

    .line 420
    .local v6, "wasScaling":Z
    iget-object v9, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {v9}, Lme/relex/photodraweeview/ScaleDragDetector;->isDragging()Z

    move-result v5

    .line 422
    .local v5, "wasDragging":Z
    iget-object v9, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {v9, p2}, Lme/relex/photodraweeview/ScaleDragDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 424
    .local v1, "handled":Z
    if-nez v6, :cond_3

    iget-object v9, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {v9}, Lme/relex/photodraweeview/ScaleDragDetector;->isScaling()Z

    move-result v9

    if-nez v9, :cond_3

    move v3, v7

    .line 425
    .local v3, "noScale":Z
    :goto_1
    if-nez v5, :cond_4

    iget-object v9, p0, Lme/relex/photodraweeview/Attacher;->mScaleDragDetector:Lme/relex/photodraweeview/ScaleDragDetector;

    invoke-virtual {v9}, Lme/relex/photodraweeview/ScaleDragDetector;->isDragging()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 426
    .local v2, "noDrag":Z
    :goto_2
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    :goto_3
    iput-boolean v7, p0, Lme/relex/photodraweeview/Attacher;->mBlockParentIntercept:Z

    .line 428
    iget-object v7, p0, Lme/relex/photodraweeview/Attacher;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v7, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 429
    const/4 v1, 0x1

    .line 432
    :cond_1
    return v1

    .line 402
    .end local v1    # "handled":Z
    .end local v2    # "noDrag":Z
    .end local v3    # "noScale":Z
    .end local v5    # "wasDragging":Z
    .end local v6    # "wasScaling":Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 403
    .local v4, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_2

    .line 404
    invoke-interface {v4, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 406
    :cond_2
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->cancelFling()V

    goto :goto_0

    .line 411
    .end local v4    # "parent":Landroid/view/ViewParent;
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 412
    .restart local v4    # "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_0

    .line 413
    invoke-interface {v4, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .end local v4    # "parent":Landroid/view/ViewParent;
    .restart local v1    # "handled":Z
    .restart local v5    # "wasDragging":Z
    .restart local v6    # "wasScaling":Z
    :cond_3
    move v3, v8

    .line 424
    goto :goto_1

    .restart local v3    # "noScale":Z
    :cond_4
    move v2, v8

    .line 425
    goto :goto_2

    .restart local v2    # "noDrag":Z
    :cond_5
    move v7, v8

    .line 426
    goto :goto_3

    .line 400
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lme/relex/photodraweeview/Attacher;->mAllowParentInterceptOnEdge:Z

    .line 167
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2
    .param p1, "maximumScale"    # F

    .prologue
    .line 110
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lme/relex/photodraweeview/Attacher;->checkZoomLevels(FFF)V

    .line 111
    iput p1, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    .line 112
    return-void
.end method

.method public setMediumScale(F)V
    .locals 2
    .param p1, "mediumScale"    # F

    .prologue
    .line 115
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lme/relex/photodraweeview/Attacher;->checkZoomLevels(FFF)V

    .line 116
    iput p1, p0, Lme/relex/photodraweeview/Attacher;->mMidScale:F

    .line 117
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2
    .param p1, "minimumScale"    # F

    .prologue
    .line 120
    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMidScale:F

    iget v1, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lme/relex/photodraweeview/Attacher;->checkZoomLevels(FFF)V

    .line 121
    iput p1, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    .line 122
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2
    .param p1, "newOnDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v1, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Lme/relex/photodraweeview/DefaultOnDoubleTapListener;-><init>(Lme/relex/photodraweeview/Attacher;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 174
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 175
    return-void
.end method

.method public setOnPhotoTapListener(Lme/relex/photodraweeview/OnPhotoTapListener;)V
    .locals 0
    .param p1, "listener"    # Lme/relex/photodraweeview/OnPhotoTapListener;

    .prologue
    .line 178
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher;->mPhotoTapListener:Lme/relex/photodraweeview/OnPhotoTapListener;

    .line 179
    return-void
.end method

.method public setOnScaleChangeListener(Lme/relex/photodraweeview/OnScaleChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lme/relex/photodraweeview/OnScaleChangeListener;

    .prologue
    .line 170
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher;->mScaleChangeListener:Lme/relex/photodraweeview/OnScaleChangeListener;

    .line 171
    return-void
.end method

.method public setOnViewTapListener(Lme/relex/photodraweeview/OnViewTapListener;)V
    .locals 0
    .param p1, "listener"    # Lme/relex/photodraweeview/OnViewTapListener;

    .prologue
    .line 182
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher;->mViewTapListener:Lme/relex/photodraweeview/OnViewTapListener;

    .line 183
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 157
    iput p1, p0, Lme/relex/photodraweeview/Attacher;->mOrientation:I

    .line 158
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lme/relex/photodraweeview/Attacher;->setScale(FZ)V

    .line 132
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 142
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v6

    .line 144
    .local v6, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-eqz v6, :cond_0

    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lme/relex/photodraweeview/Attacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    if-eqz p4, :cond_2

    .line 149
    new-instance v0, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lme/relex/photodraweeview/Attacher$AnimatedZoomRunnable;-><init>(Lme/relex/photodraweeview/Attacher;FFFF)V

    invoke-virtual {v6, v0}, Lcom/facebook/drawee/view/DraweeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 152
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->checkMatrixAndInvalidate()V

    goto :goto_0
.end method

.method public setScale(FZ)V
    .locals 4
    .param p1, "scale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 135
    invoke-virtual {p0}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 136
    .local v0, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Lme/relex/photodraweeview/Attacher;->setScale(FFFZ)V

    .line 139
    :cond_0
    return-void
.end method

.method public setZoomTransitionDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0xc8

    .line 162
    :cond_0
    iput-wide p1, p0, Lme/relex/photodraweeview/Attacher;->mZoomDuration:J

    .line 163
    return-void
.end method

.method public update(II)V
    .locals 0
    .param p1, "imageInfoWidth"    # I
    .param p2, "imageInfoHeight"    # I

    .prologue
    .line 194
    iput p1, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoWidth:I

    .line 195
    iput p2, p0, Lme/relex/photodraweeview/Attacher;->mImageInfoHeight:I

    .line 196
    invoke-direct {p0}, Lme/relex/photodraweeview/Attacher;->updateBaseMatrix()V

    .line 197
    return-void
.end method
