.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoAcceptor;
.source "AbstractPollingIoAcceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        "H:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/mina/core/service/AbstractIoAcceptor;"
    }
.end annotation


# instance fields
.field private acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor",
            "<TS;TH;>.Acceptor;>;"
        }
    .end annotation
.end field

.field protected backlog:I

.field private final boundHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/net/SocketAddress;",
            "TH;>;"
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

.field private final createdProcessor:Z

.field private final disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

.field private final lock:Ljava/util/concurrent/Semaphore;

.field private final processor:Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;"
        }
    .end annotation
.end field

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

.field protected reuseAddress:Z

.field private volatile selectable:Z


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V
    .locals 6
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v2, 0x0

    .line 115
    new-instance v3, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v3, p2}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    .line 116
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V
    .locals 6
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p3, "processorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;>;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v2, 0x0

    .line 134
    new-instance v3, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v3, p2, p3}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;I)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    .line 135
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V
    .locals 6
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p3, "processorCount"    # I
    .param p4, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;>;I",
            "Ljava/nio/channels/spi/SelectorProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v2, 0x0

    new-instance v3, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-direct {v3, p2, p3, p4}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    .line 155
    return-void
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 6
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    .line 194
    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V
    .locals 3
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "createdProcessor"    # Z
    .param p5, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;Z",
            "Ljava/nio/channels/spi/SelectorProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p3, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    const/4 v2, 0x1

    .line 220
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 73
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    .line 79
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    .line 81
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    .line 85
    new-instance v1, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    invoke-direct {v1}, Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    .line 91
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    .line 99
    const/16 v1, 0x32

    iput v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    .line 222
    if-nez p3, :cond_0

    .line 223
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "processor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    iput-object p3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    .line 227
    iput-boolean p4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->createdProcessor:Z

    .line 231
    :try_start_0
    invoke-virtual {p0, p5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->init(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez v1, :cond_1

    .line 243
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    :cond_1
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez v2, :cond_2

    .line 243
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 246
    :cond_2
    :goto_1
    throw v1

    .line 238
    :catch_2
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to initialize."

    invoke-direct {v1, v2, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 6
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionConfig;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p2, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    const/4 v2, 0x0

    .line 170
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;ZLjava/nio/channels/spi/SelectorProvider;)V

    .line 171
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->disposalFuture:Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
    .param p1, "x1"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "x2"    # Lorg/apache/mina/core/future/IoFuture;
    .param p3, "x3"    # Lorg/apache/mina/core/session/IoSessionInitializer;

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    return v0
.end method

.method static synthetic access$302(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    return p1
.end method

.method static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerHandles()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->unregisterHandles()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->createdProcessor:Z

    return v0
.end method

.method static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;)Lorg/apache/mina/core/service/IoProcessor;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->processor:Lorg/apache/mina/core/service/IoProcessor;

    return-object v0
.end method

.method private registerHandles()I
    .locals 9

    .prologue
    .line 571
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 573
    .local v2, "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v2, :cond_2

    .line 574
    const/4 v6, 0x0

    .line 614
    :cond_1
    :goto_1
    return v6

    .line 580
    :cond_2
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 581
    .local v5, "newHandles":Ljava/util/Map;, "Ljava/util/Map<Ljava/net/SocketAddress;TH;>;"
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getLocalAddresses()Ljava/util/List;

    move-result-object v4

    .line 585
    .local v4, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 586
    .local v0, "a":Ljava/net/SocketAddress;
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->open(Ljava/net/SocketAddress;)Ljava/lang/Object;

    move-result-object v3

    .line 587
    .local v3, "handle":Ljava/lang/Object;, "TH;"
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 598
    .end local v0    # "a":Ljava/net/SocketAddress;
    .end local v3    # "handle":Ljava/lang/Object;, "TH;"
    :catch_0
    move-exception v1

    .line 600
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 604
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 606
    .restart local v3    # "handle":Ljava/lang/Object;, "TH;"
    :try_start_2
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 607
    :catch_1
    move-exception v1

    .line 608
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "handle":Ljava/lang/Object;, "TH;"
    :cond_3
    :try_start_3
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 595
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    .line 597
    invoke-interface {v5}, Ljava/util/Map;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    .line 603
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 604
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 606
    .restart local v3    # "handle":Ljava/lang/Object;, "TH;"
    :try_start_4
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 607
    :catch_2
    move-exception v1

    .line 608
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 614
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "handle":Ljava/lang/Object;, "TH;"
    :cond_4
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    goto/16 :goto_1

    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    goto/16 :goto_0

    .line 603
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 604
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 606
    .restart local v3    # "handle":Ljava/lang/Object;, "TH;"
    :try_start_5
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 607
    :catch_3
    move-exception v1

    .line 608
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 614
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "handle":Ljava/lang/Object;, "TH;"
    :cond_6
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    :cond_7
    throw v6
.end method

.method private startupAcceptor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    const/4 v2, 0x0

    .line 394
    iget-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->selectable:Z

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 396
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 400
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;

    .line 402
    .local v0, "acceptor":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    if-nez v0, :cond_1

    .line 403
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 404
    new-instance v0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;

    .end local v0    # "acceptor":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    invoke-direct {v0, p0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$1;)V

    .line 406
    .restart local v0    # "acceptor":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor$Acceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>.Acceptor;"
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->acceptorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->executeWorker(Ljava/lang/Runnable;)V

    .line 412
    :cond_1
    :goto_0
    return-void

    .line 409
    :cond_2
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method private unregisterHandles()I
    .locals 7

    .prologue
    .line 627
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    const/4 v1, 0x0

    .line 629
    .local v1, "cancelledHandles":I
    :goto_0
    iget-object v5, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    .line 630
    .local v3, "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    if-nez v3, :cond_0

    .line 655
    return v1

    .line 635
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

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 636
    .local v0, "a":Ljava/net/SocketAddress;
    iget-object v6, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 638
    .local v4, "handle":Ljava/lang/Object;, "TH;"
    if-eqz v4, :cond_1

    .line 643
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->close(Ljava/lang/Object;)V

    .line 644
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    add-int/lit8 v1, v1, 0x1

    .line 649
    goto :goto_1

    .line 645
    :catch_0
    move-exception v2

    .line 646
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    add-int/lit8 v1, v1, 0x1

    .line 649
    goto :goto_1

    .line 648
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    add-int/lit8 v1, v1, 0x1

    throw v5

    .line 652
    .end local v0    # "a":Ljava/net/SocketAddress;
    .end local v4    # "handle":Ljava/lang/Object;, "TH;"
    :cond_2
    invoke-virtual {v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->setDone()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<TS;>;TH;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final bindInternal(Ljava/util/List;)Ljava/util/Set;
    .locals 5
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
    .line 343
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v2, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v2, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 347
    .local v2, "request":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->registerQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 357
    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 359
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 365
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 367
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 368
    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v3

    throw v3

    .line 361
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    throw v3

    .line 374
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 376
    .local v1, "newLocalAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->boundHandles:Ljava/util/Map;

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

    .line 377
    .local v0, "handle":Ljava/lang/Object;, "TH;"
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    .end local v0    # "handle":Ljava/lang/Object;, "TH;"
    :cond_1
    return-object v1
.end method

.method protected abstract close(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected dispose0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->unbind()V

    .line 332
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 333
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .line 334
    return-void
.end method

.method public getBacklog()I
    .locals 1

    .prologue
    .line 670
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    return v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;
    .locals 1

    .prologue
    .line 717
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    return-object v0
.end method

.method protected abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract init(Ljava/nio/channels/spi/SelectorProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public isReuseAddress()Z
    .locals 1

    .prologue
    .line 693
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    return v0
.end method

.method protected abstract localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)",
            "Ljava/net/SocketAddress;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final newSession(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/IoSession;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 663
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")TH;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract select()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract selectedHandles()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TH;>;"
        }
    .end annotation
.end method

.method public setBacklog(I)V
    .locals 3
    .param p1, "backlog"    # I

    .prologue
    .line 680
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 681
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "backlog can\'t be set while the acceptor is bound."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 685
    :cond_0
    :try_start_1
    iput p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->backlog:I

    .line 686
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 703
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 704
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "backlog can\'t be set while the acceptor is bound."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 708
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->reuseAddress:Z

    .line 709
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
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
    .line 419
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;, "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<TS;TH;>;"
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    new-instance v0, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;-><init>(Ljava/util/List;)V

    .line 421
    .local v0, "future":Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->cancelQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->startupAcceptor()V

    .line 423
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->wakeup()V

    .line 425
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 426
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;->getException()Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 429
    :cond_0
    return-void
.end method

.method protected abstract wakeup()V
.end method
