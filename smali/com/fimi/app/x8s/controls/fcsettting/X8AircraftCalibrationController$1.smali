.class Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;
.super Landroid/os/Handler;
.source "X8AircraftCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;
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
    .line 93
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isConnect()Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 100
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v3, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v0, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 101
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$402(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Z)Z

    .line 110
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_1

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_cloud_gimbal_tip_9:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 113
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 114
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 117
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    return-void

    :cond_2
    move v0, v2

    .line 98
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$602(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Z)Z

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$402(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Z)Z

    goto :goto_2
.end method
