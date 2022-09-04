.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10$2;
.super Ljava/lang/Object;
.source "X8FlightLogListController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10$2;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleButtonClick()V
    .locals 4

    .prologue
    .line 454
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10$2;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 455
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 456
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 457
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10$2;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    return-void
.end method
