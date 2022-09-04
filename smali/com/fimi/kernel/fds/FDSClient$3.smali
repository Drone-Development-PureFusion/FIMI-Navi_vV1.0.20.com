.class Lcom/fimi/kernel/fds/FDSClient$3;
.super Ljava/lang/Object;
.source "FDSClient.java"

# interfaces
.implements Lcom/fimi/kernel/network/okhttp/listener/DisposeDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/kernel/fds/FDSClient;->saveFdsUrl2FimiPlayback(Lcom/fimi/kernel/fds/IFdsFileModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/kernel/fds/FDSClient;

.field final synthetic val$model:Lcom/fimi/kernel/fds/IFdsFileModel;


# direct methods
.method constructor <init>(Lcom/fimi/kernel/fds/FDSClient;Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/kernel/fds/FDSClient;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/fimi/kernel/fds/FDSClient$3;->this$0:Lcom/fimi/kernel/fds/FDSClient;

    iput-object p2, p0, Lcom/fimi/kernel/fds/FDSClient$3;->val$model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Object;)V
    .locals 3
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 260
    const-string v0, "istep"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient$3;->val$model:Lcom/fimi/kernel/fds/IFdsFileModel;

    sget-object v1, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {v0, v1}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 262
    iget-object v0, p0, Lcom/fimi/kernel/fds/FDSClient$3;->this$0:Lcom/fimi/kernel/fds/FDSClient;

    invoke-virtual {v0}, Lcom/fimi/kernel/fds/FDSClient;->releaseLocked()V

    .line 263
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 246
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/fimi/network/entity/NetModel;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/network/entity/NetModel;

    .line 247
    .local v0, "netModel":Lcom/fimi/network/entity/NetModel;
    const-string v1, "istep"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFileTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v0}, Lcom/fimi/network/entity/NetModel;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/fimi/kernel/fds/FDSClient$3;->val$model:Lcom/fimi/kernel/fds/IFdsFileModel;

    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->SUCCESS:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {v1, v2}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 251
    iget-object v1, p0, Lcom/fimi/kernel/fds/FDSClient$3;->this$0:Lcom/fimi/kernel/fds/FDSClient;

    iget-object v2, p0, Lcom/fimi/kernel/fds/FDSClient$3;->val$model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/fds/FDSClient;->rename(Lcom/fimi/kernel/fds/IFdsFileModel;)Z

    .line 255
    :goto_0
    iget-object v1, p0, Lcom/fimi/kernel/fds/FDSClient$3;->this$0:Lcom/fimi/kernel/fds/FDSClient;

    invoke-virtual {v1}, Lcom/fimi/kernel/fds/FDSClient;->releaseLocked()V

    .line 256
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/fimi/kernel/fds/FDSClient$3;->val$model:Lcom/fimi/kernel/fds/IFdsFileModel;

    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {v1, v2}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    goto :goto_0
.end method
