.class Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;
.super Ljava/lang/Object;
.source "X8AiFollowExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->setModle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->val$mode:I

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
    invoke-static {}, Lcom/fimi/TcpClient;->getIntance()Lcom/fimi/TcpClient;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..setModle.. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->getErrDes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/TcpClient;->sendLog(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$600(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->val$mode:I

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$502(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;I)I

    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$602(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;Z)Z

    .line 339
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->setTitle()V

    .line 340
    iget v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->val$mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->access$700(Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;)Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8FollowSpeedContainerView;->setVisibility(I)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController$3;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiFollowExcuteController;->doFollow()V

    goto :goto_0
.end method
