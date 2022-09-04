.class public abstract Lorg/apache/mina/core/service/AbstractIoService;
.super Ljava/lang/Object;
.source "AbstractIoService.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final id:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final createdExecutor:Z

.field protected final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

.field private handler:Lorg/apache/mina/core/service/IoHandler;

.field private final listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

.field private final serviceActivationListener:Lorg/apache/mina/core/service/IoServiceListener;

.field protected final sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

.field private sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

.field private stats:Lorg/apache/mina/core/service/IoServiceStatistics;

.field private final threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/apache/mina/core/service/AbstractIoService;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoService$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/service/AbstractIoService$1;-><init>(Lorg/apache/mina/core/service/AbstractIoService;)V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->serviceActivationListener:Lorg/apache/mina/core/service/IoServiceListener;

    .line 137
    new-instance v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-direct {v0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    .line 139
    new-instance v0, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;

    invoke-direct {v0}, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposalLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/service/IoServiceStatistics;-><init>(Lorg/apache/mina/core/service/AbstractIoService;)V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionConfig"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TransportMetadata"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getSessionConfigType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sessionConfig type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/TransportMetadata;->getSessionConfigType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2
    new-instance v0, Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;-><init>(Lorg/apache/mina/core/service/IoService;)V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    .line 190
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->serviceActivationListener:Lorg/apache/mina/core/service/IoServiceListener;

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->add(Lorg/apache/mina/core/service/IoServiceListener;)V

    .line 193
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 197
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    .line 199
    if-nez p2, :cond_3

    .line 200
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->createdExecutor:Z

    .line 207
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/service/AbstractIoService;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->threadName:Ljava/lang/String;

    .line 208
    return-void

    .line 203
    :cond_3
    iput-object p2, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->createdExecutor:Z

    goto :goto_0
.end method


# virtual methods
.method public final addListener(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/mina/core/service/IoServiceListener;

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->add(Lorg/apache/mina/core/service/IoServiceListener;)V

    .line 243
    return-void
.end method

.method public final broadcast(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getManagedSessions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 407
    .local v0, "futures":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/future/WriteFuture;>;"
    new-instance v1, Lorg/apache/mina/core/service/AbstractIoService$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/mina/core/service/AbstractIoService$2;-><init>(Lorg/apache/mina/core/service/AbstractIoService;Ljava/util/List;)V

    return-object v1
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoService;->dispose(Z)V

    .line 278
    return-void
.end method

.method public final dispose(Z)V
    .locals 6
    .param p1, "awaitTermination"    # Z

    .prologue
    const/4 v5, 0x1

    .line 284
    iget-boolean v2, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposed:Z

    if-eqz v2, :cond_0

    .line 317
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposalLock:Ljava/lang/Object;

    monitor-enter v3

    .line 289
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposing:Z

    if-nez v2, :cond_1

    .line 290
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->dispose0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    iget-boolean v2, p0, Lorg/apache/mina/core/service/AbstractIoService;->createdExecutor:Z

    if-eqz v2, :cond_2

    .line 301
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 302
    .local v0, "e":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 303
    if-eqz p1, :cond_2

    .line 306
    :try_start_3
    sget-object v2, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "awaitTermination on {} called by thread=[{}]"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    const-wide/32 v2, 0x7fffffff

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 308
    sget-object v2, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "awaitTermination on {} finished"

    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 316
    .end local v0    # "e":Ljava/util/concurrent/ExecutorService;
    :cond_2
    :goto_2
    iput-boolean v5, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposed:Z

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 309
    .local v0, "e":Ljava/util/concurrent/ExecutorService;
    :catch_1
    move-exception v1

    .line 310
    .local v1, "e1":Ljava/lang/InterruptedException;
    sget-object v2, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "awaitTermination on [{}] was interrupted"

    invoke-interface {v2, v3, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2
.end method

.method protected abstract dispose0()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final executeWorker(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "worker"    # Ljava/lang/Runnable;

    .prologue
    .line 425
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/service/AbstractIoService;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method protected final executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "worker"    # Ljava/lang/Runnable;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->threadName:Ljava/lang/String;

    .line 430
    .local v0, "actualThreadName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/apache/mina/util/NamePreservingRunnable;

    invoke-direct {v2, p1, v0}, Lorg/apache/mina/util/NamePreservingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method protected finishSessionInitialization0(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "future"    # Lorg/apache/mina/core/future/IoFuture;

    .prologue
    .line 494
    return-void
.end method

.method public final getActivationTime()J
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getActivationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    instance-of v0, v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current filter chain builder is not a DefaultIoFilterChainBuilder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    return-object v0
.end method

.method public final getHandler()Lorg/apache/mina/core/service/IoHandler;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-object v0
.end method

.method public final getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    return-object v0
.end method

.method public final getManagedSessionCount()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessionCount()I

    move-result v0

    return v0
.end method

.method public final getManagedSessions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledWriteBytes()I
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getScheduledWriteBytes()I

    move-result v0

    return v0
.end method

.method public getScheduledWriteMessages()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getScheduledWriteMessages()I

    move-result v0

    return v0
.end method

.method public final getSessionDataStructureFactory()Lorg/apache/mina/core/session/IoSessionDataStructureFactory;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    return-object v0
.end method

.method public getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    return-object v0
.end method

.method protected final initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    .locals 8
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "future"    # Lorg/apache/mina/core/future/IoFuture;
    .param p3, "sessionInitializer"    # Lorg/apache/mina/core/session/IoSessionInitializer;

    .prologue
    const-wide/16 v6, 0x0

    .line 440
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v3}, Lorg/apache/mina/core/service/IoServiceStatistics;->getLastReadTime()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 441
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastReadTime(J)V

    .line 444
    :cond_0
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v3}, Lorg/apache/mina/core/service/IoServiceStatistics;->getLastWriteTime()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 445
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastWriteTime(J)V

    .line 453
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    move-object v3, v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/service/IoService;->getSessionDataStructureFactory()Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    move-result-object v4

    .line 454
    invoke-interface {v4, p1}, Lorg/apache/mina/core/session/IoSessionDataStructureFactory;->getAttributeMap(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v4

    .line 453
    invoke-virtual {v3, v4}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeMap(Lorg/apache/mina/core/session/IoSessionAttributeMap;)V
    :try_end_0
    .catch Lorg/apache/mina/core/session/IoSessionInitializationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 462
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    move-object v3, v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/service/IoService;->getSessionDataStructureFactory()Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    move-result-object v4

    .line 463
    invoke-interface {v4, p1}, Lorg/apache/mina/core/session/IoSessionDataStructureFactory;->getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v4

    .line 462
    invoke-virtual {v3, v4}, Lorg/apache/mina/core/session/AbstractIoSession;->setWriteRequestQueue(Lorg/apache/mina/core/write/WriteRequestQueue;)V
    :try_end_1
    .catch Lorg/apache/mina/core/session/IoSessionInitializationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 470
    if-eqz p2, :cond_2

    instance-of v3, p2, Lorg/apache/mina/core/future/ConnectFuture;

    if-eqz v3, :cond_2

    .line 472
    sget-object v3, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v3, p2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_2
    if-eqz p3, :cond_3

    .line 476
    invoke-interface {p3, p1, p2}, Lorg/apache/mina/core/session/IoSessionInitializer;->initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    .line 479
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoService;->finishSessionInitialization0(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    .line 480
    return-void

    .line 455
    :catch_0
    move-exception v2

    .line 456
    .local v2, "e":Lorg/apache/mina/core/session/IoSessionInitializationException;
    throw v2

    .line 457
    .end local v2    # "e":Lorg/apache/mina/core/session/IoSessionInitializationException;
    :catch_1
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/mina/core/session/IoSessionInitializationException;

    const-string v4, "Failed to initialize an attributeMap."

    invoke-direct {v3, v4, v2}, Lorg/apache/mina/core/session/IoSessionInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 464
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 465
    .local v2, "e":Lorg/apache/mina/core/session/IoSessionInitializationException;
    throw v2

    .line 466
    .end local v2    # "e":Lorg/apache/mina/core/session/IoSessionInitializationException;
    :catch_3
    move-exception v2

    .line 467
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/mina/core/session/IoSessionInitializationException;

    const-string v4, "Failed to initialize a writeRequestQueue."

    invoke-direct {v3, v4, v2}, Lorg/apache/mina/core/session/IoSessionInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final isActive()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->isActive()Z

    move-result v0

    return v0
.end method

.method public final isDisposed()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposed:Z

    return v0
.end method

.method public final isDisposing()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposing:Z

    return v0
.end method

.method public final removeListener(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/mina/core/service/IoServiceListener;

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->remove(Lorg/apache/mina/core/service/IoServiceListener;)V

    .line 250
    return-void
.end method

.method public final setFilterChainBuilder(Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;)V
    .locals 0
    .param p1, "builder"    # Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    new-instance p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    .end local p1    # "builder":Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    invoke-direct {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;-><init>()V

    .line 224
    .restart local p1    # "builder":Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    .line 225
    return-void
.end method

.method public final setHandler(Lorg/apache/mina/core/service/IoHandler;)V
    .locals 2
    .param p1, "handler"    # Lorg/apache/mina/core/service/IoHandler;

    .prologue
    .line 352
    if-nez p1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler cannot be set while the service is active."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->handler:Lorg/apache/mina/core/service/IoHandler;

    .line 361
    return-void
.end method

.method public final setSessionDataStructureFactory(Lorg/apache/mina/core/session/IoSessionDataStructureFactory;)V
    .locals 2
    .param p1, "sessionDataStructureFactory"    # Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionDataStructureFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sessionDataStructureFactory cannot be set while the service is active."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    .line 383
    return-void
.end method
