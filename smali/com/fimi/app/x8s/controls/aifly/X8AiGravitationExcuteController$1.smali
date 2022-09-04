.class Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$1;
.super Ljava/lang/Object;
.source "X8AiGravitationExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->getRunningParmeter()V
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
    .line 195
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 1
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 199
    iget-boolean v0, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;

    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;

    .end local p2    # "o":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;->access$000(Lcom/fimi/app/x8s/controls/aifly/X8AiGravitationExcuteController;Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;)V

    .line 202
    :cond_0
    return-void
.end method
