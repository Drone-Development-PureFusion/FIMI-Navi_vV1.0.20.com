.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;
.super Ljava/lang/Object;
.source "X8GimbalXYZAdjustController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->initClickAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 6
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 111
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;

    .line 112
    .local v0, "params":Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;
    if-eqz v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getTvGimbalXyzValue()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->getParam1()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getTvGimbalXyzValue()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->getParam2()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/widget/X8GimbalXYZAdjustRelayout;->getTvGimbalXyzValue()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;->getParam3()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .end local v0    # "params":Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v0    # "params":Lcom/fimi/x8sdk/dataparser/AckCloudParamsNew;
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "\u83b7\u53d6\u4e91\u53f0\u53c2\u6570\u5931\u8d25"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
