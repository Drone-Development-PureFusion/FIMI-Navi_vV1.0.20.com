.class Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;
.super Landroid/os/Handler;
.source "X8BlackBoxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->notifyDataSetChanged()V

    .line 57
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/kernel/fds/FdsCount;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/fds/FdsCount;->setComplete(I)V

    .line 58
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/kernel/fds/FdsCount;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/fds/FdsCount;->setTotal(I)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->clear()V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
