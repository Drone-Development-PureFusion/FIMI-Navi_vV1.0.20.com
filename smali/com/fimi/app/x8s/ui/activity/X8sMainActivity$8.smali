.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiAutoPhotoConfirmClick(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 768
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->showAutoPhtoView(I)V

    .line 769
    return-void
.end method

.method public onAiFollowConfirmClick(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 728
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->showAiFollowView(I)V

    .line 729
    return-void
.end method

.method public onAiGravitationConfimClick()V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->showAiGravitationView()V

    .line 759
    return-void
.end method

.method public onAiLandingConfirmClick()V
    .locals 0

    .prologue
    .line 779
    return-void
.end method

.method public onAiLineConfirmClick(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->showAiLineView(I)V

    .line 744
    return-void
.end method

.method public onAiLineConfirmClickByHistory(IJI)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "lineId"    # J
    .param p4, "type"    # I

    .prologue
    .line 763
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->showAiLineView(IJI)V

    .line 764
    return-void
.end method

.method public onAiPoint2PointConfirmClick()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->showAiPoint2PointView()V

    .line 734
    return-void
.end method

.method public onAiSarConfimClick()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$900(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->openAiSarUi()V

    .line 754
    return-void
.end method

.method public onAiScrewConfimCick()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->showAiScrewView()V

    .line 749
    return-void
.end method

.method public onAiSurroundPointConfirmClick()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->showAiSurroundView()V

    .line 739
    return-void
.end method

.method public onAiTakeOffConfirmClick()V
    .locals 0

    .prologue
    .line 774
    return-void
.end method

.method public onCloseAiUi(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "isShowRightIcon"    # Z

    .prologue
    .line 783
    if-eqz p1, :cond_0

    .line 784
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$700(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 785
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->openUi()V

    .line 786
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->openUi()V

    .line 787
    if-eqz p2, :cond_0

    .line 788
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->openUiForSetting()V

    .line 792
    :cond_0
    return-void
.end method

.method public onShowTakeoffLanding()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$8;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->showTakeoffLanding()V

    .line 797
    return-void
.end method
