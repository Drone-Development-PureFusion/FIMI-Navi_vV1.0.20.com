.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;
.super Lcom/fimi/widget/impl/NoDoubleClickListener;
.source "X8FlightLogListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;
    .param p2, "x0"    # I

    .prologue
    .line 310
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-direct {p0, p2}, Lcom/fimi/widget/impl/NoDoubleClickListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onNoDoubleClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    new-instance v1, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;)V

    invoke-direct {v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;-><init>(Landroid/content/Context;Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;)V

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$2302(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;)Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    .line 348
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$2300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->show()V

    .line 349
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$2300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 350
    return-void
.end method
