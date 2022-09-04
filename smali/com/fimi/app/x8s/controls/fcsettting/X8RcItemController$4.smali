.class Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$4;
.super Ljava/lang/Object;
.source "X8RcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->requestRcCtrlModeValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fimi/kernel/dataparser/usb/UiCallBackListener",
        "<",
        "Lcom/fimi/x8sdk/dataparser/AckGetRcMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetRcMode;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "obj"    # Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    .prologue
    .line 172
    if-nez p2, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$4;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController;->showRcCtrlModel(I)V

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 169
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RcItemController$4;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetRcMode;)V

    return-void
.end method
