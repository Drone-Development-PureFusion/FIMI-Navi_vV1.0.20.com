.class Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;
.super Ljava/lang/Object;
.source "X8AircraftCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->getSixPointData()V
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
    .line 279
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 282
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$702(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;I)I

    .line 283
    iget-boolean v1, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getErrDes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 285
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 286
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 287
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 289
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 290
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;

    .line 291
    .local v0, "ackGetCaliState":Lcom/fimi/x8sdk/dataparser/AckGetCaliState;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$002(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Z)Z

    .line 292
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/x8sdk/dataparser/AckGetCaliState;)V

    .line 294
    .end local v0    # "ackGetCaliState":Lcom/fimi/x8sdk/dataparser/AckGetCaliState;
    :cond_1
    return-void
.end method
