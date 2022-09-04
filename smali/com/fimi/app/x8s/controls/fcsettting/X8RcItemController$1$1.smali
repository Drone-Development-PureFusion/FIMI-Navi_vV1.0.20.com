.class Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;
.super Ljava/lang/Object;
.source "X8RcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->onRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Lcom/fimi/app/x8s/widget/X8TabItem;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;

    iget v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8TabItem;->setSelect(I)V

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;

    iget v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->val$index:I

    iput v1, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->currAPModel:I

    .line 86
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$1$1;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->setApModeRestart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 97
    :cond_0
    return-void
.end method
