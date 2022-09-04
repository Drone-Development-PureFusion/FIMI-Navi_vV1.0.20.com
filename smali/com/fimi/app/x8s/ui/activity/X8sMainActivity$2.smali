.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8GestureListener;


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
    .line 482
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlingResult(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 486
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    .line 487
    .local v0, "drone":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    if-ne p1, v3, :cond_1

    .line 489
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->NORMAL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    if-ne v1, v2, :cond_0

    .line 490
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->appFullSceen(Z)V

    .line 491
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_in_fullscreen:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 492
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->FULL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$102(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/enums/X8ScreenEnum;)Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$100(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->FULL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    if-ne v1, v2, :cond_0

    .line 498
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v1, v4}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->appFullSceen(Z)V

    .line 499
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_out_fullscreen:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 500
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    sget-object v2, Lcom/fimi/app/x8s/enums/X8ScreenEnum;->NORMAL:Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$102(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;Lcom/fimi/app/x8s/enums/X8ScreenEnum;)Lcom/fimi/app/x8s/enums/X8ScreenEnum;

    goto :goto_0
.end method

.method public onInterestMetering(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 510
    invoke-static {}, Lcom/fimi/kernel/Constants;->isFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    .line 514
    .local v0, "drone":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/kernel/utils/AbViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v2}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->getHandleViewWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$2;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$300(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fimi/app/x8s/controls/camera/X8CameraInterestMeteringController;->setImageViewXY(FF)V

    goto :goto_0
.end method
