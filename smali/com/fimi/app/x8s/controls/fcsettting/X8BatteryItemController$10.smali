.class Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;
.super Ljava/lang/Object;
.source "X8BatteryItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->setLowPowerOpt(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

.field final synthetic val$isReset:Z

.field final synthetic val$lowPowerValue:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;IIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->val$type:I

    iput p3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->val$lowPowerValue:I

    iput-boolean p4, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->val$isReset:Z

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

    const/4 v1, 0x0

    .line 307
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->val$type:I

    packed-switch v0, :pswitch_data_0

    .line 329
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImbConfirmEnable(Z)V

    .line 311
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->val$lowPowerValue:I

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->setLowPowerValue(I)V

    .line 312
    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->val$isReset:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_reset_params_successd:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImbConfirmEnable(Z)V

    goto :goto_0

    .line 325
    :cond_1
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->val$type:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->val$isReset:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;->access$600(Lcom/fimi/app/x8s/controls/fcsettting/X8BatteryItemController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_battery_reset_params_hint_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
