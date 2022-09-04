.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;
.super Ljava/lang/Object;
.source "X8GimbalAdvancedSetupController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip$OnProgressConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 82
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)Lcom/fimi/x8sdk/controller/X8GimbalManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->vsbGimbalGain:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->getCurrentValue()F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/X8GimbalManager;->setGcGain(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 93
    :cond_0
    return-void
.end method
