.class Lme/relex/photodraweeview/Attacher$FlingRunnable;
.super Ljava/lang/Object;
.source "Attacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/photodraweeview/Attacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field private final mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field final synthetic this$0:Lme/relex/photodraweeview/Attacher;


# direct methods
.method public constructor <init>(Lme/relex/photodraweeview/Attacher;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 480
    iput-object p1, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-static {p2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 482
    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 486
    return-void
.end method

.method public fling(IIII)V
    .locals 12
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v0}, Lme/relex/photodraweeview/Attacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v11

    .line 490
    .local v11, "rect":Landroid/graphics/RectF;
    if-nez v11, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    iget v0, v11, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 497
    .local v1, "startX":I
    int-to-float v0, p1

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 498
    const/4 v5, 0x0

    .line 499
    .local v5, "minX":I
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v3, p1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 504
    .local v6, "maxX":I
    :goto_1
    iget v0, v11, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 505
    .local v2, "startY":I
    int-to-float v0, p2

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 506
    const/4 v7, 0x0

    .line 507
    .local v7, "minY":I
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v3, p2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 512
    .local v8, "maxY":I
    :goto_2
    iput v1, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentX:I

    .line 513
    iput v2, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentY:I

    .line 515
    if-ne v1, v6, :cond_2

    if-eq v2, v8, :cond_0

    .line 516
    :cond_2
    iget-object v0, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v10}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIIIII)V

    goto :goto_0

    .line 501
    .end local v2    # "startY":I
    .end local v5    # "minX":I
    .end local v6    # "maxX":I
    .end local v7    # "minY":I
    .end local v8    # "maxY":I
    :cond_3
    move v6, v1

    .restart local v6    # "maxX":I
    move v5, v1

    .restart local v5    # "minX":I
    goto :goto_1

    .line 509
    .restart local v2    # "startY":I
    :cond_4
    move v8, v2

    .restart local v8    # "maxY":I
    move v7, v2

    .restart local v7    # "minY":I
    goto :goto_2
.end method

.method public run()V
    .locals 6

    .prologue
    .line 521
    iget-object v3, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v3, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-virtual {v3}, Lme/relex/photodraweeview/Attacher;->getDraweeView()Lcom/facebook/drawee/view/DraweeView;

    move-result-object v0

    .line 527
    .local v0, "draweeView":Lcom/facebook/drawee/view/DraweeView;, "Lcom/facebook/drawee/view/DraweeView<Lcom/facebook/drawee/generic/GenericDraweeHierarchy;>;"
    if-eqz v0, :cond_0

    iget-object v3, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 528
    iget-object v3, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    .line 529
    .local v1, "newX":I
    iget-object v3, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v2

    .line 530
    .local v2, "newY":I
    iget-object v3, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v3}, Lme/relex/photodraweeview/Attacher;->access$400(Lme/relex/photodraweeview/Attacher;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentY:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 531
    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->invalidate()V

    .line 532
    iput v1, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentX:I

    .line 533
    iput v2, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->mCurrentY:I

    .line 534
    iget-object v3, p0, Lme/relex/photodraweeview/Attacher$FlingRunnable;->this$0:Lme/relex/photodraweeview/Attacher;

    invoke-static {v3, v0, p0}, Lme/relex/photodraweeview/Attacher;->access$100(Lme/relex/photodraweeview/Attacher;Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
