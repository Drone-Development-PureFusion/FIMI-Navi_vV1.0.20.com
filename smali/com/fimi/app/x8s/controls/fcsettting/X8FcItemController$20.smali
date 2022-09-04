.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->setSportMode(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

.field final synthetic val$isPilotModePrimary:Z

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->val$mode:I

    iput-boolean p3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->val$isPilotModePrimary:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 420
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->val$mode:I

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 423
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->setSportMode(Z)V

    .line 424
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->val$isPilotModePrimary:Z

    invoke-virtual {v0, v2, v2, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->changeMotorPattern(ZIZ)V

    .line 425
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->val$isPilotModePrimary:Z

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->resetSpeedLimit()V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 430
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->setSportMode(Z)V

    .line 433
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 434
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iget-boolean v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->val$isPilotModePrimary:Z

    invoke-virtual {v0, v3, v2, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->changeMotorPattern(ZIZ)V

    .line 435
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$20;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->resetViewBySport()V

    goto :goto_0
.end method
