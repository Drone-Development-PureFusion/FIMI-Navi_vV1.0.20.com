.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$4;
.super Ljava/lang/Object;
.source "X8GimbalItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->resetGimbalSystemParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_gimbale_settting_rest_params_result_success:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V

    .line 243
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_gimbale_settting_rest_params_result_failed:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
