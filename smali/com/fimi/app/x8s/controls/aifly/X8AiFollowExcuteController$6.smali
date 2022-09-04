.class Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$6;
.super Ljava/lang/Object;
.source "X8AiFollowExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->sendExiteCmd()V
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
    .line 478
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 481
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAiVcClose success  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getErrDes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/enums/X8AiFollowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$300(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/enums/X8AiFollowState;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiFollowState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiFollowState;

    if-eq v0, v1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$6;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->taskExit()V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAiVcClose error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
