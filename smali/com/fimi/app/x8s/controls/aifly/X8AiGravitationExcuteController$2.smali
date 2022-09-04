.class Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$2;
.super Ljava/lang/Object;
.source "X8AiGravitationExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->getRunningDisconnectParmeter()V
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
    .line 213
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 217
    iget-boolean v0, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;->RUNNING:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$102(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;)Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$X8GravitationState;

    .line 219
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;)V

    .line 221
    :cond_0
    return-void
.end method
