.class Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;
.super Ljava/lang/Object;
.source "X8DroneCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getCalibrationState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
        "<",
        "Lcom/fimi/x8sdk/dataparser/AckGetCaliState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetCaliState;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Lcom/fimi/x8sdk/dataparser/AckGetCaliState;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 355
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$8;->$SwitchMap$com$fimi$app$x8s$controls$fcsettting$X8DroneCalibrationController$GaliStete:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 358
    :pswitch_0
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getCaliStep()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 359
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->HORIZONTAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->access$102(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 360
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->switch2Horizontal()V

    goto :goto_0

    .line 364
    :pswitch_1
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getCaliStep()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 366
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v0

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_SAMPLE_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 367
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->nextStepCalibration()V

    .line 370
    :cond_1
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v0

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->onFailed()V

    goto :goto_0

    .line 376
    :pswitch_2
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getCaliStep()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 377
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->VERTICAL:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->access$102(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 378
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->switch2Vertical()V

    goto :goto_0

    .line 383
    :pswitch_3
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getCaliStep()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getCaliStep()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x82

    if-ne v0, v1, :cond_3

    .line 385
    :cond_2
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v0

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_SAMPLE_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 386
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->endStepCalibration()V

    .line 392
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v0

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->onFailed()V

    goto/16 :goto_0

    .line 387
    :cond_4
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v0

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 389
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->onSuccess()V

    goto :goto_1

    .line 399
    :pswitch_4
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v0

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_DONE:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 401
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->onSuccess()V

    goto/16 :goto_0

    .line 402
    :cond_5
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->getStatus()I

    move-result v0

    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->CALI_STA_ERR:Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/cmdsenum/X8Cali$CaliStepStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->onFailed()V

    goto/16 :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 351
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$6;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetCaliState;)V

    return-void
.end method
