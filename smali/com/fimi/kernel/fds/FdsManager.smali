.class public Lcom/fimi/kernel/fds/FdsManager;
.super Ljava/lang/Object;
.source "FdsManager.java"

# interfaces
.implements Lcom/fimi/kernel/fds/IFdsUploadListener;


# static fields
.field private static final DOWNLOAD_FAIL:I = 0x2

.field private static final DOWNLOAD_PROGRESS:I = 0x0

.field private static final DOWNLOAD_STOP:I = 0x3

.field private static final DOWNLOAD_SUCCESS:I = 0x1

.field private static fdsManager:Lcom/fimi/kernel/fds/FdsManager;


# instance fields
.field private countListener:Lcom/fimi/kernel/fds/IFdsCountListener;

.field private dataAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/fds/IFdsFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private mHanler:Landroid/os/Handler;

.field private uiListener:Lcom/fimi/kernel/fds/IFdsUiListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/fimi/kernel/fds/FdsManager;

    invoke-direct {v0}, Lcom/fimi/kernel/fds/FdsManager;-><init>()V

    sput-object v0, Lcom/fimi/kernel/fds/FdsManager;->fdsManager:Lcom/fimi/kernel/fds/FdsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/fds/FdsManager;->dataAll:Ljava/util/List;

    .line 116
    new-instance v0, Lcom/fimi/kernel/fds/FdsManager$1;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/fds/FdsManager$1;-><init>(Lcom/fimi/kernel/fds/FdsManager;)V

    iput-object v0, p0, Lcom/fimi/kernel/fds/FdsManager;->mHanler:Landroid/os/Handler;

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/fds/FdsManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/fds/FdsManager;)Lcom/fimi/kernel/fds/IFdsUiListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/fds/FdsManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager;->uiListener:Lcom/fimi/kernel/fds/IFdsUiListener;

    return-object v0
.end method

.method private downloadFile(Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 3
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 50
    iget-object v2, p0, Lcom/fimi/kernel/fds/FdsManager;->dataAll:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    new-instance v0, Lcom/fimi/kernel/fds/FdsUploadTask;

    invoke-direct {v0, p1, p0}, Lcom/fimi/kernel/fds/FdsUploadTask;-><init>(Lcom/fimi/kernel/fds/IFdsFileModel;Lcom/fimi/kernel/fds/IFdsUploadListener;)V

    .line 52
    .local v0, "d":Lcom/fimi/kernel/fds/FdsUploadTask;
    iget-object v2, p0, Lcom/fimi/kernel/fds/FdsManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 53
    .local v1, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {p1, v1}, Lcom/fimi/kernel/fds/IFdsFileModel;->setTaskFutrue(Ljava/util/concurrent/Future;)V

    .line 54
    iget-object v2, p0, Lcom/fimi/kernel/fds/FdsManager;->dataAll:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p0}, Lcom/fimi/kernel/fds/FdsManager;->notityDataSetChange()V

    .line 58
    .end local v0    # "d":Lcom/fimi/kernel/fds/FdsUploadTask;
    .end local v1    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/fimi/kernel/fds/FdsManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/fimi/kernel/fds/FdsManager;->fdsManager:Lcom/fimi/kernel/fds/FdsManager;

    return-object v0
.end method


# virtual methods
.method public hasUpload()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager;->dataAll:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notityDataSetChange()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager;->countListener:Lcom/fimi/kernel/fds/IFdsCountListener;

    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsManager;->dataAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/fimi/kernel/fds/IFdsCountListener;->onUploadingCountChange(I)V

    .line 90
    return-void
.end method

.method public onFailure(Ljava/lang/Object;)V
    .locals 2
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method

.method public onProgress(Ljava/lang/Object;JJ)V
    .locals 4
    .param p1, "responseObj"    # Ljava/lang/Object;
    .param p2, "progrss"    # J
    .param p4, "currentLength"    # J

    .prologue
    .line 93
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p2

    div-long/2addr v2, p4

    long-to-int v0, v2

    .line 94
    .local v0, "p":I
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsManager;->mHanler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 95
    return-void
.end method

.method public onStop(Ljava/lang/Object;)V
    .locals 2
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .param p1, "model"    # Ljava/lang/Object;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/kernel/fds/FdsManager;->dataAll:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p0}, Lcom/fimi/kernel/fds/FdsManager;->notityDataSetChange()V

    .line 86
    return-void
.end method

.method public setFdsCountListener(Lcom/fimi/kernel/fds/IFdsCountListener;)V
    .locals 0
    .param p1, "countListener"    # Lcom/fimi/kernel/fds/IFdsCountListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/fimi/kernel/fds/FdsManager;->countListener:Lcom/fimi/kernel/fds/IFdsCountListener;

    .line 41
    return-void
.end method

.method public setUiListener(Lcom/fimi/kernel/fds/IFdsUiListener;)V
    .locals 0
    .param p1, "uiListener"    # Lcom/fimi/kernel/fds/IFdsUiListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/fimi/kernel/fds/FdsManager;->uiListener:Lcom/fimi/kernel/fds/IFdsUiListener;

    .line 38
    return-void
.end method

.method public startDownload(Lcom/fimi/kernel/fds/IFdsFileModel;)V
    .locals 1
    .param p1, "model"    # Lcom/fimi/kernel/fds/IFdsFileModel;

    .prologue
    .line 44
    sget-object v0, Lcom/fimi/kernel/fds/FdsUploadState;->WAIT:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {p1, v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/fimi/kernel/fds/FdsManager;->downloadFile(Lcom/fimi/kernel/fds/IFdsFileModel;)V

    .line 46
    return-void
.end method

.method public stopAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsManager;->dataAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/kernel/fds/IFdsFileModel;

    .line 62
    .local v0, "model":Lcom/fimi/kernel/fds/IFdsFileModel;
    invoke-interface {v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->getTaskFutrue()Ljava/util/concurrent/Future;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->getRunable()Lcom/fimi/kernel/fds/FdsUploadTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->getRunable()Lcom/fimi/kernel/fds/FdsUploadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/fds/FdsUploadTask;->stopUpload()V

    .line 66
    :cond_0
    invoke-interface {v0}, Lcom/fimi/kernel/fds/IFdsFileModel;->getTaskFutrue()Ljava/util/concurrent/Future;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 68
    :cond_1
    sget-object v2, Lcom/fimi/kernel/fds/FdsUploadState;->STOP:Lcom/fimi/kernel/fds/FdsUploadState;

    invoke-interface {v0, v2}, Lcom/fimi/kernel/fds/IFdsFileModel;->setState(Lcom/fimi/kernel/fds/FdsUploadState;)V

    .line 69
    invoke-interface {v0, v4}, Lcom/fimi/kernel/fds/IFdsFileModel;->setRunable(Lcom/fimi/kernel/fds/FdsUploadTask;)V

    .line 70
    invoke-interface {v0, v4}, Lcom/fimi/kernel/fds/IFdsFileModel;->setTaskFutrue(Ljava/util/concurrent/Future;)V

    goto :goto_0

    .line 72
    .end local v0    # "model":Lcom/fimi/kernel/fds/IFdsFileModel;
    :cond_2
    iget-object v1, p0, Lcom/fimi/kernel/fds/FdsManager;->dataAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 73
    invoke-virtual {p0}, Lcom/fimi/kernel/fds/FdsManager;->notityDataSetChange()V

    .line 74
    return-void
.end method
