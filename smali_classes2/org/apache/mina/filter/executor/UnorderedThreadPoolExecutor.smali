.class public Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "UnorderedThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final EXIT_SIGNAL:Ljava/lang/Runnable;


# instance fields
.field private completedTaskCount:J

.field private volatile corePoolSize:I

.field private final idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile largestPoolSize:I

.field private volatile maximumPoolSize:I

.field private final queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

.field private volatile shutdown:Z

.field private final workers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(I)V

    .line 81
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maximumPoolSize"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(II)V

    .line 85
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I

    .prologue
    .line 88
    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;)V

    .line 89
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 92
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 93
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 102
    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 103
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 13
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .prologue
    .line 107
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v11}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v3, p0

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 63
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 71
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    if-gez p1, :cond_0

    .line 109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "corePoolSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_0
    if-eqz p2, :cond_1

    if-ge p2, p1, :cond_2

    .line 113
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maximumPoolSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_2
    if-nez p7, :cond_3

    .line 117
    sget-object p7, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->NOOP:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 120
    :cond_3
    iput p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    .line 121
    iput p2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    .line 122
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .line 123
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .prologue
    .line 97
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 98
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    .prologue
    .line 55
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J

    return-wide v0
.end method

.method static synthetic access$702(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
    .param p1, "x1"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J

    return-wide p1
.end method

.method static synthetic access$800(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Thread;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method private addWorker()V
    .locals 5

    .prologue
    .line 135
    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v3

    .line 136
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    if-lt v2, v4, :cond_0

    .line 137
    monitor-exit v3

    .line 150
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v1, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;)V

    .line 141
    .local v1, "worker":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 142
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->largestPoolSize:I

    if-le v2, v4, :cond_1

    .line 147
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iput v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->largestPoolSize:I

    .line 149
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v1    # "worker":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private addWorkerIfNecessary()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    .line 154
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorker()V

    .line 158
    :cond_1
    monitor-exit v1

    .line 160
    :cond_2
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkTaskType(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 288
    instance-of v0, p1, Lorg/apache/mina/core/session/IoEvent;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "task must be an IoEvent or its subclass."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    return-void
.end method

.method private rejectTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 285
    return-void
.end method

.method private removeWorker()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    if-gt v0, v2, :cond_0

    .line 165
    monitor-exit v1

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    sget-object v2, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 168
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long v0, v4, v6

    .line 197
    .local v0, "deadline":J
    iget-object v5, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v5

    .line 198
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 200
    .local v2, "waitTime":J
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gtz v4, :cond_1

    .line 206
    .end local v2    # "waitTime":J
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isTerminated()Z

    move-result v4

    return v4

    .line 204
    .restart local v2    # "waitTime":J
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 206
    .end local v2    # "waitTime":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 263
    iget-boolean v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    if-eqz v2, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->rejectTask(Ljava/lang/Runnable;)V

    .line 267
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    move-object v0, p1

    .line 269
    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    .line 270
    .local v0, "e":Lorg/apache/mina/core/session/IoEvent;
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v2, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v1

    .line 272
    .local v1, "offeredEvent":Z
    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 276
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorkerIfNecessary()V

    .line 278
    if-eqz v1, :cond_2

    .line 279
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v2, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 281
    :cond_2
    return-void
.end method

.method public getActiveCount()I
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v0, v2

    monitor-exit v1

    return v0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCompletedTaskCount()J
    .locals 8

    .prologue
    .line 302
    iget-object v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v4

    .line 303
    :try_start_0
    iget-wide v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J

    .line 304
    .local v0, "answer":J
    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;

    .line 305
    .local v2, "w":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    invoke-static {v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->access$100(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 306
    goto :goto_0

    .line 308
    .end local v2    # "w":Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    :cond_0
    monitor-exit v4

    return-wide v0

    .line 309
    .end local v0    # "answer":J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCorePoolSize()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method public getLargestPoolSize()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->largestPoolSize:I

    return v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .locals 2

    .prologue
    .line 319
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 221
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTerminating()Z
    .locals 2

    .prologue
    .line 331
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prestartAllCoreThreads()I
    .locals 5

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "answer":I
    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v3

    .line 340
    :try_start_0
    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    iget-object v4, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    sub-int v1, v2, v4

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 341
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorker()V

    .line 342
    add-int/lit8 v0, v0, 0x1

    .line 340
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 344
    :cond_0
    monitor-exit v3

    .line 345
    return v0

    .line 344
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public prestartCoreThread()Z
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    if-ge v0, v2, :cond_0

    .line 352
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorker()V

    .line 353
    const/4 v0, 0x1

    monitor-exit v1

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public purge()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 367
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    .line 368
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v1

    check-cast p1, Lorg/apache/mina/core/session/IoEvent;

    .end local p1    # "task":Ljava/lang/Runnable;
    invoke-interface {v1, p0, p1}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 371
    :cond_0
    return v0
.end method

.method public setCorePoolSize(I)V
    .locals 4
    .param p1, "corePoolSize"    # I

    .prologue
    .line 381
    if-gez p1, :cond_0

    .line 382
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "corePoolSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_0
    iget v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    if-le p1, v1, :cond_1

    .line 385
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "corePoolSize exceeds maximumPoolSize"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v2

    .line 389
    :try_start_0
    iget v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    if-le v1, p1, :cond_2

    .line 390
    iget v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    sub-int v0, v1, p1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_2

    .line 391
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->removeWorker()V

    .line 390
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 394
    .end local v0    # "i":I
    :cond_2
    iput p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    .line 395
    monitor-exit v2

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMaximumPoolSize(I)V
    .locals 4
    .param p1, "maximumPoolSize"    # I

    .prologue
    .line 178
    if-lez p1, :cond_0

    iget v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    if-ge p1, v1, :cond_1

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maximumPoolSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v2

    .line 183
    :try_start_0
    iput p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    .line 184
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sub-int v0, v1, p1

    .line 185
    .local v0, "difference":I
    :goto_0
    if-lez v0, :cond_2

    .line 186
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->removeWorker()V

    .line 187
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 189
    :cond_2
    monitor-exit v2

    .line 190
    return-void

    .line 189
    .end local v0    # "difference":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .param p1, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .prologue
    .line 132
    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 228
    iget-boolean v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    if-eqz v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    .line 234
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v2

    .line 235
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    sget-object v3, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 238
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 4
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
    .line 243
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown()V

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .local v1, "task":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 248
    sget-object v2, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_0

    .line 249
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 250
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v3

    move-object v2, v1

    check-cast v2, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v3, p0, v2}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_1
    return-object v0
.end method
