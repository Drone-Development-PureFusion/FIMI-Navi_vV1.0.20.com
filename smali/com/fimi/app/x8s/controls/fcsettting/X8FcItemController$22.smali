.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->onSetHomeEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->val$type:I

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

    .line 649
    iget v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->val$type:I

    if-nez v0, :cond_2

    .line 650
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1900(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_general_return_drone:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    if-nez p2, :cond_0

    .line 654
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$2000(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_general_return_failed:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 658
    :cond_2
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$2100(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_general_return_person:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 661
    :cond_3
    if-nez p2, :cond_0

    .line 662
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$2200(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$22;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_general_return_failed:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
