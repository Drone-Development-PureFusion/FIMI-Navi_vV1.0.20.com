.class Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;
.super Ljava/util/TimerTask;
.source "X8RCCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->checkRcCalibrationProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 573
    :cond_0
    return-void
.end method
