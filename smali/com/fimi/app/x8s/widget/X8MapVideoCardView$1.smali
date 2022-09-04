.class Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;
.super Ljava/lang/Object;
.source "X8MapVideoCardView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/widget/X8MapVideoCardView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iput-object p2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->val$scaleView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 175
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changeOrderFlag()V

    .line 176
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->access$000(Lcom/fimi/app/x8s/widget/X8MapVideoCardView;)[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, v4

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 177
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->val$scaleView:Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget v2, v2, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    iget-object v3, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget v3, v3, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->changSize(Landroid/view/View;II)V

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    invoke-static {v0}, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->access$000(Lcom/fimi/app/x8s/widget/X8MapVideoCardView;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/media/FimiH264Video;

    iget-object v1, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget v1, v1, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_WIDTH:I

    iget-object v2, p0, Lcom/fimi/app/x8s/widget/X8MapVideoCardView$1;->this$0:Lcom/fimi/app/x8s/widget/X8MapVideoCardView;

    iget v2, v2, Lcom/fimi/app/x8s/widget/X8MapVideoCardView;->MIN_HEIGHT:I

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/media/FimiH264Video;->change9GridSize(II)V

    .line 181
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 191
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 171
    return-void
.end method
