.class Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$5;
.super Ljava/lang/Object;
.source "X8AiFollowExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->getFollowSpeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
        "<",
        "Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;

    .prologue
    .line 378
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$1002(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;Z)Z

    .line 380
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..getFollowSpeed.. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getErrDes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " speed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;->getSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;->getSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setSpeed(I)V

    .line 386
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 375
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$5;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckAiFollowGetSpeed;)V

    return-void
.end method
