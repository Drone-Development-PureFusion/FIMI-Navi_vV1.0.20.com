.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1$1;
.super Ljava/lang/Object;
.source "X8GimbalItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1;->onConfirm(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 67
    if-nez p2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 68
    check-cast v0, Lcom/fimi/kernel/dataparser/ILinkMessage;

    .line 69
    .local v0, "packet":Lcom/fimi/kernel/dataparser/ILinkMessage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/ILinkMessage;->getMsgRpt()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 70
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1$1;->this$1:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$1;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImbConfirmEnable(Z)V

    goto :goto_0
.end method
