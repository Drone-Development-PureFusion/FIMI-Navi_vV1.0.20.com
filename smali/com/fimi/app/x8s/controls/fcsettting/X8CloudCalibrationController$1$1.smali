.class Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1$1;
.super Ljava/lang/Object;
.source "X8CloudCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;->onRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->closeUi()V

    .line 110
    :cond_0
    return-void
.end method
