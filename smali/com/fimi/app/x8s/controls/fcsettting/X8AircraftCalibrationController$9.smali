.class Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;
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
    .line 500
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 503
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$2300(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$2400(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_modify_aircraft_calibration_exit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "m":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    new-instance v3, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v4}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$2500(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-direct {v3, v4, v1, v0, v5}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-static {v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$2202(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    .line 509
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 514
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;->access$2600(Lcom/fimi/app/x8s/controls/fcsettting/X8AircraftCalibrationController;)V

    goto :goto_0
.end method
