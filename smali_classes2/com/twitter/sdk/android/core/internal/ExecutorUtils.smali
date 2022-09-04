.class public final Lcom/twitter/sdk/android/core/internal/ExecutorUtils;
.super Ljava/lang/Object;
.source "ExecutorUtils.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final DEFAULT_TERMINATION_TIMEOUT:J = 0x1L

.field private static final KEEP_ALIVE:J = 0x1L

.field private static final MAXIMUM_POOL_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->CPU_COUNT:I

    .line 36
    sget v0, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->CORE_POOL_SIZE:I

    .line 37
    sget v0, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->MAXIMUM_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "service"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 75
    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    .line 77
    return-void
.end method

.method static addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "service"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "terminationTimeout"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/twitter/sdk/android/core/internal/ExecutorUtils$2;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/ExecutorUtils$2;-><init>(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Twitter Shutdown Hook for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 100
    return-void
.end method

.method public static buildSingleThreadScheduledExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->getNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 56
    .local v1, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 57
    .local v0, "executor":Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {p0, v0}, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 58
    return-object v0
.end method

.method public static buildThreadPoolExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->getNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 46
    .local v8, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->CORE_POOL_SIZE:I

    sget v3, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 49
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    invoke-static {p0, v1}, Lcom/twitter/sdk/android/core/internal/ExecutorUtils;->addDelayedShutdownHook(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 50
    return-object v1
.end method

.method static getNamedThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 4
    .param p0, "threadNameTemplate"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 64
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lcom/twitter/sdk/android/core/internal/ExecutorUtils$1;

    invoke-direct {v1, p0, v0}, Lcom/twitter/sdk/android/core/internal/ExecutorUtils$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method
