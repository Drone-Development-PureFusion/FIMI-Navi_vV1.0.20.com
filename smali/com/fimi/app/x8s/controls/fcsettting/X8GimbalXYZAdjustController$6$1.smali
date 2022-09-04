.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6$1;
.super Ljava/lang/Object;
.source "X8GimbalXYZAdjustController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;

.field final synthetic val$newValue:F


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;F)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6$1;->val$newValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getTvGimbalXyzValue()Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6$1;->val$newValue:F

    float-to-double v2, v1

    const/4 v1, 0x1

    invoke-static {v2, v3, v1}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u8bbe\u7f6e\u4e91\u53f0\u53c2\u6570\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
