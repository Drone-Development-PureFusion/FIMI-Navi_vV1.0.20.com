.class Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;
.super Ljava/lang/Object;
.source "MultiTouchImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->animateScale(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

.field final synthetic val$px:F

.field final synthetic val$py:F


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    iput p2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;->val$px:F

    iput p3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;->val$py:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 237
    .local v1, "scale":F
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->getScale()F

    move-result v2

    div-float v0, v1, v2

    .line 239
    .local v0, "ds":F
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    iget v3, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;->val$px:F

    iget v4, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;->val$py:F

    invoke-virtual {v2, v0, v3, v4}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setScale(FFF)V

    .line 240
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView$3;->this$0:Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;->setImageMatrix()V

    .line 241
    return-void
.end method
