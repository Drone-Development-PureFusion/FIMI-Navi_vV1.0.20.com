.class Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;
.super Ljava/lang/Object;
.source "X8BlackBoxController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->initAction()V
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
    .line 108
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-static {}, Lcom/fimi/kernel/utils/DNSLookupThread;->isDSNSuceess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fds_connect_internet:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/kernel/fds/FdsCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsCount;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/fimi/host/HostConstants;->getUserDetail()Lcom/fimi/network/entity/UserDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/network/entity/UserDto;->getFimiId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->uploadAll()V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$700(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_fds_login_tip:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-static {}, Lcom/fimi/kernel/fds/FdsManager;->getInstance()Lcom/fimi/kernel/fds/FdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FdsManager;->stopAll()V

    .line 126
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/maintain/X8BlackBoxController;)Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
