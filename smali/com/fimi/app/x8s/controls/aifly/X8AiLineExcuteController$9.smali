.class Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;
.super Ljava/lang/Object;
.source "X8AiLineExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getAiLinePoint()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;

    .prologue
    .line 909
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1808(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)I

    .line 911
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getYaw()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->setOrientation(I)V

    .line 913
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1300(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Lcom/fimi/app/x8s/entity/X8AilinePrameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/entity/X8AilinePrameter;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->setAiVcOpen()V

    .line 915
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->openVcToggle()V

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$1900(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getAiLinePoi(Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;)V

    .line 919
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getTotalnumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->getAllPoint(I)V

    .line 920
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;->getTotalnumber()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2002(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;I)I

    .line 924
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;->IDLE:Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;->access$2102(Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;)Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$AiLineGetPointState;

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 906
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$9;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetAiLinePoint;)V

    return-void
.end method
