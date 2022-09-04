.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;
.super Ljava/lang/Object;
.source "X8FlightLogListController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->onNoDoubleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public onRight()V
    .locals 7

    .prologue
    .line 322
    invoke-static {}, Lcom/fimi/kernel/utils/DNSLookupThread;->isDSNSuceess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v6, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    new-instance v0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v2, v2, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_failure:I

    .line 325
    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v3, v3, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_failure_hint:I

    .line 326
    invoke-virtual {v3, v4}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_fail_icon:I

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V

    .line 324
    invoke-static {v6, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 333
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->show()V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->getSection()Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$2400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->getSection()Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->setX8FlightLogFiles(Ljava/util/List;)V

    .line 342
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$2300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->getX8PlaybackSynType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$2502(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;I)I

    .line 343
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$2400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$2300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8PlaybackDoubleCustomDialog;->getX8PlaybackSynType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->synFlightPlaybackData(I)V

    .line 344
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$002(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)Z

    goto :goto_0

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$8;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$2400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/presenter/X8FlightLogListPresenter;->setX8FlightLogFiles(Ljava/util/List;)V

    goto :goto_1
.end method
