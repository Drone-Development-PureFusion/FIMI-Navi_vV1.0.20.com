.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.super Ljava/lang/Object;
.source "AbstractPollingIoProcessor.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor",
        "<TS;>;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final SELECT_TIMEOUT:J = 0x3e8L

.field private static final threadIds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

.field private final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TS;>;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final newSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor",
            "<TS;>.Processor;>;"
        }
    .end annotation
.end field

.field private final removingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final threadName:Ljava/lang/String;

.field private final trafficControllingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TS;>;"
        }
    .end annotation
.end field

.field protected wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lorg/apache/mina/core/service/IoProcessor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadIds:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Lorg/apache/mina/core/future/DefaultIoFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->nextThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadName:Ljava/lang/String;

    .line 130
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->executor:Ljava/util/concurrent/Executor;

    .line 131
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/AbstractIoSession;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    return v0
.end method

.method static synthetic access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    return-object v0
.end method

.method static synthetic access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->handleNewSessions()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficMask()V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->process()V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # J

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(J)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeSessions()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p1, "x1"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->notifyIdleSessions(J)V

    return-void
.end method

.method private addNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v4, 0x0

    .line 507
    .local v4, "registered":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->init(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 508
    const/4 v4, 0x1

    .line 511
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/mina/core/service/IoService;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v0

    .line 512
    .local v0, "chainBuilder":Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 517
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v5}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v3

    .line 518
    .local v3, "listeners":Lorg/apache/mina/core/service/IoServiceListenerSupport;
    invoke-virtual {v3, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .end local v0    # "chainBuilder":Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    .end local v3    # "listeners":Lorg/apache/mina/core/service/IoServiceListenerSupport;
    :goto_0
    return v4

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 523
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    const/4 v4, 0x0

    .line 528
    goto :goto_0

    .line 524
    :catch_1
    move-exception v2

    .line 525
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    const/4 v4, 0x0

    .line 528
    goto :goto_0

    .line 527
    .end local v2    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const/4 v4, 0x0

    throw v5
.end method

.method private clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v7

    .line 604
    .local v7, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v2, "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-interface {v7, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v6

    .local v6, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-eqz v6, :cond_2

    .line 607
    invoke-interface {v6}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v4

    .line 609
    .local v4, "message":Ljava/lang/Object;
    instance-of v8, v4, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v8, :cond_1

    move-object v0, v4

    .line 610
    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 614
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 615
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 616
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    invoke-interface {v7, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 627
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    .restart local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    .line 619
    .local v3, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v3, v6}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 622
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :cond_1
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 632
    .end local v4    # "message":Ljava/lang/Object;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 633
    new-instance v1, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-direct {v1, v2}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;)V

    .line 635
    .local v1, "cause":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/write/WriteRequest;

    .line 636
    .local v5, "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-virtual {p1, v5}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledBytesAndMessages(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 637
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 640
    .end local v5    # "r":Lorg/apache/mina/core/write/WriteRequest;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    .line 641
    .restart local v3    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v3, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 643
    .end local v1    # "cause":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .end local v3    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :cond_4
    return-void
.end method

.method private fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p2, "req"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 982
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 983
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    .line 984
    .local v0, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v0, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 985
    return-void
.end method

.method private flush(J)V
    .locals 7
    .param p1, "currentTime"    # J

    .prologue
    .line 745
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 753
    .local v3, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    if-eqz v3, :cond_0

    .line 760
    invoke-virtual {v3}, Lorg/apache/mina/core/session/AbstractIoSession;->unscheduledForFlush()V

    .line 762
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v4

    .line 764
    .local v4, "state":Lorg/apache/mina/core/session/SessionState;
    sget-object v5, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v4}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 794
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 767
    :pswitch_0
    :try_start_0
    invoke-direct {p0, v3, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushNow(Lorg/apache/mina/core/session/AbstractIoSession;J)Z

    move-result v2

    .line 769
    .local v2, "flushedAll":Z
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 770
    invoke-virtual {v3}, Lorg/apache/mina/core/session/AbstractIoSession;->isScheduledForFlush()Z

    move-result v5

    if-nez v5, :cond_2

    .line 771
    invoke-direct {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .end local v2    # "flushedAll":Z
    :cond_2
    :goto_1
    :pswitch_1
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 775
    invoke-virtual {v3}, Lorg/apache/mina/core/session/AbstractIoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 776
    invoke-virtual {v3}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 777
    .local v1, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 790
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :pswitch_2
    invoke-direct {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    goto :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private flushNow(Lorg/apache/mina/core/session/AbstractIoSession;J)Z
    .locals 18
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J)Z"
        }
    .end annotation

    .prologue
    .line 801
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 802
    invoke-direct/range {p0 .. p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 803
    const/4 v3, 0x0

    .line 899
    :goto_0
    return v3

    .line 806
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v6

    .line 808
    .local v6, "hasFragmentation":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v14

    .line 813
    .local v14, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v3

    .line 814
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v4

    ushr-int/lit8 v4, v4, 0x1

    add-int v12, v3, v4

    .line 815
    .local v12, "maxWrittenBytes":I
    const/4 v15, 0x0

    .line 816
    .local v15, "writtenBytes":I
    const/4 v5, 0x0

    .line 820
    .local v5, "req":Lorg/apache/mina/core/write/WriteRequest;
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    .line 824
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v5

    .line 826
    if-nez v5, :cond_3

    .line 827
    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v5

    .line 829
    if-nez v5, :cond_2

    .line 899
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 833
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 837
    :cond_3
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v13

    .line 839
    .local v13, "message":Ljava/lang/Object;
    instance-of v3, v13, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v3, :cond_4

    .line 840
    sub-int v7, v12, v15

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v3 .. v9}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->writeBuffer(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I

    move-result v11

    .line 843
    .local v11, "localWrittenBytes":I
    if-lez v11, :cond_7

    move-object v0, v13

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 845
    add-int/2addr v15, v11

    .line 846
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    .line 847
    const/4 v3, 0x0

    goto :goto_0

    .line 849
    .end local v11    # "localWrittenBytes":I
    :cond_4
    instance-of v3, v13, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v3, :cond_5

    .line 850
    sub-int v7, v12, v15

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v3 .. v9}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->writeFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I

    move-result v11

    .line 858
    .restart local v11    # "localWrittenBytes":I
    if-lez v11, :cond_7

    move-object v0, v13

    check-cast v0, Lorg/apache/mina/core/file/FileRegion;

    move-object v3, v0

    invoke-interface {v3}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmp-long v3, v8, v16

    if-lez v3, :cond_7

    .line 859
    add-int/2addr v15, v11

    .line 860
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    .line 861
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 864
    .end local v11    # "localWrittenBytes":I
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Don\'t know how to handle message of type \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 865
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'.  Are you missing a protocol encoder?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    .end local v13    # "message":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 890
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_6

    .line 891
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 894
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v10

    .line 895
    .local v10, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v10, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 896
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 868
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    .restart local v11    # "localWrittenBytes":I
    .restart local v13    # "message":Ljava/lang/Object;
    :cond_7
    if-nez v11, :cond_8

    .line 871
    :try_start_1
    sget-object v3, Lorg/apache/mina/core/session/AbstractIoSession;->MESSAGE_SENT_REQUEST:Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 872
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    .line 873
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 876
    :cond_8
    add-int/2addr v15, v11

    .line 878
    if-lt v15, v12, :cond_9

    .line 880
    invoke-direct/range {p0 .. p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 881
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 885
    :cond_9
    instance-of v3, v13, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v3, :cond_a

    .line 886
    check-cast v13, Lorg/apache/mina/core/buffer/IoBuffer;

    .end local v13    # "message":Ljava/lang/Object;
    invoke-virtual {v13}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 888
    :cond_a
    if-lt v15, v12, :cond_1

    goto/16 :goto_1
.end method

.method private handleNewSessions()I
    .locals 3

    .prologue
    .line 484
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    const/4 v0, 0x0

    .line 486
    .local v0, "addedSessions":I
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :goto_0
    if-eqz v1, :cond_1

    .line 487
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->addNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    add-int/lit8 v0, v0, 0x1

    .line 486
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .restart local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    goto :goto_0

    .line 493
    :cond_1
    return v0
.end method

.method private nextThreadName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 142
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadIds:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 147
    .local v2, "threadId":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v2, :cond_0

    .line 148
    const/4 v1, 0x1

    .line 155
    .local v1, "newThreadId":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 151
    .end local v1    # "newThreadId":I
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .restart local v1    # "newThreadId":I
    goto :goto_0
.end method

.method private notifyIdleSessions(J)V
    .locals 5
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 736
    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    .line 737
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessions()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleness(Ljava/util/Iterator;J)V

    .line 739
    :cond_0
    return-void
.end method

.method private process()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->selectedSessions()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 648
    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->process(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 649
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 651
    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_0
    return-void
.end method

.method private process(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 663
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_1
    return-void
.end method

.method private read(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    .line 671
    .local v2, "config":Lorg/apache/mina/core/session/IoSessionConfig;
    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v1

    .line 672
    .local v1, "bufferSize":I
    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 674
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v5

    .line 677
    .local v5, "hasFragmentation":Z
    const/4 v6, 0x0

    .line 681
    .local v6, "readBytes":I
    if-eqz v5, :cond_4

    .line 683
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result v7

    .local v7, "ret":I
    if-lez v7, :cond_1

    .line 684
    add-int/2addr v6, v7

    .line 686
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 698
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 701
    if-lez v6, :cond_2

    .line 702
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v4

    .line 703
    .local v4, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v4, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 704
    const/4 v0, 0x0

    .line 706
    if-eqz v5, :cond_2

    .line 707
    shl-int/lit8 v8, v6, 0x1

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 708
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseReadBufferSize()V

    .line 715
    .end local v4    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :cond_2
    :goto_1
    if-gez v7, :cond_3

    .line 716
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v4

    .line 717
    .restart local v4    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v4}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireInputClosed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 731
    .end local v2    # "config":Lorg/apache/mina/core/session/IoSessionConfig;
    .end local v4    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    .end local v7    # "ret":I
    :cond_3
    :goto_2
    return-void

    .line 691
    .restart local v2    # "config":Lorg/apache/mina/core/session/IoSessionConfig;
    :cond_4
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 693
    .restart local v7    # "ret":I
    if-lez v7, :cond_1

    .line 694
    move v6, v7

    goto :goto_0

    .line 698
    .end local v7    # "ret":I
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 719
    :catch_0
    move-exception v3

    .line 720
    .local v3, "e":Ljava/lang/Exception;
    instance-of v8, v3, Ljava/io/IOException;

    if-eqz v8, :cond_6

    .line 721
    instance-of v8, v3, Ljava/net/PortUnreachableException;

    if-eqz v8, :cond_5

    const-class v8, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    .line 722
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    check-cast v2, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    .line 723
    .end local v2    # "config":Lorg/apache/mina/core/session/IoSessionConfig;
    invoke-virtual {v2}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isCloseOnPortUnreachable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 724
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 728
    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v4

    .line 729
    .restart local v4    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v4, v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 709
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "config":Lorg/apache/mina/core/session/IoSessionConfig;
    .restart local v7    # "ret":I
    :cond_7
    :try_start_4
    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v8

    if-ne v6, v8, :cond_2

    .line 710
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadBufferSize()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method private removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 579
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    const/4 v3, 0x1

    .line 586
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move v2, v3

    .line 597
    :goto_1
    return v2

    .line 588
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 593
    .local v1, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :catch_1
    move-exception v0

    .line 582
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 583
    .restart local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    :try_start_3
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 597
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 588
    :catch_2
    move-exception v0

    .line 592
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 593
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 585
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :catchall_0
    move-exception v2

    move-object v3, v2

    .line 586
    :try_start_4
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 587
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 594
    :goto_3
    throw v3

    .line 588
    :catch_3
    move-exception v0

    .line 592
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 593
    .restart local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private removeSessions()I
    .locals 5

    .prologue
    .line 535
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    const/4 v0, 0x0

    .line 537
    .local v0, "removedSessions":I
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :goto_0
    if-eqz v1, :cond_1

    .line 538
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v2

    .line 541
    .local v2, "state":Lorg/apache/mina/core/session/SessionState;
    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v2}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 568
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 544
    :pswitch_0
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    add-int/lit8 v0, v0, 0x1

    .line 537
    :cond_0
    :goto_1
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .restart local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    goto :goto_0

    .line 553
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 554
    goto :goto_1

    .line 559
    :pswitch_2
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 561
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 572
    .end local v2    # "state":Lorg/apache/mina/core/session/SessionState;
    :cond_1
    return v0

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_0
    return-void
.end method

.method private scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_0
    return-void
.end method

.method private startupProcessor()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    const/4 v2, 0x0

    .line 443
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;

    .line 445
    .local v0, "processor":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;

    .end local v0    # "processor":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    invoke-direct {v0, p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;)V

    .line 448
    .restart local v0    # "processor":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/apache/mina/util/NamePreservingRunnable;

    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/apache/mina/util/NamePreservingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 455
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    .line 456
    return-void
.end method

.method private updateTrafficMask()V
    .locals 5

    .prologue
    .line 991
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v0

    .line 993
    .local v0, "queueSize":I
    :goto_0
    if-lez v0, :cond_0

    .line 994
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 996
    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    if-nez v1, :cond_1

    .line 1031
    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_0
    return-void

    .line 1001
    .restart local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v2

    .line 1003
    .local v2, "state":Lorg/apache/mina/core/session/SessionState;
    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v2}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1021
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1005
    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1029
    :goto_1
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 1030
    goto :goto_0

    .line 1017
    :pswitch_2
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1003
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private writeBuffer(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I
    .locals 9
    .param p2, "req"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p3, "hasFragmentation"    # Z
    .param p4, "maxLength"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            "ZIJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 905
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v3, 0x0

    .line 907
    .local v3, "localWrittenBytes":I
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 910
    if-eqz p3, :cond_3

    .line 911
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v7

    invoke-static {v7, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 917
    .local v2, "length":I
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 929
    .end local v2    # "length":I
    :cond_0
    invoke-virtual {p1, v3, p5, p6}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    .line 932
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez p3, :cond_2

    if-eqz v3, :cond_2

    .line 934
    :cond_1
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v5

    .line 936
    .local v5, "originalMessage":Ljava/lang/Object;
    instance-of v7, v5, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v7, :cond_4

    .line 937
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getOriginalRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 939
    .restart local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v6

    .line 940
    .local v6, "pos":I
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 941
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 943
    invoke-virtual {v0, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .end local v5    # "originalMessage":Ljava/lang/Object;
    .end local v6    # "pos":I
    :cond_2
    :goto_1
    move v4, v3

    .end local v3    # "localWrittenBytes":I
    .local v4, "localWrittenBytes":I
    move v7, v3

    .line 949
    :goto_2
    return v7

    .line 913
    .end local v4    # "localWrittenBytes":I
    .restart local v3    # "localWrittenBytes":I
    :cond_3
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    .restart local v2    # "length":I
    goto :goto_0

    .line 918
    :catch_0
    move-exception v1

    .line 921
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 922
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 923
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    .line 925
    const/4 v7, 0x0

    move v4, v3

    .end local v3    # "localWrittenBytes":I
    .restart local v4    # "localWrittenBytes":I
    goto :goto_2

    .line 945
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "length":I
    .end local v4    # "localWrittenBytes":I
    .restart local v3    # "localWrittenBytes":I
    .restart local v5    # "originalMessage":Ljava/lang/Object;
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1
.end method

.method private writeFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I
    .locals 9
    .param p2, "req"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p3, "hasFragmentation"    # Z
    .param p4, "maxLength"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            "ZIJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 955
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/file/FileRegion;

    .line 957
    .local v2, "region":Lorg/apache/mina/core/file/FileRegion;
    invoke-interface {v2}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 960
    if-eqz p3, :cond_2

    .line 961
    invoke-interface {v2}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v4

    int-to-long v6, p4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 966
    .local v0, "length":I
    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I

    move-result v1

    .line 967
    .local v1, "localWrittenBytes":I
    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lorg/apache/mina/core/file/FileRegion;->update(J)V

    .line 972
    .end local v0    # "length":I
    :goto_1
    invoke-virtual {p1, v1, p5, p6}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    .line 974
    invoke-interface {v2}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    if-nez p3, :cond_1

    if-eqz v1, :cond_1

    .line 975
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 978
    :cond_1
    return v1

    .line 963
    .end local v1    # "localWrittenBytes":I
    :cond_2
    const-wide/32 v4, 0x7fffffff

    invoke-interface {v2}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .restart local v0    # "length":I
    goto :goto_0

    .line 969
    .end local v0    # "length":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "localWrittenBytes":I
    goto :goto_1
.end method


# virtual methods
.method public final add(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    .line 376
    return-void
.end method

.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->add(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract allSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation
.end method

.method protected abstract destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final dispose()V
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    const/4 v2, 0x1

    .line 179
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    .line 185
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    .line 186
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 189
    iput-boolean v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract doDispose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final flush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    .line 418
    :cond_0
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/apache/mina/core/session/SessionState;"
        }
    .end annotation
.end method

.method protected abstract init(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isBrokenConnection()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isDisposed()Z
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    return v0
.end method

.method public final isDisposing()Z
    .locals 1

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    return v0
.end method

.method protected abstract isInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract isSelectorEmpty()Z
.end method

.method protected abstract isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method protected abstract read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract registerNewSelector()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final remove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 384
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    .line 385
    return-void
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->remove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method protected abstract select()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract select(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract selectedSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TS;>;"
        }
    .end annotation
.end method

.method protected abstract setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/file/FileRegion;",
            "I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1040
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    invoke-virtual {p0, p1, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1047
    :goto_2
    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1053
    :goto_3
    return-void

    :cond_0
    move v4, v3

    .line 1040
    goto :goto_0

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 1043
    .local v1, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :cond_1
    move v2, v3

    .line 1048
    goto :goto_2

    .line 1049
    :catch_1
    move-exception v0

    .line 1050
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 1051
    .restart local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final updateTrafficMask(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    .line 436
    return-void
.end method

.method protected abstract wakeup()V
.end method

.method protected abstract write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            "I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 400
    .local v0, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 402
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 405
    :cond_0
    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method
