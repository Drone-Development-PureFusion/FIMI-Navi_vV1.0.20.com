.class Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;
.super Ljava/lang/Object;
.source "X8MapVideoCardView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->performAnim(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

.field final synthetic val$scaleView:Landroid/view/View;

.field final synthetic val$viewAnim:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8MapVideoCardView;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->val$viewAnim:Landroid/view/View;

    iput-object p3, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->val$scaleView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    .local v0, "height":I
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget v2, v2, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_WIDTH:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget v3, v3, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    div-int v1, v2, v3

    .line 210
    .local v1, "width":I
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->val$viewAnim:Landroid/view/View;

    invoke-virtual {v2, v3, v1, v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 212
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-static {v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->access$000(Lcom/fimi/app/x8s/widget/X8MapVideoCardView;)[Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/media/FimiH264Video;

    invoke-virtual {v2, v1, v0}, Lcom/fimi/app/x8s/media/FimiH264Video;->change9GridSize(II)V

    .line 214
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget v2, v2, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MAX_HEIGHT:I

    if-ne v0, v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changeOrderFlag()V

    .line 216
    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->val$scaleView:Landroid/view/View;

    iget-object v4, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget v4, v4, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    iget-object v5, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$2;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget v5, v5, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 218
    :cond_0
    return-void
.end method
