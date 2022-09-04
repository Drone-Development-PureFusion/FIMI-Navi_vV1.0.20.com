.class Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$1;
.super Ljava/lang/Object;
.source "SwipeToDismissTouchListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;->settleView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$1;->this$0:Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 183
    .local v0, "targetY":F
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$1;->this$0:Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;->access$000(Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;)Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$1;->this$0:Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;->access$000(Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener;)Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/SwipeToDismissTouchListener$Callback;->onMove(F)V

    .line 186
    :cond_0
    return-void
.end method
