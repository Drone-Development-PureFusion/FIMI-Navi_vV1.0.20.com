.class Lcom/fimi/x8sdk/process/RelayProcess$2;
.super Ljava/lang/Object;
.source "RelayProcess.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/x8sdk/process/RelayProcess;->getAllVersion()V
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
        "Lcom/fimi/x8sdk/dataparser/AckVersion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/process/RelayProcess;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/process/RelayProcess;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/process/RelayProcess;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/fimi/x8sdk/process/RelayProcess$2;->this$0:Lcom/fimi/x8sdk/process/RelayProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckVersion;)V
    .locals 2
    .param p1, "cmdResult"    # Lcom/fimi/kernel/dataparser/usb/CmdResult;
    .param p2, "o"    # Lcom/fimi/x8sdk/dataparser/AckVersion;

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/usb/CmdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fimi/x8sdk/modulestate/VersionState;->setModuleRcVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 215
    iget-object v0, p0, Lcom/fimi/x8sdk/process/RelayProcess$2;->this$0:Lcom/fimi/x8sdk/process/RelayProcess;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/process/RelayProcess;->onGetVersionResult()V

    .line 216
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    const-string v1, "ALanqiu  ============MODULE_RC"

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getVersionState()Lcom/fimi/x8sdk/modulestate/VersionState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/VersionState;->setModuleRcVersion(Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    .line 219
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    const-string v1, "ALanqiu  ============MODULE_RC \u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 209
    check-cast p2, Lcom/fimi/x8sdk/dataparser/AckVersion;

    invoke-virtual {p0, p1, p2}, Lcom/fimi/x8sdk/process/RelayProcess$2;->onComplete(Lcom/fimi/kernel/dataparser/usb/CmdResult;Lcom/fimi/x8sdk/dataparser/AckVersion;)V

    return-void
.end method
