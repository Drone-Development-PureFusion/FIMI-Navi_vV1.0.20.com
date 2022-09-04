.class Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8AiSurroundExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->closeNextUi(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

.field final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    iput-boolean p2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;->val$b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 277
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 279
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;->val$b:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :cond_0
    return-void
.end method
