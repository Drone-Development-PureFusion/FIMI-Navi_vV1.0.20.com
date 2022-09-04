.class public Lorg/apache/mina/filter/executor/ExecutorFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ExecutorFilter.java"


# static fields
.field private static final BASE_THREAD_NUMBER:I = 0x0

.field private static final DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

.field private static final DEFAULT_KEEPALIVE_TIME:J = 0x1eL

.field private static final DEFAULT_MAX_POOL_SIZE:I = 0x10

.field private static final MANAGEABLE_EXECUTOR:Z = true

.field private static final NOT_MANAGEABLE_EXECUTOR:Z


# instance fields
.field private eventTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lorg/apache/mina/core/session/IoEventType;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;

.field private manageableExecutor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/mina/filter/executor/ExecutorFilter;->DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 153
    const/16 v3, 0x10

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    .line 153
    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 157
    .local v0, "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    new-array v2, v2, [Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 158
    return-void
.end method

.method public constructor <init>(I)V
    .locals 9
    .param p1, "maximumPoolSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 170
    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 171
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move v3, p1

    .line 170
    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 174
    .local v0, "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    new-array v2, v2, [Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 175
    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I

    .prologue
    .line 186
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 188
    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 189
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 188
    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 192
    .local v0, "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 193
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 204
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 207
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 206
    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 210
    .local v0, "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 211
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
    .line 244
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 246
    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 250
    .local v0, "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 251
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .prologue
    .line 265
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 267
    new-instance v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 271
    .local v1, "executor":Ljava/util/concurrent/Executor;
    const/4 v0, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 272
    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .param p8, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 397
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 399
    new-instance v3, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 403
    .local v3, "executor":Ljava/util/concurrent/Executor;
    const/4 v2, 0x1

    move-object/from16 v0, p8

    invoke-direct {p0, v3, v2, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 404
    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 375
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 377
    const/4 v10, 0x0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 381
    .local v2, "executor":Ljava/util/concurrent/Executor;
    const/4 v3, 0x1

    move-object/from16 v0, p7

    invoke-direct {p0, v2, v3, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 382
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
    .line 224
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 227
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    .line 226
    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 230
    .local v0, "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 231
    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .param p7, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 354
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 357
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    .line 356
    invoke-direct/range {v3 .. v10}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 360
    .local v2, "executor":Ljava/util/concurrent/Executor;
    const/4 v3, 0x1

    move-object/from16 v0, p7

    invoke-direct {p0, v2, v3, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 361
    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 333
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 336
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 335
    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 339
    .local v0, "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p6}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 340
    return-void
.end method

.method public varargs constructor <init>(II[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 313
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 315
    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 316
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 315
    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 319
    .local v0, "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 320
    return-void
.end method

.method public varargs constructor <init>(I[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "maximumPoolSize"    # I
    .param p2, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 296
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 298
    const/4 v2, 0x0

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 299
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move v3, p1

    .line 298
    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 302
    .local v0, "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 413
    new-array v0, v1, [Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 414
    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/Executor;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 422
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 425
    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9
    .param p1, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 280
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 282
    const/4 v2, 0x0

    const/16 v3, 0x10

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 283
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    .line 282
    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 286
    .local v0, "executor":Ljava/util/concurrent/Executor;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    .line 287
    return-void
.end method

.method private createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;
    .locals 9
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p7, "queueHandler"    # Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    .prologue
    .line 441
    new-instance v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    .line 444
    .local v1, "executor":Ljava/util/concurrent/Executor;
    return-object v1
.end method

.method private varargs init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "manageableExecutor"    # Z
    .param p3, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    invoke-direct {p0, p3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->initEventTypes([Lorg/apache/mina/core/session/IoEventType;)V

    .line 482
    iput-object p1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    .line 483
    iput-boolean p2, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->manageableExecutor:Z

    .line 484
    return-void
.end method

.method private varargs initEventTypes([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 3
    .param p1, "eventTypes"    # [Lorg/apache/mina/core/session/IoEventType;

    .prologue
    .line 454
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 455
    :cond_0
    sget-object p1, Lorg/apache/mina/filter/executor/ExecutorFilter;->DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

    .line 459
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    .line 462
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    .line 464
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->manageableExecutor:Z

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 495
    :cond_0
    return-void
.end method

.method public final exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 568
    iget-object v1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 570
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 574
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 620
    iget-object v1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 622
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 626
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    :goto_0
    return-void

    .line 624
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public final filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 607
    iget-object v1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 609
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 613
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    :goto_0
    return-void

    .line 611
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0
.end method

.method protected fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/mina/core/filterchain/IoFilterEvent;

    .prologue
    .line 510
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;

    .prologue
    .line 581
    iget-object v1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 583
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 587
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 594
    iget-object v1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 596
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 600
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 518
    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t add the same filter instance more than once.  Create another instance and add it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_0
    return-void
.end method

.method public final sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 542
    iget-object v1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 544
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 548
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method

.method public final sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;

    .prologue
    .line 555
    iget-object v1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 557
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 561
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    goto :goto_0
.end method

.method public final sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 529
    iget-object v1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v2, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 531
    .local v0, "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    .line 535
    .end local v0    # "event":Lorg/apache/mina/core/filterchain/IoFilterEvent;
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_0
.end method
