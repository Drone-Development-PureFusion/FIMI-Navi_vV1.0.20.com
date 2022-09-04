.class public Lcom/fimi/app/x8s/media/H264StreamParseThread;
.super Ljava/lang/Thread;
.source "H264StreamParseThread.java"


# instance fields
.field public cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<[B>;"
        }
    .end annotation
.end field

.field private isWait:Z

.field private mH264DataListener:Lcom/fimi/app/x8s/media/IH264DataListener;

.field private mStopFlag:Z


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/media/IH264DataListener;)V
    .locals 1
    .param p1, "mH264DataListener"    # Lcom/fimi/app/x8s/media/IH264DataListener;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 27
    iput-object p1, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->mH264DataListener:Lcom/fimi/app/x8s/media/IH264DataListener;

    .line 28
    return-void
.end method


# virtual methods
.method public getFpvSize()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    return v0
.end method

.method public notityParse([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/H264StreamParseThread;->sendSignal()V

    .line 50
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->mStopFlag:Z

    .line 73
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/H264StreamParseThread;->interrupt()V

    .line 74
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 33
    :goto_0
    iget-boolean v1, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->mStopFlag:Z

    if-nez v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 36
    .local v0, "data":[B
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->mH264DataListener:Lcom/fimi/app/x8s/media/IH264DataListener;

    invoke-interface {v1, v0}, Lcom/fimi/app/x8s/media/IH264DataListener;->onH264Frame([B)V

    goto :goto_0

    .line 38
    .end local v0    # "data":[B
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/media/H264StreamParseThread;->sendSignal()V

    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public sendSignal()V
    .locals 3

    .prologue
    .line 54
    iget-object v2, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v2

    .line 55
    :try_start_0
    iget-boolean v1, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->isWait:Z

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->isWait:Z

    .line 57
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 66
    :goto_0
    monitor-exit v2

    .line 67
    return-void

    .line 59
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->isWait:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    iget-object v1, p0, Lcom/fimi/app/x8s/media/H264StreamParseThread;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
