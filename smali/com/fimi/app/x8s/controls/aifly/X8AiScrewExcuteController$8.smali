.class Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$8;
.super Ljava/lang/Object;
.source "X8AiScrewExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getSpeed()V
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
        "Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 545
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1802(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z

    .line 547
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->getSpeed()I

    .line 548
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;->getSpeed()I

    move-result v0

    if-lez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1902(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z

    .line 556
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1902(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z

    goto :goto_0

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$8;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1802(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 542
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$8;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckAiSurrounds;)V

    return-void
.end method
