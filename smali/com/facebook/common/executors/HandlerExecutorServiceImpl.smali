.class public Lcom/facebook/common/executors/HandlerExecutorServiceImpl;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "HandlerExecutorServiceImpl.java"

# interfaces
.implements Lcom/facebook/common/executors/HandlerExecutorService;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method public isHandlerThread()Z
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/common/executors/ScheduledFutureImpl;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/facebook/common/executors/ScheduledFutureImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/facebook/common/executors/ScheduledFutureImpl;

    iget-object v1, p0, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/common/executors/ScheduledFutureImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Lcom/facebook/common/executors/ScheduledFutureImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lcom/facebook/common/executors/ScheduledFutureImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lcom/facebook/common/executors/ScheduledFutureImpl;

    iget-object v1, p0, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/facebook/common/executors/ScheduledFutureImpl;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method protected bridge synthetic newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/common/executors/ScheduledFutureImpl;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->newTaskFor(Ljava/util/concurrent/Callable;)Lcom/facebook/common/executors/ScheduledFutureImpl;

    move-result-object v0

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 124
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 4
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/common/executors/ScheduledFutureImpl;

    move-result-object v0

    .line 98
    .local v0, "future":Lcom/facebook/common/executors/ScheduledFutureImpl;, "Lcom/facebook/common/executors/ScheduledFutureImpl<*>;"
    iget-object v1, p0, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 4
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->newTaskFor(Ljava/util/concurrent/Callable;)Lcom/facebook/common/executors/ScheduledFutureImpl;

    move-result-object v0

    .line 105
    .local v0, "future":Lcom/facebook/common/executors/ScheduledFutureImpl;, "Lcom/facebook/common/executors/ScheduledFutureImpl<TV;>;"
    iget-object v1, p0, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ScheduledFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "result":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 82
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/facebook/common/executors/ScheduledFutureImpl;

    move-result-object v0

    .line 83
    .local v0, "future":Lcom/facebook/common/executors/ScheduledFutureImpl;, "Lcom/facebook/common/executors/ScheduledFutureImpl<TT;>;"
    invoke-virtual {p0, v0}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/ScheduledFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->newTaskFor(Ljava/util/concurrent/Callable;)Lcom/facebook/common/executors/ScheduledFutureImpl;

    move-result-object v0

    .line 91
    .local v0, "future":Lcom/facebook/common/executors/ScheduledFutureImpl;, "Lcom/facebook/common/executors/ScheduledFutureImpl<TT;>;"
    invoke-virtual {p0, v0}, Lcom/facebook/common/executors/HandlerExecutorServiceImpl;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-object v0
.end method
