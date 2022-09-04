.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$34;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->requestNewHand()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$34;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;)V
    .locals 4
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "obj"    # Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;

    .prologue
    const/4 v3, 0x0

    .line 1214
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;->getPilotMode()I

    move-result v0

    .line 1216
    .local v0, "value":I
    if-nez v0, :cond_1

    .line 1217
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$34;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 1218
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$34;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1, v3}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1800(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;I)V

    .line 1219
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$34;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1700(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 1226
    .end local v0    # "value":I
    :cond_0
    :goto_0
    return-void

    .line 1221
    .restart local v0    # "value":I
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$34;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1300(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 1223
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$34;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->noHandNewMode()V

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1211
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$34;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetPilotMode;)V

    return-void
.end method
