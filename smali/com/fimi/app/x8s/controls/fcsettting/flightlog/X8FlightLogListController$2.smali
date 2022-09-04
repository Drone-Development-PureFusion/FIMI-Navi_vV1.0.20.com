.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$2;
.super Ljava/lang/Object;
.source "X8FlightLogListController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->testNetWorkOnSynProgress()V
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
    .line 164
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleButtonClick()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 168
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)V

    .line 169
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->dismiss()V

    .line 172
    :cond_0
    return-void
.end method
