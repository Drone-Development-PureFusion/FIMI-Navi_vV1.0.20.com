.class Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8AiD2PExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->closeNextUi(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

.field final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    iput-boolean p2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;->val$b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 297
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 298
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 300
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;->val$b:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8MainPitchingAngle;->setVisibility(I)V

    .line 307
    :cond_0
    return-void
.end method
