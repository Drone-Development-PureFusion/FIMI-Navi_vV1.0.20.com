.class Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$7;
.super Landroid/os/Handler;
.source "X8DroneCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;
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
    .line 440
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 443
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 444
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController;->getCalibrationState()V

    .line 445
    const/4 v0, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8DroneCalibrationController$7;->sendEmptyMessageDelayed(IJ)Z

    .line 446
    return-void
.end method
