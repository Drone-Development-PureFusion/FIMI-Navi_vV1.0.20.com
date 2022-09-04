.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3$1;
.super Ljava/lang/Object;
.source "X8GimbalAdvancedSetupController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;->onConfirm(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalAdvancedSetupController;->vsbGimbalGain:Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarWithTip;->setImbConfirmEnable(Z)V

    .line 90
    :cond_0
    return-void
.end method
