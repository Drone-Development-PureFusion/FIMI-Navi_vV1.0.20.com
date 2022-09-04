.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8MainAiFollowConfirmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->closeAiUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->access$800(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 122
    return-void
.end method
