.class public Lcom/fimi/kernel/network/okhttp/HttpThreadPool;
.super Ljava/lang/Object;
.source "HttpThreadPool.java"


# static fields
.field private static CORE_POOL_SIZE:I

.field private static KEEP_ALIVE_TIME:I

.field private static MAX_POOL_SIZE:I

.field private static threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 21
    const/4 v0, 0x5

    sput v0, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->CORE_POOL_SIZE:I

    .line 24
    const/16 v0, 0x64

    sput v0, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->MAX_POOL_SIZE:I

    .line 27
    const/16 v0, 0x2710

    sput v0, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->KEEP_ALIVE_TIME:I

    .line 30
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 34
    new-instance v0, Lcom/fimi/kernel/network/okhttp/HttpThreadPool$1;

    invoke-direct {v0}, Lcom/fimi/kernel/network/okhttp/HttpThreadPool$1;-><init>()V

    sput-object v0, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 45
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->CORE_POOL_SIZE:I

    sget v3, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->MAX_POOL_SIZE:I

    sget v0, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->KEEP_ALIVE_TIME:I

    int-to-long v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->workQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    sget-object v0, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public static getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/fimi/kernel/network/okhttp/HttpThreadPool;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
