.class public Lcom/fimi/album/download/FileLoader;
.super Ljava/lang/Object;
.source "FileLoader.java"


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/album/download/FileLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 21
    return-void
.end method


# virtual methods
.method public queueDownload(Lcom/fimi/album/download/entity/FileInfo;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V
    .locals 2
    .param p1, "info"    # Lcom/fimi/album/download/entity/FileInfo;
    .param p2, "listener"    # Lcom/fimi/album/download/interfaces/OnDownloadListener;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/album/download/FileLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/fimi/album/download/task/DownloadTask;

    invoke-direct {v1, p1, p2}, Lcom/fimi/album/download/task/DownloadTask;-><init>(Lcom/fimi/album/download/entity/FileInfo;Lcom/fimi/album/download/interfaces/OnDownloadListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 26
    return-void
.end method
