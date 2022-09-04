.class Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$3;
.super Ljava/lang/Object;
.source "X8DroneCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->endStepCalibration()V
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
    .line 295
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;->NEXT_END:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->access$102(Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$GaliStete;

    .line 303
    :cond_0
    return-void
.end method
