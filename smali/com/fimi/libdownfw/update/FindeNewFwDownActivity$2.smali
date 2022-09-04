.class Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;
.super Ljava/lang/Object;
.source "FindeNewFwDownActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;


# direct methods
.method constructor <init>(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 203
    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v0

    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Finish:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v0, v1}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-virtual {v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->finish()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-static {}, Lcom/fimi/network/DownFwService;->getState()Lcom/fimi/network/DownFwService$DownState;

    move-result-object v0

    sget-object v1, Lcom/fimi/network/DownFwService$DownState;->Downing:Lcom/fimi/network/DownFwService$DownState;

    invoke-virtual {v0, v1}, Lcom/fimi/network/DownFwService$DownState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    sget-object v0, Lcom/fimi/network/DownFwService$DownState;->StopDown:Lcom/fimi/network/DownFwService$DownState;

    invoke-static {v0}, Lcom/fimi/network/DownFwService;->setState(Lcom/fimi/network/DownFwService$DownState;)V

    .line 207
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-virtual {v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->finish()V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-virtual {v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->isDSNSuceess()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    sget v2, Lcom/fimi/libdownfw/R$string;->host_down_net_exception:I

    invoke-virtual {v1, v2}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/fimi/kernel/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 213
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-wide v2, v2, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->currTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-static {v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->access$000(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->currTime:J

    .line 215
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-static {v0, v4}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->access$002(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;Z)Z

    .line 216
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->hasTry:Z

    .line 217
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v0, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvDowning:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    sput v4, Lcom/fimi/network/DownFwService;->checkingTaskCount:I

    .line 219
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    const-class v3, Lcom/fimi/network/DownFwService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->intent:Landroid/content/Intent;

    .line 220
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v1, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->intent:Landroid/content/Intent;

    const-string v2, "listDownloadFwSelectInfo"

    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-static {v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->access$100(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v1, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v1, v1, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 222
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    invoke-static {v0}, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->access$200(Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;)V

    .line 224
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v0, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_downList:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v0, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v0, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->progressBar:Lcom/fimi/widget/RoundProgressBar;

    invoke-virtual {v0, v4}, Lcom/fimi/widget/RoundProgressBar;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v0, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_fail:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v0, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_fail:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity$2;->this$0:Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;

    iget-object v0, v0, Lcom/fimi/libdownfw/update/FindeNewFwDownActivity;->tv_succeuss:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
