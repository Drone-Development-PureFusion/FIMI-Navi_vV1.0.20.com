.class Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;
.super Ljava/util/TimerTask;
.source "X8CloudCalibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;)V

    iput-object v1, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CheckTask;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->checkLisenter:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->checkCloudCalibrationProgress(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 257
    :cond_1
    return-void
.end method
