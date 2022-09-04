.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8MainRightMenuListener;


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
    .line 563
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiFlyClick()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->closeAiUi(Z)V

    .line 568
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$500(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->showAiUi()V

    .line 569
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->closeUi()V

    .line 570
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$700(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->closeUi()V

    .line 571
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->closeUi()V

    .line 572
    return-void
.end method

.method public onCameraSettingClick()V
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->closeAiUi(Z)V

    .line 578
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->openUi()V

    .line 579
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$700(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 580
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setBackGround(I)V

    .line 588
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->closeUi()V

    .line 583
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$700(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->closeUi()V

    .line 584
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$800(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FiveKeyHintController;->closeUi()V

    .line 585
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->showCameraSettingUI()V

    .line 586
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$color;->black_80:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->setBackGround(I)V

    goto :goto_0
.end method

.method public onCameraShutterClick()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->closeAiUi(Z)V

    .line 593
    return-void
.end method

.method public onCameraSwitching()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$500(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->getCameraSetting(Z)V

    .line 619
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$900(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->updateSarValue()V

    .line 620
    return-void
.end method

.method public onLocationClick()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->onLocationEvnent()V

    .line 598
    return-void
.end method

.method public onSetHomeClick(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0, p1}, Lcom/fimi/app/x8s/manager/X8MapGetCityManager;->onSetHomeEvent(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;I)V

    .line 613
    return-void
.end method

.method public turnCameraModel()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$4;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->defaultVal()V

    .line 608
    :cond_0
    return-void
.end method
