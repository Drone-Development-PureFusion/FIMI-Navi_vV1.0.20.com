.class public Lcom/fimi/album/download/manager/MediaFileDownloadManager;
.super Ljava/lang/Object;
.source "MediaFileDownloadManager.java"

# interfaces
.implements Lcom/fimi/album/download/interfaces/OnDownloadListener;
.implements Lcom/fimi/album/interfaces/IMediaDownload;
.implements Lcom/fimi/album/interfaces/IMediaFileDownloadObserverable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fimi/album/download/interfaces/OnDownloadListener;",
        "Lcom/fimi/album/interfaces/IMediaDownload;",
        "Lcom/fimi/album/interfaces/IMediaFileDownloadObserverable;"
    }
.end annotation


# static fields
.field private static final DOWNLOAD_FAIL:I = 0x2

.field private static final DOWNLOAD_PROGRESS:I = 0x0

.field private static final DOWNLOAD_STOP:I = 0x3

.field private static final DOWNLOAD_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaFileDownloadManage"

.field private static mMediaFileDownloadManager:Lcom/fimi/album/download/manager/MediaFileDownloadManager;


# instance fields
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

.field private dataAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private dataResult:Ljava/util/List;
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

.field private mHanler:Landroid/os/Handler;

.field private mLastPos:I

.field private mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

.field private observer:Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;

    invoke-direct {v0}, Lcom/fimi/album/download/manager/MediaFileDownloadManager;-><init>()V

    sput-object v0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mMediaFileDownloadManager:Lcom/fimi/album/download/manager/MediaFileDownloadManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->data:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->dataAll:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->dataResult:Ljava/util/List;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mLastPos:I

    .line 163
    new-instance v0, Lcom/fimi/album/download/manager/MediaFileDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/fimi/album/download/manager/MediaFileDownloadManager$1;-><init>(Lcom/fimi/album/download/manager/MediaFileDownloadManager;)V

    iput-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mHanler:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/album/download/manager/MediaFileDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/download/manager/MediaFileDownloadManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    return-object v0
.end method

.method private downloadFile(Lcom/fimi/album/entity/MediaModel;)V
    .locals 4
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 99
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    iget-object v2, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    new-instance v0, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;

    invoke-direct {v0, p1, p0}, Lcom/fimi/album/download/task/MediaOriginalDownloadTask;-><init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V

    .line 103
    .local v0, "d":Lcom/fimi/album/download/task/MediaOriginalDownloadTask;
    iget-object v2, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 104
    .local v1, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {p1, v1}, Lcom/fimi/album/entity/MediaModel;->setTaskFutrue(Ljava/util/concurrent/Future;)V

    .line 105
    iget-object v2, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->dataResult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->notityObserver(II)V

    .line 106
    return-void
.end method

.method public static getInstance()Lcom/fimi/album/download/manager/MediaFileDownloadManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mMediaFileDownloadManager:Lcom/fimi/album/download/manager/MediaFileDownloadManager;

    return-object v0
.end method


# virtual methods
.method public addData(Lcom/fimi/album/entity/MediaModel;)V
    .locals 1
    .param p1, "m"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 65
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public addList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    .local p1, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/album/entity/MediaModel;>;"
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    return-void
.end method

.method public addObserver(Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;

    .prologue
    .line 199
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    iput-object p1, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->observer:Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;

    .line 200
    return-void
.end method

.method public notityObserver(II)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "downloadSize"    # I

    .prologue
    .line 204
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->observer:Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->observer:Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;

    invoke-interface {v0, p1, p2}, Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;->onMediaFileDownloadUpdate(II)V

    .line 206
    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Object;)V
    .locals 2
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 153
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mLastPos:I

    .line 154
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method

.method public onProgress(Ljava/lang/Object;JJ)V
    .locals 4
    .param p1, "responseObj"    # Ljava/lang/Object;
    .param p2, "progrss"    # J
    .param p4, "currentLength"    # J

    .prologue
    .line 131
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    const-wide/16 v2, 0x64

    div-long v2, p4, v2

    div-long v2, p2, v2

    long-to-int v0, v2

    .line 133
    .local v0, "pos":I
    iget v1, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mLastPos:I

    if-eq v1, v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 135
    iput v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mLastPos:I

    .line 137
    :cond_0
    return-void
.end method

.method public onStop(Lcom/fimi/album/entity/MediaModel;)V
    .locals 2
    .param p1, "reasonObj"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 159
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mLastPos:I

    .line 160
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 143
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mLastPos:I

    .line 144
    iget-object v1, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->dataResult:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void
.end method

.method public setUiDownloadListener(Lcom/fimi/album/interfaces/OnDownloadUiListener;)V
    .locals 0
    .param p1, "mUiDownloadListener"    # Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .prologue
    .line 52
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    iput-object p1, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .line 53
    return-void
.end method

.method public startDownload()V
    .locals 0

    .prologue
    .line 75
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    return-void
.end method

.method public startDownload(Lcom/fimi/album/entity/MediaModel;)V
    .locals 2
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1, v1}, Lcom/fimi/album/entity/MediaModel;->setDownloadFail(Z)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 79
    invoke-virtual {p1, v1}, Lcom/fimi/album/entity/MediaModel;->setStop(Z)V

    .line 80
    invoke-direct {p0, p1}, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->downloadFile(Lcom/fimi/album/entity/MediaModel;)V

    .line 81
    return-void
.end method

.method public startDownload(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    .local p1, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/album/entity/MediaModel;>;"
    invoke-virtual {p0, p1}, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->addList(Ljava/util/List;)V

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    .line 88
    .local v1, "model":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0, v1}, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->downloadFile(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_1

    .line 94
    .end local v1    # "model":Lcom/fimi/album/entity/MediaModel;
    :cond_2
    return-void
.end method

.method public stopDownload()V
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/fimi/album/download/manager/MediaFileDownloadManager;, "Lcom/fimi/album/download/manager/MediaFileDownloadManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/download/manager/MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    return-void
.end method
