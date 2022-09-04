.class Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;
.super Ljava/lang/Object;
.source "X8CloudCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalibrationProgressListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;


# direct methods
.method private constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;
    .param p2, "x1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$1;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 275
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;

    .line 277
    .local v0, "caliState":Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->getStatus()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 278
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->doing:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-ne v1, v2, :cond_0

    .line 279
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    .line 280
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;)V

    .line 287
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    move-result-object v1

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->fail:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    if-eq v1, v2, :cond_1

    .line 288
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;)Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)V

    .line 292
    .end local v0    # "caliState":Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;
    :cond_1
    return-void

    .line 282
    .restart local v0    # "caliState":Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;
    :cond_2
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;->getStatus()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 283
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;->finish:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;)Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$GimbalStatus;

    goto :goto_0

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController$CalibrationProgressListener;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;

    invoke-static {v1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/X8CloudCalibrationController;Lcom/fimi/x8sdk/dataparser/AckCloudCaliState;)V

    goto :goto_0
.end method
