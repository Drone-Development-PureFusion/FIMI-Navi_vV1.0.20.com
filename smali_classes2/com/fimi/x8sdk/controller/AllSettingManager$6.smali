.class Lcom/fimi/x8sdk/controller/AllSettingManager$6;
.super Ljava/lang/Object;
.source "AllSettingManager.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/controller/AllSettingManager;->getAllSetting()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/controller/AllSettingManager;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/controller/AllSettingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/controller/AllSettingManager;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fimi/x8sdk/controller/AllSettingManager$6;->this$0:Lcom/fimi/x8sdk/controller/AllSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "lowPowerOpt"    # Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->getLowPowerValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setLowPowerValue(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/x8sdk/controller/AllSettingManager$6;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;)V

    return-void
.end method
