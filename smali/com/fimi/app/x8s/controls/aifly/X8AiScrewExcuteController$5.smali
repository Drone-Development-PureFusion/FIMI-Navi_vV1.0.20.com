.class Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$5;
.super Ljava/lang/Object;
.source "X8AiScrewExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->sendCircleCmd()V
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
        "Lcom/fimi/x8sdk/dataparser/AckNormalCmds;",
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
    .line 471
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckNormalCmds;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    .prologue
    .line 474
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;->SETRADIUS:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->access$302(Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;)Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$ScrewState;

    .line 476
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController;->openNextUi()V

    .line 479
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 471
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiScrewExcuteController$5;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckNormalCmds;)V

    return-void
.end method
