.class Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;
.super Ljava/lang/Object;
.source "DownloadFwSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    iget-wide v4, v1, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->currTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-static {v1}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->access$000(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->currTime:J

    .line 88
    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-static {v1, v6}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->access$002(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;Z)Z

    .line 89
    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->UnStart:Lcom/fimi/network/DownFwService$DownState;

    invoke-static {v1}, Lcom/fimi/network/DownFwService;->setState(Lcom/fimi/network/DownFwService$DownState;)V

    .line 90
    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-virtual {v1}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->isDSNSuceess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    iget-object v2, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    sget v3, Lcom/fimi/libdownfw/R$string;->host_down_net_exception:I

    invoke-virtual {v2, v3}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-static {v1}, Lcom/fimi/kernel/utils/SystemParamUtil;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    invoke-static {v1}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->access$100(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;)V

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Lcom/fimi/widget/DialogManager;

    iget-object v1, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    iget-object v2, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    sget v3, Lcom/fimi/libdownfw/R$string;->host_down_tip:I

    invoke-virtual {v2, v3}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    sget v4, Lcom/fimi/libdownfw/R$string;->host_down_firmware_warning:I

    .line 98
    invoke-virtual {v3, v4}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    sget v5, Lcom/fimi/libdownfw/R$string;->host_down_continue:I

    invoke-virtual {v4, v5}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;->this$0:Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;

    sget v6, Lcom/fimi/libdownfw/R$string;->host_down_cancel:I

    invoke-virtual {v5, v6}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/fimi/widget/DialogManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v0, "dialogManager":Lcom/fimi/widget/DialogManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setVerticalScreen(Z)V

    .line 100
    new-instance v1, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2$1;

    invoke-direct {v1, p0}, Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2$1;-><init>(Lcom/fimi/libdownfw/update/DownloadFwSelectActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/fimi/widget/DialogManager;->setOnDiaLogListener(Lcom/fimi/widget/DialogManager$OnDialogListener;)Lcom/fimi/widget/DialogManager;

    .line 112
    invoke-virtual {v0}, Lcom/fimi/widget/DialogManager;->showDialog()V

    goto :goto_0
.end method
