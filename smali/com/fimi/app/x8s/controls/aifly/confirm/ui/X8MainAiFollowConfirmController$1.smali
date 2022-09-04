.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;
.super Ljava/lang/Object;
.source "X8MainAiFollowConfirmController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->openUi()V
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
    .line 84
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 88
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 89
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->access$200(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->access$102(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;I)I

    .line 90
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->access$400(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->access$302(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;I)I

    .line 91
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 93
    .local v1, "h":I
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->access$600(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    invoke-static {v6}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->access$700(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 94
    .local v0, "animatorY":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 96
    return-void
.end method
