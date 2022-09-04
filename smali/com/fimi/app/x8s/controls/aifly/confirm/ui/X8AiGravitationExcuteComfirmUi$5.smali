.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$5;
.super Ljava/lang/Object;
.source "X8AiGravitationExcuteComfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->getParamer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 255
    iget-boolean v0, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$402(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;)Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    .line 257
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;->access$500(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiGravitationExcuteComfirmUi;)V

    .line 260
    :cond_0
    return-void
.end method
