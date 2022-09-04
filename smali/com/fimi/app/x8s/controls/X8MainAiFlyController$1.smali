.class Lcom/fimi/app/x8s/controls/X8MainAiFlyController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8MainAiFlyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 389
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->access$000(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->access$100(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 391
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$1;->this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onCloseConfirmUi()V

    .line 392
    return-void
.end method
