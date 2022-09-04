.class Lcom/fimi/app/x8s/widget/X8RulerView$1;
.super Ljava/lang/Object;
.source "X8RulerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8RulerView;->autoVelocityScroll(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

.field final synthetic val$xVelocity:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8RulerView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8RulerView;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iput p2, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->val$xVelocity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-static {v1}, Lcom/fimi/app/x8s/widget/X8RulerView;->access$000(Lcom/fimi/app/x8s/widget/X8RulerView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 261
    .local v0, "t":F
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget v2, v2, Lcom/fimi/app/x8s/widget/X8RulerView;->preTime:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->val$xVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/fimi/app/x8s/widget/X8RulerView;->moveX:F

    .line 262
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget v1, v1, Lcom/fimi/app/x8s/widget/X8RulerView;->preTime:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iput v0, v1, Lcom/fimi/app/x8s/widget/X8RulerView;->preTime:F

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget v1, v1, Lcom/fimi/app/x8s/widget/X8RulerView;->preTime:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget v2, v1, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget v3, v3, Lcom/fimi/app/x8s/widget/X8RulerView;->moveX:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    .line 267
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget v1, v1, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8RulerView;->access$100(Lcom/fimi/app/x8s/widget/X8RulerView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 268
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8RulerView;->access$100(Lcom/fimi/app/x8s/widget/X8RulerView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v1, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    .line 272
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8RulerView;->invalidate()V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget v1, v1, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8RulerView;->access$100(Lcom/fimi/app/x8s/widget/X8RulerView;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-static {v3}, Lcom/fimi/app/x8s/widget/X8RulerView;->access$200(Lcom/fimi/app/x8s/widget/X8RulerView;)F

    move-result v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8RulerView;->access$100(Lcom/fimi/app/x8s/widget/X8RulerView;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8RulerView$1;->this$0:Lcom/fimi/app/x8s/widget/X8RulerView;

    invoke-static {v3}, Lcom/fimi/app/x8s/widget/X8RulerView;->access$200(Lcom/fimi/app/x8s/widget/X8RulerView;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v1, Lcom/fimi/app/x8s/widget/X8RulerView;->lastMoveX:F

    goto :goto_1
.end method
