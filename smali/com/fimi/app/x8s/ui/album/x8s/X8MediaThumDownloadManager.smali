.class public Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;
.super Ljava/lang/Object;
.source "X8MediaThumDownloadManager.java"

# interfaces
.implements Lcom/fimi/album/download/interfaces/OnDownloadListener;
.implements Lcom/fimi/album/interfaces/IMediaDownload;


# static fields
.field private static x8MediaThumDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;


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

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private index:I

.field public isDownload:Z

.field private mHanler:Landroid/os/Handler;

.field private mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    invoke-direct {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;-><init>()V

    sput-object v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->x8MediaThumDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->data:Ljava/util/List;

    .line 104
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->mHanler:Landroid/os/Handler;

    .line 31
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;)Lcom/fimi/album/interfaces/OnDownloadUiListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    return-object v0
.end method

.method public static getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->x8MediaThumDownloadManager:Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    return-object v0
.end method


# virtual methods
.method public addData(Lcom/fimi/album/entity/MediaModel;)V
    .locals 1
    .param p1, "m"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public next()V
    .locals 3

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->isDownload:Z

    if-eqz v0, :cond_0

    .line 70
    iget v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->index:I

    .line 71
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->startDownload()V

    .line 72
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  ===============next index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onFailure(Ljava/lang/Object;)V
    .locals 3
    .param p1, "reasonObj"    # Ljava/lang/Object;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  ===============next onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->next()V

    .line 97
    return-void
.end method

.method public onProgress(Ljava/lang/Object;JJ)V
    .locals 6
    .param p1, "responseObj"    # Ljava/lang/Object;
    .param p2, "progrss"    # J
    .param p4, "currentLength"    # J

    .prologue
    .line 79
    const-wide/16 v2, 0x64

    div-long v2, p4, v2

    div-long v2, p2, v2

    long-to-int v0, v2

    .line 82
    .local v0, "pos":I
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v2, 0x0

    long-to-int v3, p2

    long-to-int v4, p2

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 83
    return-void
.end method

.method public onStop(Lcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "reasonObj"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 102
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "responseObj"    # Ljava/lang/Object;

    .prologue
    .line 86
    move-object v0, p1

    check-cast v0, Lcom/fimi/album/entity/MediaModel;

    .line 87
    .local v0, "model":Lcom/fimi/album/entity/MediaModel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/entity/MediaModel;->setThumDownloading(Z)V

    .line 88
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->mHanler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 89
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alanqiu  ===============next onSuccess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->next()V

    .line 91
    return-void
.end method

.method public setOnDownloadUiListener(Lcom/fimi/album/interfaces/OnDownloadUiListener;)V
    .locals 0
    .param p1, "mUiDownloadListener"    # Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->mUiDownloadListener:Lcom/fimi/album/interfaces/OnDownloadUiListener;

    .line 37
    return-void
.end method

.method public startDownload()V
    .locals 4

    .prologue
    .line 59
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->isDownload:Z

    .line 60
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->index:I

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 61
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->data:Ljava/util/List;

    iget v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/album/entity/MediaModel;

    .line 62
    .local v1, "info":Lcom/fimi/album/entity/MediaModel;
    new-instance v0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;

    invoke-direct {v0, v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;-><init>(Lcom/fimi/album/entity/MediaModel;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V

    .line 64
    .local v0, "d":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 66
    .end local v0    # "d":Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadTask;
    .end local v1    # "info":Lcom/fimi/album/entity/MediaModel;
    :cond_0
    return-void
.end method

.method public stopDownload()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->isDownload:Z

    .line 49
    iput v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->index:I

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    return-void
.end method
