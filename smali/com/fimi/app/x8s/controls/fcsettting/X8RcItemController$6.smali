.class Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$6;
.super Ljava/lang/Object;
.source "X8RcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->restRcSystemParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

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

    .line 395
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->access$300(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V

    .line 397
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->access$400(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V

    .line 398
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_reset_params_successd:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$6;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->access$500(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_rc_reset_params_hint_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
