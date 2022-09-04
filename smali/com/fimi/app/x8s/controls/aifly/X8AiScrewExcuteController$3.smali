.class Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8AiScrewExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->closeNextUi(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

.field final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    iput-boolean p2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;->val$b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 288
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 289
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 291
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;->val$b:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    :cond_0
    return-void
.end method
