.class Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3$1;
.super Ljava/lang/Object;
.source "X8GimbalAdjustController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3$1;->this$1:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 5
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x4

    .line 87
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 88
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckCloudParams;

    .line 89
    .local v0, "params":Lcom/fimi/x8sdk/dataparser/AckCloudParams;
    if-eqz v0, :cond_1

    .line 90
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3$1;->this$1:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->relayoutPitch:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getEtxValue()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->getParam1()D

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3$1;->this$1:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->relayoutRoll:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getEtxValue()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->getParam2()D

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3$1;->this$1:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->rlYaw:Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/GimbalAdjustRelayout;->getEtxValue()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCloudParams;->getParam3()D

    move-result-wide v2

    invoke-static {v2, v3, v4}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .end local v0    # "params":Lcom/fimi/x8sdk/dataparser/AckCloudParams;
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v0    # "params":Lcom/fimi/x8sdk/dataparser/AckCloudParams;
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3$1;->this$1:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$3;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u83b7\u53d6\u4e91\u53f0\u53c2\u6570\u5931\u8d25"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
