.class Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$5;
.super Ljava/lang/Object;
.source "X8AircraftCalibrationController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->quitHorizonalCalibration()V
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
    .line 380
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$5;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 383
    return-void
.end method
