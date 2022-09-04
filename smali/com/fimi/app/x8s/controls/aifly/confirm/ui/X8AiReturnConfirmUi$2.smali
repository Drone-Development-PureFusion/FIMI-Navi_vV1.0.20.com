.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$2;
.super Ljava/lang/Object;
.source "X8AiReturnConfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->setHeightLimit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

.field final synthetic val$h:F


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    iput p2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$2;->val$h:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$2;->val$h:F

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setReturnHomeHight(F)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getReturnHomeHight()F

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$2;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->access$000(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->setProgress(I)V

    goto :goto_0
.end method
