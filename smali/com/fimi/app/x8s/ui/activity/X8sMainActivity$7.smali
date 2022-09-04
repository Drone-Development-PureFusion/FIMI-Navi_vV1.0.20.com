.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8MapVideoControllerListerner;


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
    .line 704
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public switchMapVideo(Z)V
    .locals 4
    .param p1, "isVideo"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 707
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    move-result-object v3

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->showCameraView(Z)V

    .line 708
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8RightIconForMapController;

    move-result-object v0

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/X8RightIconForMapController;->switch2Map(Z)V

    .line 709
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$900(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/X8AiTaskManager;->switchMapVideo(Z)V

    .line 711
    if-nez p1, :cond_2

    .line 713
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$300(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->setIvInterestMeteringVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->openUiByMapChange()V

    .line 722
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 707
    goto :goto_0

    :cond_1
    move v1, v2

    .line 708
    goto :goto_1

    .line 717
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$300(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->getIvInterestMeteringVisibility()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1202(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;I)I

    .line 718
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$300(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->setIvInterestMeteringVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$7;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->closeUi()V

    goto :goto_2
.end method
