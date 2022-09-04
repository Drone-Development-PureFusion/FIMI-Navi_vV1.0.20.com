.class Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;
.super Ljava/lang/Object;
.source "X8AiSurroundExcuteController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)V

    .line 366
    return-void
.end method

.method public onExcuteClick()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 370
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->closeNextUi(Z)V

    .line 371
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1202(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;D)D

    .line 372
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1302(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;D)D

    .line 373
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1402(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)Z

    .line 374
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1502(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)Z

    .line 375
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0, v4}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1602(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Z)Z

    .line 376
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1700(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiSuroundState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;Lcom/fimi/app/x8s/enums/X8AiSuroundState;)Lcom/fimi/app/x8s/enums/X8AiSuroundState;

    .line 378
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1800(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$1900(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->setAiVcOpen()V

    .line 381
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->openVcToggle()V

    .line 382
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;

    move-result-object v1

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;->setAiSurroundCircle(DDF)V

    .line 383
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController$4;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;->access$2000(Lcom/fimi/app/x8s/controls/aifly/X8AiSurroundExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiSurroundExcuteControllerListener;->onSurroundRunning()V

    .line 384
    return-void
.end method

.method public onSaveClick()V
    .locals 0

    .prologue
    .line 389
    return-void
.end method
