.class public Lcom/fimi/kernel/utils/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    invoke-static {}, Lcom/fimi/kernel/utils/ThreadUtils;->getCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public static declared-synchronized getCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/fimi/kernel/utils/ThreadUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fimi/kernel/utils/ThreadUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/fimi/kernel/utils/ThreadUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 22
    :cond_0
    sget-object v0, Lcom/fimi/kernel/utils/ThreadUtils;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static releaseThreadPool()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/fimi/kernel/utils/ThreadUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/fimi/kernel/utils/ThreadUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/kernel/utils/ThreadUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 35
    :cond_0
    return-void
.end method

.method public static runInThreadPool(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 44
    invoke-static {}, Lcom/fimi/kernel/utils/ThreadUtils;->getCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
