.class Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$5;
.super Ljava/lang/Object;
.source "X8AiAerialPhotographExcuteController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;->setSensity()V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

.field final synthetic val$braking:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$5;->val$braking:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "resp"    # Ljava/lang/Object;

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiAerialPhotographExcuteController$5;->val$braking:I

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFcBrakeSenssity(I)V

    .line 324
    :cond_0
    return-void
.end method
