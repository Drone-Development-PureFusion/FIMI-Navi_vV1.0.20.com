.class Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$2;
.super Ljava/lang/Object;
.source "X8CloudCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->startCalibration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)V

    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)V

    .line 137
    :cond_0
    return-void
.end method
