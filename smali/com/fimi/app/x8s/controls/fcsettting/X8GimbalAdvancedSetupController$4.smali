.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$4;
.super Ljava/lang/Object;
.source "X8GimbalAdvancedSetupController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->requestValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 156
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 157
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalGain;

    .line 158
    .local v0, "ackGetGimbalGain":Lcom/fimi/x8sdk/dataparser/AckGetGimbalGain;
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->vsbGimbalGain:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetGimbalGain;->getData()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setProgress(I)V

    .line 159
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->vsbGimbalGain:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setImbConfirmEnable(Z)V

    .line 161
    .end local v0    # "ackGetGimbalGain":Lcom/fimi/x8sdk/dataparser/AckGetGimbalGain;
    :cond_0
    return-void
.end method
