.class Lcom/fimi/widget/NetworkDialog$1;
.super Landroid/os/Handler;
.source "NetworkDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/widget/NetworkDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/widget/NetworkDialog;


# direct methods
.method constructor <init>(Lcom/fimi/widget/NetworkDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/widget/NetworkDialog;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fimi/widget/NetworkDialog$1;->this$0:Lcom/fimi/widget/NetworkDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog$1;->this$0:Lcom/fimi/widget/NetworkDialog;

    invoke-static {v0}, Lcom/fimi/widget/NetworkDialog;->access$000(Lcom/fimi/widget/NetworkDialog;)I

    move-result v0

    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog$1;->this$0:Lcom/fimi/widget/NetworkDialog;

    invoke-static {v0, v1}, Lcom/fimi/widget/NetworkDialog;->access$002(Lcom/fimi/widget/NetworkDialog;I)I

    .line 30
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog$1;->this$0:Lcom/fimi/widget/NetworkDialog;

    invoke-static {v0}, Lcom/fimi/widget/NetworkDialog;->access$100(Lcom/fimi/widget/NetworkDialog;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/fimi/sdk/R$string;->network_loading1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog$1;->this$0:Lcom/fimi/widget/NetworkDialog;

    invoke-static {v0}, Lcom/fimi/widget/NetworkDialog;->access$200(Lcom/fimi/widget/NetworkDialog;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 40
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog$1;->this$0:Lcom/fimi/widget/NetworkDialog;

    invoke-static {v0}, Lcom/fimi/widget/NetworkDialog;->access$000(Lcom/fimi/widget/NetworkDialog;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 32
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog$1;->this$0:Lcom/fimi/widget/NetworkDialog;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/fimi/widget/NetworkDialog;->access$002(Lcom/fimi/widget/NetworkDialog;I)I

    .line 33
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog$1;->this$0:Lcom/fimi/widget/NetworkDialog;

    invoke-static {v0}, Lcom/fimi/widget/NetworkDialog;->access$100(Lcom/fimi/widget/NetworkDialog;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/fimi/sdk/R$string;->network_loading2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog$1;->this$0:Lcom/fimi/widget/NetworkDialog;

    invoke-static {v0, v4}, Lcom/fimi/widget/NetworkDialog;->access$002(Lcom/fimi/widget/NetworkDialog;I)I

    .line 36
    iget-object v0, p0, Lcom/fimi/widget/NetworkDialog$1;->this$0:Lcom/fimi/widget/NetworkDialog;

    invoke-static {v0}, Lcom/fimi/widget/NetworkDialog;->access$100(Lcom/fimi/widget/NetworkDialog;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/fimi/sdk/R$string;->network_loading3:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
