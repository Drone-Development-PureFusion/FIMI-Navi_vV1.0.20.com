.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$4;
.super Ljava/lang/Object;
.source "X8FlightLogListController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->showUploadingEixtDialog()V
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
    .line 228
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsManager;->stopAll()V

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8GeneraModifyModeControllerListener;->returnBack()V

    .line 241
    return-void
.end method
