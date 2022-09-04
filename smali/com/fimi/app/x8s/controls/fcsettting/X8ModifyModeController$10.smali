.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$10;
.super Ljava/lang/Object;
.source "X8ModifyModeController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->setFormatLogStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 318
    iget-boolean v0, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->SEND_FORMAT_UPGRADE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$002(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .line 327
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2500(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2600(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_modify_format_storage_fail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 323
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    sget-object v1, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$002(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .line 324
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/widget/CustomLoadManage;

    invoke-static {}, Lcom/fimi/widget/CustomLoadManage;->dismiss()V

    .line 325
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$10;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    goto :goto_0
.end method
