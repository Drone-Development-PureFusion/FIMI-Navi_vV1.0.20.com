.class Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8AiAutoPhototExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->closeNextUi(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

.field final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    iput-boolean p2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;->val$b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 272
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 274
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;->val$b:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;->access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiAutoPhototExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    :cond_0
    return-void
.end method
