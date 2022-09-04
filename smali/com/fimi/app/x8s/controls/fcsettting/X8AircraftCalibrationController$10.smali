.class Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$10;
.super Ljava/lang/Object;
.source "X8AircraftCalibrationController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->initActions()V
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
    .line 517
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$702(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;I)I

    .line 521
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->SEND_RESTART_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 523
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$2700(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    .line 528
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;->SEND_CALI_SIX_POINT:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$302(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;)Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$GaliStete;

    .line 526
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$2800(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    goto :goto_0
.end method
