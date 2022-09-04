.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;
.super Ljava/lang/Object;
.source "X8FlightLogListController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->startSyn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleButtonClick()V
    .locals 7

    .prologue
    .line 373
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    invoke-static {v0}, Lcom/fimi/x8sdk/service/DownFlightPlaybackService;->setState(Lcom/fimi/network/DownFwService$DownState;)V

    .line 374
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsManager;->stopAll()V

    .line 375
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    new-instance v0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_cancle:I

    .line 377
    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_end_cancle:I

    .line 378
    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_fail_icon:I

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V

    .line 376
    invoke-static {v6, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 386
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$9;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->show()V

    .line 389
    :cond_0
    return-void
.end method
