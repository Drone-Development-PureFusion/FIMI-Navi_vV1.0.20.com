.class public Lcom/fimi/album/download/manager/MediaThumDownloadManager;
.super Ljava/lang/Object;
.source "MediaThumDownloadManager.java"

# interfaces
.implements Lcom/fimi/album/download/interfaces/OnDownloadListener;
.implements Lcom/fimi/album/interfaces/IMediaDownload;


# instance fields
.field private count:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private index:I

.field private isDownload:Z

.field private mHanler:Landroid/os/Handler;

.field private mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;


# direct methods
.method public constructor <init>(Lcom/fimi/album/interfaces/OnDownloadUiListener;)V
    .locals 1
    .param p1, "mUiDownloadListener"    # Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->data:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/fimi/album/download/manager/MediaThumDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/fimi/album/download/manager/MediaThumDownloadManager$1;-><init>(Lcom/fimi/album/download/manager/MediaThumDownloadManager;)V

    iput-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->mHanler:Landroid/os/Handler;

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 27
    iput-object p1, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/album/download/manager/MediaThumDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/download/manager/MediaThumDownloadManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    return-object v0
.end method

.method static synthetic access$108(Lcom/fimi/album/download/manager/MediaThumDownloadManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/fimi/album/download/manager/MediaThumDownloadManager;

    .prologue
    .line 17
    iget v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->count:I

    return v0
.end method


# virtual methods
.method public addData(Lcom/fimi/album/entity/MediaModel;)V
    .locals 1
    .param p1, "m"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->isDownload:Z

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->index:I

    .line 63
    invoke-virtual {p0}, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->startDownload()V

    .line 65
    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Object;)V
    .locals 2
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 85
    invoke-virtual {p0}, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->next()V

    .line 86
    return-void
.end method

.method public onProgress(Ljava/lang/Object;JJ)V
    .locals 4
    .param p1, "responseObj"    # Ljava/lang/Object;
    .param p2, "progrss"    # J
    .param p4, "currentLength"    # J

    .prologue
    .line 70
    const-wide/16 v2, 0x64

    div-long v2, p4, v2

    div-long v2, p2, v2

    long-to-int v0, v2

    .line 73
    .local v0, "pos":I
    iget-object v1, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 74
    return-void
.end method

.method public onStop(Lcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "reasonObj"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 91
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    invoke-virtual {p0}, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->next()V

    .line 80
    return-void
.end method

.method public startDownload()V
    .locals 4

    .prologue
    .line 50
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->isDownload:Z

    .line 51
    iget-object v2, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->count:I

    iget-object v3, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 52
    iget-object v2, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->data:Ljava/util/List;

    iget v3, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    .line 53
    .local v1, "info":Lcom/fimi/album/entity/MediaModel;
    new-instance v0, Lcom/fimi/album/download/task/MediaThumDownloadTask;

    invoke-direct {v0, v1, p0}, Lcom/fimi/album/download/task/MediaThumDownloadTask;-><init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V

    .line 54
    .local v0, "d":Lcom/fimi/album/download/task/MediaThumDownloadTask;
    iget-object v2, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 58
    .end local v0    # "d":Lcom/fimi/album/download/task/MediaThumDownloadTask;
    .end local v1    # "info":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    return-void
.end method

.method public stopDownload()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->isDownload:Z

    .line 39
    iput v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->count:I

    .line 40
    iput v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->index:I

    .line 41
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    return-void
.end method
