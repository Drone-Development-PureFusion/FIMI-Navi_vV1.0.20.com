.class Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8AiHeadLockExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->closeNextUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 191
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiHeadLockExcuteController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    return-void
.end method
