.class Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$1;
.super Ljava/lang/Object;
.source "X8DroneCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->startCalibration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 267
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->mTimeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 269
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setOutTime(I)V

    .line 270
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationStart()V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->access$102(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    goto :goto_0
.end method
