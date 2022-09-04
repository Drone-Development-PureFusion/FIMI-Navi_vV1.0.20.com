.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$2;
.super Ljava/lang/Object;
.source "X8AiScrewNextUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->setDistance()V
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
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckNormalCmds;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi;->startExcute()V

    .line 202
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckNormalCmds;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiScrewNextUi$2;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckNormalCmds;)V

    return-void
.end method
