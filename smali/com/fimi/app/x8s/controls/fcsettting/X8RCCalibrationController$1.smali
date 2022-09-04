.class Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;
.super Ljava/lang/Object;
.source "X8RCCalibrationController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->breakOutDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 122
    return-void
.end method

.method public onRight()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->rcCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 130
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;)Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CalibrationListener;->onCalibrationReturn()V

    .line 132
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RCCalibrationController;->closeUi()V

    .line 134
    :cond_1
    return-void
.end method
