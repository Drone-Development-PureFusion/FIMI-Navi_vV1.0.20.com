.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1$1;
.super Ljava/lang/Object;
.source "X8FlightLogListController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->onRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1$1;->this$2:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleButtonClick()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1$1;->this$2:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 331
    return-void
.end method
