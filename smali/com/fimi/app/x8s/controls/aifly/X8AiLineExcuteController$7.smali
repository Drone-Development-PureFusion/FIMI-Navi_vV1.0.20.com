.class Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$7;
.super Ljava/lang/Object;
.source "X8AiLineExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->stopVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 835
    iget-boolean v1, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-nez v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1500(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getmMsgRpt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/fimi/x8sdk/rtp/X8Rtp;->getRtpStringCamera(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "rtpCamera":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1600(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 840
    .end local v0    # "rtpCamera":Ljava/lang/String;
    :cond_0
    return-void
.end method
