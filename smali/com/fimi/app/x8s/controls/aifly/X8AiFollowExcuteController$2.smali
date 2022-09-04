.class Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;
.super Ljava/lang/Object;
.source "X8AiFollowExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->doFollow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiFollowExcuteListener;->onAiFollowRunning()V

    .line 312
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$200(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->resetShow()V

    .line 314
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFollowState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$302(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;Lcom/fimi/app/x8s/enums/X8AiFollowState;)Lcom/fimi/app/x8s/enums/X8AiFollowState;

    .line 315
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$402(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;Z)Z

    .line 316
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..setFollowExcute.. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getErrDes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..onGoClick.. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$400(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getErrDes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    goto :goto_0
.end method
