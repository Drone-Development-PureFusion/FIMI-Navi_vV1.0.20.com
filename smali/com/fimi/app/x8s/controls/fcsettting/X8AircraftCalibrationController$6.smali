.class Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;
.super Ljava/lang/Object;
.source "X8AircraftCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->startHorizonalCalibration()V
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
    .line 393
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$702(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;I)I

    .line 397
    iget-boolean v0, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->GET_CAIL_ORTH:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 399
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 400
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setOutTime(I)V

    .line 407
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 403
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 404
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 405
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$2100(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getErrDes()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
