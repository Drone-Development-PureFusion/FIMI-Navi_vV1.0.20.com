.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$25;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->initParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$25;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 899
    move-object v0, p2

    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckGetSportMode;

    .line 900
    .local v0, "ackGetSportMode":Lcom/fimi/x8sdk/dataparser/AckGetSportMode;
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 901
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetSportMode;->getVehicleControlType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 902
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->setSportMode(Z)V

    .line 903
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$25;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 904
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$25;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v1, v2, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->changeMotorPattern(ZIZ)V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fimi/x8sdk/modulestate/DroneState;->setSportMode(Z)V

    .line 907
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$25;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 908
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$25;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v1, v3, v2, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->changeMotorPattern(ZIZ)V

    goto :goto_0
.end method
