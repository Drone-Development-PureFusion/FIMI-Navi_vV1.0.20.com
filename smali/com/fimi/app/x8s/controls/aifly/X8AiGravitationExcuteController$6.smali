.class Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;
.super Ljava/lang/Object;
.source "X8AiGravitationExcuteController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Z)V

    .line 352
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1200(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onExcuteClick()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 361
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Z)V

    .line 362
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1200(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->isFullVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$102(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;)Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .line 369
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$900(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1000(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;->onAiGravitaionRunning()V

    .line 371
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveClick()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method
