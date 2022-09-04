.class public final Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "NioDatagramAcceptor.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/DatagramAcceptor;
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/service/AbstractIoAcceptor;",
        "Lorg/apache/mina/transport/socket/DatagramAcceptor;",
        "Lorg/apache/mina/core/service/IoProcessor",
        "<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

.field private static final SELECT_TIMEOUT:J = 0x3e8L


# instance fields
.field private acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/SocketAddress;",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final lock:Ljava/util/concurrent/Semaphore;

.field private final registerQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;",
            ">;"
        }
    .end annotation
.end field

.field private volatile selectable:Z

.field private volatile selector:Ljava/nio/channels/Selector;

.field private sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lorg/apache/mina/core/session/ExpiringSessionRecycler;

    invoke-direct {v0}, Lorg/apache/mina/core/session/ExpiringSessionRecycler;-><init>()V

    sput-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 120
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 121
    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    const/4 v2, 0x1

    .line 127
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 81
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    .line 84
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    .line 86
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    .line 88
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    .line 90
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    .line 93
    sget-object v1, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    iput-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 95
    new-instance v1, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->init()V

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-boolean v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez v1, :cond_0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez v2, :cond_1

    .line 139
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 142
    :cond_1
    :goto_1
    throw v1

    .line 134
    :catch_2
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to initialize."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic access$002(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)J
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # J

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->notifyIdleSessions(J)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    return v0
.end method

.method static synthetic access$202(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    return p1
.end method

.method static synthetic access$300(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerHandles()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$602(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;)Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->processReadySessions(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;J)V
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
    .param p1, "x1"    # J

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushSessions(J)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->unregisterHandles()I

    move-result v0

    return v0
.end method

.method private flush(Lorg/apache/mina/transport/socket/nio/NioSession;J)Z
    .locals 12
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 368
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v5

    .line 369
    .local v5, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v9

    .line 370
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v10

    ushr-int/lit8 v10, v10, 0x1

    add-int v3, v9, v10

    .line 372
    .local v3, "maxWrittenBytes":I
    const/4 v6, 0x0

    .line 376
    .local v6, "writtenBytes":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v4

    .line 378
    .local v4, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-nez v4, :cond_1

    .line 379
    invoke-interface {v5, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v4

    .line 381
    if-nez v4, :cond_0

    .line 382
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-virtual {p1, v6, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    .line 426
    :goto_1
    return v7

    .line 386
    :cond_0
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 389
    :cond_1
    invoke-interface {v4}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 391
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v9

    if-nez v9, :cond_2

    .line 393
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 394
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 395
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 423
    .end local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v4    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :catchall_0
    move-exception v7

    invoke-virtual {p1, v6, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    throw v7

    .line 399
    .restart local v0    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local v4    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :cond_2
    :try_start_2
    invoke-interface {v4}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v1

    .line 401
    .local v1, "destination":Ljava/net/SocketAddress;
    if-nez v1, :cond_3

    .line 402
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 405
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I

    move-result v2

    .line 407
    .local v2, "localWrittenBytes":I
    if-eqz v2, :cond_4

    if-lt v6, v3, :cond_5

    .line 409
    :cond_4
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v7}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 423
    invoke-virtual {p1, v6, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    move v7, v8

    goto :goto_1

    .line 413
    :cond_5
    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v9}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    .line 416
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 417
    add-int/2addr v6, v2

    .line 418
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 419
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v9

    invoke-interface {v9, v4}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private flushSessions(J)V
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 345
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/transport/socket/nio/NioSession;

    .line 347
    .local v2, "session":Lorg/apache/mina/transport/socket/nio/NioSession;
    if-nez v2, :cond_1

    .line 365
    return-void

    .line 353
    :cond_1
    invoke-virtual {v2}, Lorg/apache/mina/transport/socket/nio/NioSession;->unscheduledForFlush()V

    .line 356
    :try_start_0
    invoke-direct {p0, v2, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flush(Lorg/apache/mina/transport/socket/nio/NioSession;J)Z

    move-result v1

    .line 358
    .local v1, "flushedAll":Z
    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/mina/transport/socket/nio/NioSession;->isScheduledForFlush()Z

    move-result v3

    if-nez v3, :cond_0

    .line 359
    invoke-direct {p0, v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v1    # "flushedAll":Z
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 9
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 310
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 312
    .local v1, "handle":Ljava/nio/channels/DatagramChannel;
    if-nez v1, :cond_0

    .line 313
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown local address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 318
    :cond_0
    iget-object v7, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    monitor-enter v7

    .line 319
    :try_start_0
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    invoke-interface {v6, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->recycle(Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    .line 321
    .local v3, "session":Lorg/apache/mina/core/session/IoSession;
    if-eqz v3, :cond_1

    .line 322
    monitor-exit v7

    move-object v4, v3

    .end local v3    # "session":Lorg/apache/mina/core/session/IoSession;
    .local v4, "session":Lorg/apache/mina/core/session/IoSession;
    move-object v5, v3

    .line 340
    .end local v4    # "session":Lorg/apache/mina/core/session/IoSession;
    .local v5, "session":Lorg/apache/mina/core/session/IoSession;
    :goto_0
    return-object v5

    .line 326
    .end local v5    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local v3    # "session":Lorg/apache/mina/core/session/IoSession;
    :cond_1
    invoke-virtual {p0, p0, v1, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object v2

    .line 327
    .local v2, "newSession":Lorg/apache/mina/transport/socket/nio/NioSession;
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/apache/mina/core/session/IoSessionRecycler;->put(Lorg/apache/mina/core/session/IoSession;)V

    .line 328
    move-object v3, v2

    .line 329
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {p0, v3, v8, v8}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    .line 334
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 335
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object v4, v3

    .end local v3    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local v4    # "session":Lorg/apache/mina/core/session/IoSession;
    move-object v5, v3

    .line 340
    .end local v4    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local v5    # "session":Lorg/apache/mina/core/session/IoSession;
    goto :goto_0

    .line 329
    .end local v2    # "newSession":Lorg/apache/mina/transport/socket/nio/NioSession;
    .end local v5    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 336
    .restart local v2    # "newSession":Lorg/apache/mina/transport/socket/nio/NioSession;
    .restart local v3    # "session":Lorg/apache/mina/core/session/IoSession;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private notifyIdleSessions(J)V
    .locals 5
    .param p1, "currentTime"    # J

    .prologue
    .line 464
    iget-wide v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 465
    iput-wide p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lastIdleCheckTime:J

    .line 466
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleness(Ljava/util/Iterator;J)V

    .line 468
    :cond_0
    return-void
.end method

.method private processReadySessions(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "handles":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 262
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 263
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 264
    .local v3, "key":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 265
    .local v1, "handle":Ljava/nio/channels/DatagramChannel;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 268
    :try_start_0
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    invoke-direct {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->readHandle(Ljava/nio/channels/DatagramChannel;)V

    .line 272
    :cond_1
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getManagedSessions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/session/IoSession;

    .line 274
    .local v4, "session":Lorg/apache/mina/core/session/IoSession;
    check-cast v4, Lorg/apache/mina/transport/socket/nio/NioSession;

    .end local v4    # "session":Lorg/apache/mina/core/session/IoSession;
    invoke-direct {p0, v4}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 281
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "handle":Ljava/nio/channels/DatagramChannel;
    .end local v3    # "key":Ljava/nio/channels/SelectionKey;
    :cond_2
    return-void
.end method

.method private readHandle(Ljava/nio/channels/DatagramChannel;)V
    .locals 4
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getReadBufferSize()I

    move-result v3

    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 298
    .local v0, "readBuf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->receive(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;

    move-result-object v1

    .line 300
    .local v1, "remoteAddress":Ljava/net/SocketAddress;
    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    .line 303
    .local v2, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 305
    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    .line 307
    .end local v2    # "session":Lorg/apache/mina/core/session/IoSession;
    :cond_0
    return-void
.end method

.method private registerHandles()I
    .locals 9

    .prologue
    .line 217
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 219
    .local v4, "req":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v4, :cond_2

    .line 256
    const/4 v6, 0x0

    :cond_1
    :goto_1
    return v6

    .line 223
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v3, "newHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/SocketAddress;Ljava/nio/channels/DatagramChannel;>;"
    invoke-virtual {v4}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    .line 227
    .local v2, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/SocketAddress;

    .line 228
    .local v5, "socketAddress":Ljava/net/SocketAddress;
    invoke-virtual {p0, v5}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v1

    .line 229
    .local v1, "handle":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object v7

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 238
    .end local v1    # "handle":Ljava/nio/channels/DatagramChannel;
    .end local v5    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    invoke-virtual {v4}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 243
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 245
    .restart local v1    # "handle":Ljava/nio/channels/DatagramChannel;
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 246
    :catch_1
    move-exception v0

    .line 247
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "handle":Ljava/nio/channels/DatagramChannel;
    :cond_3
    :try_start_3
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 234
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    .line 235
    invoke-virtual {v4}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    .line 237
    invoke-interface {v3}, Ljava/util/Map;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    .line 242
    invoke-virtual {v4}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 243
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 245
    .restart local v1    # "handle":Ljava/nio/channels/DatagramChannel;
    :try_start_4
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 246
    :catch_2
    move-exception v0

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "handle":Ljava/nio/channels/DatagramChannel;
    :cond_4
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    goto/16 :goto_1

    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    goto/16 :goto_0

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 243
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 245
    .restart local v1    # "handle":Ljava/nio/channels/DatagramChannel;
    :try_start_5
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 246
    :catch_3
    move-exception v0

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v8

    invoke-virtual {v8, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "handle":Ljava/nio/channels/DatagramChannel;
    :cond_6
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    :cond_7
    throw v6
.end method

.method private scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .prologue
    const/4 v0, 0x1

    .line 287
    invoke-virtual {p1, v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->setScheduledForFlush(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startupAcceptor()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 474
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selectable:Z

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 476
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 477
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 480
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 482
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    if-nez v0, :cond_1

    .line 483
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;-><init>(Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;)V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    .line 484
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->acceptor:Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$Acceptor;

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->executeWorker(Ljava/lang/Runnable;)V

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method private unregisterHandles()I
    .locals 7

    .prologue
    .line 430
    const/4 v2, 0x0

    .line 433
    .local v2, "nHandles":I
    :goto_0
    iget-object v5, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 434
    .local v3, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v3, :cond_0

    .line 459
    return v2

    .line 439
    :cond_0
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/SocketAddress;

    .line 440
    .local v4, "socketAddress":Ljava/net/SocketAddress;
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/DatagramChannel;

    .line 442
    .local v1, "handle":Ljava/nio/channels/DatagramChannel;
    if-eqz v1, :cond_1

    .line 447
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    .line 448
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    add-int/lit8 v2, v2, 0x1

    .line 453
    goto :goto_1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    add-int/lit8 v2, v2, 0x1

    .line 453
    goto :goto_1

    .line 452
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    add-int/lit8 v2, v2, 0x1

    throw v5

    .line 456
    .end local v1    # "handle":Ljava/nio/channels/DatagramChannel;
    .end local v4    # "socketAddress":Ljava/net/SocketAddress;
    :cond_2
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->add(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public add(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .prologue
    .line 499
    return-void
.end method

.method protected final bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v2, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v2, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 512
    .local v2, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v3, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    .line 522
    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 525
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 526
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    iget-object v3, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 532
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 534
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 535
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v3

    throw v3

    .line 528
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    throw v3

    .line 541
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 543
    .local v1, "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    iget-object v3, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 544
    .local v0, "handle":Ljava/nio/channels/DatagramChannel;
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 547
    .end local v0    # "handle":Ljava/nio/channels/DatagramChannel;
    :cond_1
    return-object v1
.end method

.method protected close(Ljava/nio/channels/DatagramChannel;)V
    .locals 2
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v1}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 553
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 557
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 558
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 559
    return-void
.end method

.method protected destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 565
    :cond_0
    return-void
.end method

.method protected dispose0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->unbind()V

    .line 573
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    .line 574
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    .line 575
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->flush(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public flush(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    .line 584
    :cond_0
    return-void
.end method

.method public getDefaultLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 588
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 593
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    return-object v0
.end method

.method public final getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .prologue
    .line 608
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method protected init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    .line 492
    return-void
.end method

.method protected isReadable(Ljava/nio/channels/DatagramChannel;)Z
    .locals 2
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;

    .prologue
    .line 612
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v1}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 614
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 615
    :cond_0
    const/4 v1, 0x0

    .line 618
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    goto :goto_0
.end method

.method protected isWritable(Ljava/nio/channels/DatagramChannel;)Z
    .locals 2
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;

    .prologue
    .line 622
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v1}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 624
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 625
    :cond_0
    const/4 v1, 0x0

    .line 628
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v1

    goto :goto_0
.end method

.method protected localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;
    .locals 8
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 632
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 633
    .local v2, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 635
    .local v1, "inetAddress":Ljava/net/InetAddress;
    instance-of v5, v1, Ljava/net/Inet6Address;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Ljava/net/Inet6Address;

    invoke-virtual {v5}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 639
    check-cast v1, Ljava/net/Inet6Address;

    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v4

    .line 640
    .local v4, "ipV6Address":[B
    new-array v3, v7, [B

    .line 642
    .local v3, "ipV4Address":[B
    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 644
    invoke-static {v3}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 645
    .local v0, "inet4Adress":Ljava/net/InetAddress;
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-direct {v5, v0, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v2, v5

    .line 647
    .end local v0    # "inet4Adress":Ljava/net/InetAddress;
    .end local v2    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v3    # "ipV4Address":[B
    .end local v4    # "ipV6Address":[B
    :cond_0
    return-object v2
.end method

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 4
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 669
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isDisposing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Acceptor is being disposed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    :cond_0
    if-nez p1, :cond_1

    .line 674
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "remoteAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v2

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 679
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t create a session from a unbound service."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 683
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->newSessionWithoutLock(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    .line 684
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 686
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/Error;
    throw v0

    .line 688
    .end local v0    # "e":Ljava/lang/Error;
    :catch_2
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v3, "Failed to create a session."

    invoke-direct {v1, v3, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 3
    .param p2, "handle"    # Ljava/nio/channels/DatagramChannel;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/DatagramChannel;",
            "Ljava/net/SocketAddress;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2, v2}, Ljava/nio/channels/DatagramChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 655
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 656
    :cond_0
    const/4 v1, 0x0

    .line 662
    :goto_0
    return-object v1

    .line 659
    :cond_1
    new-instance v1, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;-><init>(Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/service/IoProcessor;Ljava/net/SocketAddress;)V

    .line 660
    .local v1, "newSession":Lorg/apache/mina/transport/socket/nio/NioDatagramSession;
    invoke-virtual {v1, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0
.end method

.method protected open(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 7
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 695
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 696
    .local v0, "ch":Ljava/nio/channels/DatagramChannel;
    const/4 v4, 0x0

    .line 698
    .local v4, "success":Z
    :try_start_0
    new-instance v5, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;

    invoke-direct {v5, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;-><init>(Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 699
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :try_start_2
    iget-object v5, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 718
    const/4 v4, 0x1

    .line 720
    if-nez v4, :cond_0

    .line 721
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    .line 725
    :cond_0
    return-object v0

    .line 703
    :catch_0
    move-exception v2

    .line 706
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while binding on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "original message : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 707
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "newMessage":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 709
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 712
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 714
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 720
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "newMessage":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-nez v4, :cond_1

    .line 721
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    :cond_1
    throw v5
.end method

.method protected receive(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .param p2, "buffer"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 729
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->remove(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public remove(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .prologue
    .line 736
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionRecycler()Lorg/apache/mina/core/session/IoSessionRecycler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSessionRecycler;->remove(Lorg/apache/mina/core/session/IoSession;)V

    .line 737
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    .line 738
    return-void
.end method

.method protected select()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method protected select(J)I
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    return v0
.end method

.method protected selectedHandles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "buffer"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p3, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 753
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v0

    return v0
.end method

.method public setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    .line 758
    return-void
.end method

.method protected setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "isInterested"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 763
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-nez v0, :cond_0

    .line 776
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 769
    .local v1, "newInterestOps":I
    if-eqz p2, :cond_1

    .line 770
    or-int/lit8 v1, v1, 0x4

    .line 775
    :goto_1
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0

    .line 772
    :cond_1
    and-int/lit8 v1, v1, -0x5

    goto :goto_1
.end method

.method public final setSessionRecycler(Lorg/apache/mina/core/session/IoSessionRecycler;)V
    .locals 3
    .param p1, "sessionRecycler"    # Lorg/apache/mina/core/session/IoSessionRecycler;

    .prologue
    .line 779
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "sessionRecycler can\'t be set while the acceptor is bound."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 784
    :cond_0
    if-nez p1, :cond_1

    .line 785
    :try_start_1
    sget-object p1, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->DEFAULT_RECYCLER:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 788
    :cond_1
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->sessionRecycler:Lorg/apache/mina/core/session/IoSessionRecycler;

    .line 789
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    return-void
.end method

.method protected final unbind0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 797
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 799
    .local v0, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->startupAcceptor()V

    .line 801
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->wakeup()V

    .line 803
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 805
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 808
    :cond_0
    return-void
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->updateTrafficControl(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public updateTrafficControl(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;

    .prologue
    .line 814
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected wakeup()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 819
    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 14
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    const/4 v13, 0x0

    .line 826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 827
    .local v4, "currentTime":J
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v9

    .line 828
    .local v9, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v11

    .line 829
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v12

    ushr-int/lit8 v12, v12, 0x1

    add-int v8, v11, v12

    .line 831
    .local v8, "maxWrittenBytes":I
    const/4 v10, 0x0

    .line 835
    .local v10, "writtenBytes":I
    invoke-interface/range {p2 .. p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 837
    .local v2, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    if-nez v11, :cond_2

    .line 839
    invoke-virtual {p1, v13}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 840
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 841
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 900
    :goto_0
    return-void

    .line 856
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 859
    :cond_1
    invoke-interface/range {p2 .. p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    move-object v2, v0

    .line 861
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v11

    if-nez v11, :cond_3

    .line 863
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 864
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 865
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 848
    :cond_2
    :goto_1
    if-nez p2, :cond_1

    .line 849
    invoke-interface {v9, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p2

    .line 851
    if-nez p2, :cond_0

    .line 852
    const/4 v11, 0x0

    invoke-virtual {p0, p1, v11}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :goto_2
    invoke-virtual {p1, v10, v4, v5}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    goto :goto_0

    .line 869
    :cond_3
    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v3

    .line 871
    .local v3, "destination":Ljava/net/SocketAddress;
    if-nez v3, :cond_4

    .line 872
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 875
    :cond_4
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I

    move-result v7

    .line 877
    .local v7, "localWrittenBytes":I
    if-eqz v7, :cond_5

    if-lt v10, v8, :cond_6

    .line 879
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {p0, p1, v11}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    .line 881
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v11, p1, v0}, Lorg/apache/mina/core/write/WriteRequestQueue;->offer(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 882
    invoke-direct {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->scheduleFlush(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 895
    .end local v3    # "destination":Ljava/net/SocketAddress;
    .end local v7    # "localWrittenBytes":I
    :catch_0
    move-exception v6

    .line 896
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v11

    invoke-interface {v11, v6}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 898
    invoke-virtual {p1, v10, v4, v5}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    goto :goto_0

    .line 884
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "destination":Ljava/net/SocketAddress;
    .restart local v7    # "localWrittenBytes":I
    :cond_6
    const/4 v11, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v11}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    .line 887
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Lorg/apache/mina/transport/socket/nio/NioSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 888
    add-int/2addr v10, v7

    .line 889
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    .line 890
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 898
    .end local v3    # "destination":Ljava/net/SocketAddress;
    .end local v7    # "localWrittenBytes":I
    :catchall_0
    move-exception v11

    invoke-virtual {p1, v10, v4, v5}, Lorg/apache/mina/transport/socket/nio/NioSession;->increaseWrittenBytes(IJ)V

    throw v11
.end method
