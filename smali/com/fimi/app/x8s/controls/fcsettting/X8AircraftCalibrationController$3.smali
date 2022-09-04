.class Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;
.super Ljava/lang/Object;
.source "X8AircraftCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getHorizonalData()V
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
    .line 306
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 309
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$702(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;I)I

    .line 310
    iget-boolean v1, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 312
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 313
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 314
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getErrDes()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 316
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 317
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;

    .line 318
    .local v0, "ackGetCaliState":Lcom/fimi/x8sdk/dataparser/AckGetCaliState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 319
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 320
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 321
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;I)V

    .line 338
    .end local v0    # "ackGetCaliState":Lcom/fimi/x8sdk/dataparser/AckGetCaliState;
    :cond_1
    :goto_0
    return-void

    .line 325
    .restart local v0    # "ackGetCaliState":Lcom/fimi/x8sdk/dataparser/AckGetCaliState;
    :cond_2
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 326
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->stopFlick()V

    .line 327
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 328
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 329
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    goto :goto_0

    .line 332
    :cond_3
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getCaliStep()I

    move-result v1

    sget-object v2, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->CALI_STEP_ORTH:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;

    invoke-virtual {v2}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStep;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 333
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8AircrftCalibrationIndicatorView;->setSelected(I)V

    goto :goto_0
.end method
