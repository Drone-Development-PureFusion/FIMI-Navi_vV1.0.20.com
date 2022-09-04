.class Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$5;
.super Ljava/lang/Object;
.source "X8AiGravitationExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->closeGravitationing()V
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
    .line 331
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->closeUi()V

    .line 336
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$102(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;)Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .line 337
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1000(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$1000(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;)Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8AiGravitationExcuteControllerListener;->onAiGravitationBackClick()V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 341
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
