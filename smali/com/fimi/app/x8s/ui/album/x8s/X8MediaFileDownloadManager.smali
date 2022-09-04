.class public Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;
.super Ljava/lang/Object;
.source "X8MediaFileDownloadManager.java"

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

.field private static final DOWNLOAD_STOP_TIME_OUT:I = 0x4

.field private static final DOWNLOAD_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaFileDownloadManage"

.field private static mMediaFileDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;


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

.field private index:I

.field private isDownload:Z

.field private mHanler:Landroid/os/Handler;

.field private mLastPos:I

.field private mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

.field private observer:Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;

.field public taskHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    invoke-direct {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;-><init>()V

    sput-object v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mMediaFileDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataAll:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataResult:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->taskHashMap:Ljava/util/HashMap;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mLastPos:I

    .line 221
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mHanler:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    return-object v0
.end method

.method private downloadFile()V
    .locals 5

    .prologue
    .line 138
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->index:I

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 139
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    iget v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 143
    .local v0, "model":Lcom/fimi/album/entity/MediaModel;
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->taskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 149
    .end local v0    # "model":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    :goto_0
    return-void

    .line 144
    .restart local v0    # "model":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->isDownload:Z

    .line 145
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->taskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 146
    .local v1, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setTaskFutrue(Ljava/util/concurrent/Future;)V

    .line 147
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alanqiu  ===================downloadFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mMediaFileDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    return-object v0
.end method


# virtual methods
.method public addData(Lcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "m"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 79
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  =================addData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addList(Ljava/util/List;)V
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
    .line 72
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    .local p1, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/album/entity/MediaModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 73
    .local v0, "mediaModel":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->addData(Lcom/fimi/album/entity/MediaModel;)V

    goto :goto_0

    .line 75
    .end local v0    # "mediaModel":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    return-void
.end method

.method public addObserver(Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;

    .prologue
    .line 273
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->observer:Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;

    .line 274
    return-void
.end method

.method public hasDownloading()Z
    .locals 4

    .prologue
    .line 178
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    const/4 v1, 0x0

    .line 179
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 180
    .local v0, "model":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v0}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const/4 v1, 0x1

    .line 185
    .end local v0    # "model":Lcom/fimi/album/entity/MediaModel;
    :cond_1
    return v1
.end method

.method public isDownload()Z
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->isDownload:Z

    return v0
.end method

.method public next()V
    .locals 3

    .prologue
    .line 152
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->isDownload:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->index:I

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 153
    iget v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->index:I

    .line 154
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->downloadFile()V

    .line 155
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  ===========1====next index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->stopDownload()V

    goto :goto_0
.end method

.method public notityObserver(II)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "downloadSize"    # I

    .prologue
    .line 278
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->observer:Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->observer:Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;

    invoke-interface {v0, p1, p2}, Lcom/fimi/album/interfaces/IMediaFileDownloadObserver;->onMediaFileDownloadUpdate(II)V

    .line 280
    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Object;)V
    .locals 2
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 210
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mLastPos:I

    .line 211
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->next()V

    .line 213
    return-void
.end method

.method public onProgress(Ljava/lang/Object;JJ)V
    .locals 4
    .param p1, "responseObj"    # Ljava/lang/Object;
    .param p2, "progrss"    # J
    .param p4, "currentLength"    # J

    .prologue
    .line 190
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    const-wide/16 v2, 0x64

    div-long v2, p4, v2

    div-long v2, p2, v2

    long-to-int v0, v2

    .line 191
    .local v0, "pos":I
    iget v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mLastPos:I

    if-eq v1, v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 193
    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mLastPos:I

    .line 195
    :cond_0
    return-void
.end method

.method public onStop(Lcom/fimi/album/entity/MediaModel;)V
    .locals 2
    .param p1, "reasonObj"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 217
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mLastPos:I

    .line 218
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 200
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mLastPos:I

    .line 201
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataResult:Ljava/util/List;

    move-object v0, p1

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->next()V

    .line 205
    return-void
.end method

.method public sendStopDownload(Lcom/fimi/album/entity/MediaModel;)V
    .locals 3
    .param p1, "mediaModel"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 283
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->taskHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    .line 284
    .local v0, "x8MediaOriginalDownloadTask":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;
    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->sendStopDownload()V

    .line 286
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->taskHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;->removeMediaListener()V

    goto :goto_0
.end method

.method public setUiDownloadListener(Lcom/fimi/album/interfaces/OnDownloadUiListener;)V
    .locals 0
    .param p1, "mUiDownloadListener"    # Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .prologue
    .line 64
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .line 65
    return-void
.end method

.method public startDownload()V
    .locals 0

    .prologue
    .line 97
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    return-void
.end method

.method public startDownload(Lcom/fimi/album/entity/MediaModel;)V
    .locals 4
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    const/4 v3, 0x0

    .line 100
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->addData(Lcom/fimi/album/entity/MediaModel;)V

    .line 102
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataResult:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->notityObserver(II)V

    .line 106
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-direct {v0, p1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;-><init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V

    .line 107
    .local v0, "d":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->taskHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fimi/album/entity/MediaModel;->getMd5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-boolean v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->isDownload:Z

    if-eqz v1, :cond_1

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->downloadFile()V

    .line 110
    invoke-virtual {p1, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloadFail(Z)V

    .line 111
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/fimi/album/entity/MediaModel;->setDownloading(Z)V

    .line 112
    invoke-virtual {p1, v3}, Lcom/fimi/album/entity/MediaModel;->setStop(Z)V

    goto :goto_0
.end method

.method public startDownload(Ljava/util/List;)V
    .locals 5
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
    .line 117
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    .local p1, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/album/entity/MediaModel;>;"
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->addList(Ljava/util/List;)V

    .line 118
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 119
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/entity/MediaModel;

    .line 120
    .local v2, "model":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isDownLoadOriginalFile()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->isDownloading()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;

    invoke-direct {v0, v2, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;-><init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V

    .line 128
    .local v0, "d":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->taskHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/fimi/album/entity/MediaModel;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->notityObserver(II)V

    goto :goto_1

    .line 132
    .end local v0    # "d":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaOriginalDownloadTask;
    .end local v2    # "model":Lcom/fimi/album/entity/MediaModel;
    :cond_3
    iget-boolean v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->isDownload:Z

    if-eqz v3, :cond_4

    .line 134
    :goto_2
    return-void

    .line 133
    :cond_4
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->downloadFile()V

    goto :goto_2
.end method

.method public stopAllDownload()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    const/4 v3, 0x0

    .line 163
    iput-boolean v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->isDownload:Z

    .line 164
    iput v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->index:I

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .line 166
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 167
    .local v0, "model":Lcom/fimi/album/entity/MediaModel;
    invoke-virtual {v0, v3}, Lcom/fimi/album/entity/MediaModel;->setDownloadFail(Z)V

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/fimi/album/entity/MediaModel;->setStop(Z)V

    goto :goto_0

    .line 172
    .end local v0    # "model":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->dataAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 173
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 174
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->taskHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 175
    return-void
.end method

.method public stopDownload()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;, "Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager<TT;>;"
    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->isDownload:Z

    .line 89
    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->index:I

    .line 90
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->taskHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 92
    return-void
.end method
