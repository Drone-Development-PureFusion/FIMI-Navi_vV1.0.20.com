.class Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;
.super Ljava/lang/Object;
.source "X8ModifyModeController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->getFormatState()V
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
    .line 350
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 5
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 353
    iget-boolean v1, p1, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess:Z

    if-nez v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3100(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3200(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_modify_format_storage_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 356
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$002(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .line 357
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/widget/CustomLoadManage;

    invoke-static {}, Lcom/fimi/widget/CustomLoadManage;->dismiss()V

    .line 358
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    .line 360
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 361
    check-cast v0, Lcom/fimi/x8sdk/dataparser/AckGetFormatStorageState;

    .line 362
    .local v0, "state":Lcom/fimi/x8sdk/dataparser/AckGetFormatStorageState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AckGetFormatStorageState;->getProcess()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 363
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3300(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$3400(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_modify_format_storage_success:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 365
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    sget-object v2, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;->IDLE:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$002(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;)Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$FormatState;

    .line 366
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2700(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)Lcom/fimi/widget/CustomLoadManage;

    invoke-static {}, Lcom/fimi/widget/CustomLoadManage;->dismiss()V

    .line 367
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController$12;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;->access$2800(Lcom/fimi/app/x8s/controls/fcsettting/X8ModifyModeController;)V

    .line 370
    .end local v0    # "state":Lcom/fimi/x8sdk/dataparser/AckGetFormatStorageState;
    :cond_1
    return-void
.end method
