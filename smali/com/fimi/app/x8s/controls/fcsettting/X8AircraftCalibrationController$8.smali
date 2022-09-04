.class Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$8;
.super Ljava/lang/Object;
.source "X8AircraftCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->reStartCalibration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$702(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;I)I

    .line 447
    iget-boolean v0, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->GET_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 450
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setOutTime(I)V

    .line 456
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 453
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 454
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;I)V

    goto :goto_0
.end method
