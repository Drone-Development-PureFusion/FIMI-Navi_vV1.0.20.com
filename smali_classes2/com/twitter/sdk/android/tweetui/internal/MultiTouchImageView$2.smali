.class Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiTouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 99
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getScale()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->animateScale(FFFF)V

    .line 104
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getScale()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->animateScale(FFFF)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setTranslate(FF)V

    .line 88
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setImageMatrix()V

    .line 90
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    iget-boolean v0, v0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->allowIntercept:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$2;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->requestDisallowInterceptTouchEvent(Z)V

    .line 94
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
