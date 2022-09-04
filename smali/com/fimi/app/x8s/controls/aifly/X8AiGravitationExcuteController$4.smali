.class Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8AiGravitationExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->closeNextUi(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

.field final synthetic val$isImgNextShow:Z


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    iput-boolean p2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->val$isImgNextShow:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 254
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 255
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->val$isImgNextShow:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$900(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$900(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    goto :goto_0
.end method
