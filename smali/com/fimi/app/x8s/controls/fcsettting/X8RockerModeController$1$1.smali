.class Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;
.super Ljava/lang/Object;
.source "X8RockerModeController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->onRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

.field final synthetic val$temp:B


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;B)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    iput-byte p2, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->val$temp:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    iget v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->val$index:I

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;I)V

    .line 104
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->onRcCtrlModelListener:Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->onRcCtrlModelListener:Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;

    iget-byte v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->val$temp:B

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8RcRockerListener;->onRcCtrlModelListener(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$200(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)Lcom/fimi/x8sdk/controller/FcCtrlManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1$1;-><init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/FcCtrlManager;->getRcCtrlMode(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$000(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;I)V

    goto :goto_0
.end method
