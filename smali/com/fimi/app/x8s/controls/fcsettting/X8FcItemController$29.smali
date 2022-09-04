.class Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$29;
.super Ljava/lang/Object;
.source "X8FcItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->initParams()V
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
        "Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;",
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
    .line 965
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$29;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "obj"    # Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;

    .prologue
    const/4 v1, 0x1

    .line 968
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;->getState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 970
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$29;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$29;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;->access$1400(Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController;)Lcom/fimi/widget/SwitchButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/widget/SwitchButton;->onSwitch(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 965
    check-cast p2, Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8FcItemController$29;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/cmd/AckGetAutoHome;)V

    return-void
.end method
