.class Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8AiScrewExcuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->openNextUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 240
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 245
    return-void
.end method
