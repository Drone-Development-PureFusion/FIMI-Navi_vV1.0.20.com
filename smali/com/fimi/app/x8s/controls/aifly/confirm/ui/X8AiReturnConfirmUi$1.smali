.class Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$1;
.super Ljava/lang/Object;
.source "X8AiReturnConfirmUi.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;->getHeight()V
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
        "Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$1;->this$0:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;)V
    .locals 0
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "aFloat"    # Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;

    .prologue
    .line 102
    return-void
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiReturnConfirmUi$1;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckGetRetHeight;)V

    return-void
.end method
