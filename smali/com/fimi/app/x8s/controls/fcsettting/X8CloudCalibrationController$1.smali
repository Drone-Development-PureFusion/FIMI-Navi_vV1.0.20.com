.class Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;
.super Ljava/lang/Object;
.source "X8CloudCalibrationController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->breakOutDone()V
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
    .line 93
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 97
    return-void
.end method

.method public onRight()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1$1;

    invoke-direct {v2, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->cloudCalibration(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 114
    return-void
.end method
