.class Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8AiAerialPhotographExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->closeNextUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 210
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    return-void
.end method
