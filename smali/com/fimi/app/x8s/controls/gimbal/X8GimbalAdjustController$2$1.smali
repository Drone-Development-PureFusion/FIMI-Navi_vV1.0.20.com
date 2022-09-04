.class Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2$1;
.super Ljava/lang/Object;
.source "X8GimbalAdjustController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2$1;->this$1:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2$1;->this$1:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u4fdd\u5b58\u4e91\u53f0\u53c2\u6570\u6210\u529f"

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2$1;->this$1:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController$2;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalAdjustController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "\u4fdd\u5b58\u4e91\u53f0\u53c2\u6570\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
