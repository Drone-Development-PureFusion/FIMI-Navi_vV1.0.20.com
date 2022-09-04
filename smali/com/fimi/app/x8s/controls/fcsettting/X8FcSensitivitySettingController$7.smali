.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$7;
.super Ljava/lang/Object;
.source "X8FcSensitivitySettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;->onSeekValueSet(II)V
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
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$7;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$7;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "resp"    # Ljava/lang/Object;

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcSensitivitySettingController$7;->val$value:I

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setFcBrakeSenssity(I)V

    .line 295
    :cond_0
    return-void
.end method
