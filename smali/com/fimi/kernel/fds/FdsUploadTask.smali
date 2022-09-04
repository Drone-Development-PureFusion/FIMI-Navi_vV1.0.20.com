.class public Lcom/fimi/kernel/fds/FdsUploadTask;
.super Ljava/lang/Object;
.source "FdsUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private listener:Lcom/fimi/kernel/fds/IFdsUploadListener;

.field private mFdsService:Lcom/fimi/kernel/fds/FDSClient;

.field private model:Lcom/fimi/kernel/fds/IFdsFileModel;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/fds/IFdsFileModel;Lcom/fimi/kernel/fds/IFdsUploadListener;)V
    .locals 1
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;
    .param p2, "listener"    # Lcom/fimi/kernel/fds/IFdsUploadListener;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    .line 20
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v0, p0}, Lcom/fimi/kernel/fds/IFdsFileModel;->setRunable(Lcom/fimi/kernel/fds/FdsUploadTask;)V

    .line 21
    iput-object p2, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->listener:Lcom/fimi/kernel/fds/IFdsUploadListener;

    .line 22
    new-instance v0, Lcom/fimi/kernel/fds/FDSClient;

    invoke-direct {v0}, Lcom/fimi/kernel/fds/FDSClient;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->mFdsService:Lcom/fimi/kernel/fds/FDSClient;

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->mFdsService:Lcom/fimi/kernel/fds/FDSClient;

    iget-object v2, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    iget-object v3, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->listener:Lcom/fimi/kernel/fds/IFdsUploadListener;

    invoke-virtual {v1, v2, v3}, Lcom/fimi/kernel/fds/FDSClient;->startUpload(Lcom/fimi/kernel/fds/IFdsFileModel;Lcom/fimi/kernel/fds/IFdsUploadListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->SUCCESS:Lcom/fimi/kernel/fds/FdsUploadState;

    if-ne v1, v2, :cond_1

    .line 35
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->listener:Lcom/fimi/kernel/fds/IFdsUploadListener;

    iget-object v2, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v1, v2}, Lcom/fimi/kernel/fds/IFdsUploadListener;->onSuccess(Ljava/lang/Object;)V

    .line 41
    :cond_0
    :goto_1
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 31
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {v1, v2}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 32
    const-string v1, "istep"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->FAILED:Lcom/fimi/kernel/fds/FdsUploadState;

    if-ne v1, v2, :cond_2

    .line 37
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->listener:Lcom/fimi/kernel/fds/IFdsUploadListener;

    iget-object v2, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v1, v2}, Lcom/fimi/kernel/fds/IFdsUploadListener;->onFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 38
    :cond_2
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v1}, Lcom/fimi/kernel/fds/IFdsFileModel;->getState()Lcom/fimi/kernel/fds/FdsUploadState;

    move-result-object v1

    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    if-ne v1, v2, :cond_0

    .line 39
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->listener:Lcom/fimi/kernel/fds/IFdsUploadListener;

    iget-object v2, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    invoke-interface {v1, v2}, Lcom/fimi/kernel/fds/IFdsUploadListener;->onStop(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public stopUpload()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->mFdsService:Lcom/fimi/kernel/fds/FDSClient;

    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->model:Lcom/fimi/kernel/fds/IFdsFileModel;

    iget-object v2, p0, Lcom/fimi/kernel/fds/FdsUploadTask;->listener:Lcom/fimi/kernel/fds/IFdsUploadListener;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/kernel/fds/FDSClient;->stopUpload(Lcom/fimi/kernel/fds/IFdsFileModel;Lcom/fimi/kernel/fds/IFdsUploadListener;)V

    .line 45
    return-void
.end method
