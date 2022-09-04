.class Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$7;
.super Ljava/lang/Object;
.source "X8AiScrewExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->getMaxDistance()V
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
        "Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;",
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
    .line 528
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "ackAiScrewPrameter"    # Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;

    .prologue
    .line 531
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1602(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z

    .line 533
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->getDistance()I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1702(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;I)I

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$7;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$1602(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Z)Z

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 528
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$7;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;)V

    return-void
.end method
