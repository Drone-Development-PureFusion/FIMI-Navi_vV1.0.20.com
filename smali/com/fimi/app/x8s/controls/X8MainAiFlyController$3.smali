.class Lcom/fimi/app/x8s/controls/X8MainAiFlyController$3;
.super Ljava/lang/Object;
.source "X8MainAiFlyController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->onTakeOffOrLandingClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8MainAiFlyController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    .prologue
    .line 759
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$3;->this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 3
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 762
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainAiFlyController$3;->this$0:Lcom/fimi/app/x8s/controls/X8MainAiFlyController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/controls/X8MainAiFlyController;->closeAiUi(ZZ)V

    .line 766
    :cond_0
    return-void
.end method
