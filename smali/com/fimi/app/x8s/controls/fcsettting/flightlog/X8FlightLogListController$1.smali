.class Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;
.super Landroid/os/Handler;
.source "X8FlightLogListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;-><init>(Landroid/view/View;Lcom/fimi/widget/CustomLoadManage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

.field final synthetic val$customLoadManage:Lcom/fimi/widget/CustomLoadManage;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Lcom/fimi/widget/CustomLoadManage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    iput-object p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->val$customLoadManage:Lcom/fimi/widget/CustomLoadManage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->val$customLoadManage:Lcom/fimi/widget/CustomLoadManage;

    invoke-static {}, Lcom/fimi/widget/CustomLoadManage;->dismiss()V

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1100(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 122
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$002(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)Z

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/kernel/fds/FdsCount;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/fds/FdsCount;->setComplete(I)V

    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/kernel/fds/FdsCount;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/fds/FdsCount;->setTotal(I)V

    .line 95
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->getSection()Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/app/x8s/adapter/section/X8FlightLogSection;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->getPlaybackTotalTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->getPlaybackDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$002(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)Z

    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;->clear()V

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0 s"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "0 m"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$002(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)Z

    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->stopLoading()V

    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$800(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/app/x8s/widget/X8AiAutoPhotoLoadingView;->setVisibility(I)V

    goto/16 :goto_0

    .line 115
    :pswitch_3
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$900(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;)V

    goto/16 :goto_0

    .line 118
    :pswitch_4
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;->access$1000(Lcom/fimi/app/x8s/controls/fcsettting/flightlog/X8FlightLogListController;Z)V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
