.class Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$3;
.super Ljava/lang/Object;
.source "X8RockerModeController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->requestDefaultValue()V
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
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetRcMode;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "obj"    # Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;->getMode()I

    move-result v0

    .line 199
    .local v0, "result":I
    packed-switch v0, :pswitch_data_0

    .line 214
    .end local v0    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 201
    .restart local v0    # "result":I
    :pswitch_0
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;I)V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;I)V

    goto :goto_0

    .line 209
    :pswitch_2
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$3;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController;I)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetRcMode;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8RockerModeController$3;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetRcMode;)V

    return-void
.end method
