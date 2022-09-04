.class Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;
.super Ljava/lang/Object;
.source "X8UpdatePresenter.java"

# interfaces
.implements Lcom/fimi/kernel/connect/interfaces/IConnectResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;


# direct methods
.method constructor <init>(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    .prologue
    .line 924
    iput-object p1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectError(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 947
    return-void
.end method

.method public onConnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 928
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->startUpdateTimer()V

    .line 929
    return-void
.end method

.method public onDeviceConnect()V
    .locals 0

    .prologue
    .line 953
    return-void
.end method

.method public onDeviceDisConnnect()V
    .locals 0

    .prologue
    .line 958
    return-void
.end method

.method public onDisconnect(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 934
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$2200(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0, v3}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$702(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Z)Z

    .line 936
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iget-object v1, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1800(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/fimi/x8sdk/R$string;->x8_update_err_disconnect:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$1202(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 937
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$500(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;II)V

    .line 938
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    iput-boolean v3, v0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->updateFileEnd:Z

    .line 939
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter$5;->this$0:Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;

    invoke-static {v0}, Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;->access$600(Lcom/fimi/x8sdk/presenter/X8UpdatePresenter;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
