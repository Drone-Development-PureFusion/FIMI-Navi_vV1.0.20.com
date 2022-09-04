.class Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;
.super Ljava/lang/Object;
.source "X8AiLineExcuteController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Z)V

    .line 788
    return-void
.end method

.method public onExcuteClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 792
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->closeNextUi(Z)V

    .line 793
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$800(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$900(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiLineState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiLineState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Lcom/fimi/app/x8s/enums/X8AiLineState;)Lcom/fimi/app/x8s/enums/X8AiLineState;

    .line 798
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1100(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1200(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 800
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fimi/app/x8s/X8Application;->enableGesture:Z

    .line 802
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setAiVcOpen()V

    .line 804
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->openVcToggle()V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1400(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLineInterestPointController;->showView(Z)V

    .line 807
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->startAiLineProcess()V

    .line 808
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;->removeInterstPointByRunning()V

    .line 809
    return-void
.end method

.method public onSaveClick()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Z)V

    .line 814
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    .line 815
    return-void
.end method
