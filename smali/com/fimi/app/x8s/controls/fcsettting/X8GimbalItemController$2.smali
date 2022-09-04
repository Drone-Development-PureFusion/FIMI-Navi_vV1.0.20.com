.class Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$2;
.super Ljava/lang/Object;
.source "X8GimbalItemController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->requestValue()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "obj"    # Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;->getSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setProgress(I)V

    .line 134
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$2;->this$0:Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;->access$100(Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController;)Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8ValueSeakBarView;->setImbConfirmEnable(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalItemController$2;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetPitchSpeed;)V

    return-void
.end method
