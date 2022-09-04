.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$8;
.super Ljava/lang/Object;
.source "X8AiLinesExcuteConfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->startVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 390
    iget-boolean v1, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$600(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;Z)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$700(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getmMsgRpt()I

    move-result v2

    invoke-static {v1, v2}, Lcom/fimi/x8sdk/rtp/X8Rtp;->getRtpStringCamera(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "rtpCamera":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->access$700(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
