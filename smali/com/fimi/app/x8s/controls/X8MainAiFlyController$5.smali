.class Lcom/fimi/app/x8s/controls/X8MainAiFlyController$5;
.super Ljava/lang/Object;
.source "X8MainAiFlyController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->setAiVcOpen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 788
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$5;->this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    iput p2, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$5;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 791
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$5;->this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->access$600(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$5;->val$type:I

    invoke-interface {v0, v1}, Lcom/fimi/app/x8s/interfaces/IX8AiFlyListener;->onAiFollowConfirmClick(I)V

    .line 793
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$5;->this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-virtual {v0, v2, v2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V

    .line 797
    :cond_0
    return-void
.end method
