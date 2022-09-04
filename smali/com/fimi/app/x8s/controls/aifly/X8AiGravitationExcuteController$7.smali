.class Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$7;
.super Ljava/lang/Object;
.source "X8AiGravitationExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->onRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

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
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$100(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    if-ne v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1400(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 395
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
