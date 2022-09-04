.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;
.super Ljava/lang/Object;
.source "X8FlightLogListController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->synCompleteRefreshUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

.field final synthetic val$isSucceed:Z


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    iput-boolean p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->val$isSucceed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 406
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8SingleCustomPlaybackSynDialog;->dismiss()V

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->dismiss()V

    .line 411
    :cond_3
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->val$isSucceed:Z

    if-eqz v0, :cond_5

    .line 412
    const-string v3, ""

    .line 413
    .local v3, "synCompleteHint":Ljava/lang/String;
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$2500(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 431
    :goto_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    if-nez v0, :cond_4

    .line 432
    iget-object v6, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    new-instance v0, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_complete:I

    .line 433
    invoke-virtual {v2, v4}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_success_icon:I

    new-instance v5, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10$1;

    invoke-direct {v5, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;)V

    invoke-direct/range {v0 .. v5}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V

    .line 432
    invoke-static {v6, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    .line 463
    .end local v3    # "synCompleteHint":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;->show()V

    goto :goto_0

    .line 415
    .restart local v3    # "synCompleteHint":Ljava/lang/String;
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_complete_hint:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_type_one:I

    invoke-virtual {v2, v4}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 417
    goto :goto_1

    .line 419
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_complete_hint:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_type_two:I

    invoke-virtual {v2, v4}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 421
    goto :goto_1

    .line 423
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_complete_hint:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v4, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_type_three:I

    invoke-virtual {v2, v4}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 425
    goto/16 :goto_1

    .line 427
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_complete_hint_all:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 447
    .end local v3    # "synCompleteHint":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    move-result-object v0

    if-nez v0, :cond_4

    .line 448
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    new-instance v4, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_failure:I

    .line 449
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_playback_syn_failure_hint_one:I

    .line 450
    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/fimi/app/x8s/R$drawable;->x8_calibration_fail_icon:I

    new-instance v9, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10$2;

    invoke-direct {v9, p0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10$2;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$10;)V

    invoke-direct/range {v4 .. v9}, Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/fimi/app/x8s/widget/X8IMUCustomDialog$onDialogButtonClickListener;)V

    .line 448
    invoke-static {v0, v4}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1202(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;)Lcom/fimi/app/x8s/widget/X8IMUCustomDialog;

    goto/16 :goto_2

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
