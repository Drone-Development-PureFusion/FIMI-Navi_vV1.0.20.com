.class public Lorg/apache/mina/core/future/DefaultIoFuture;
.super Ljava/lang/Object;
.source "DefaultIoFuture.java"

# interfaces
.implements Lorg/apache/mina/core/future/IoFuture;


# static fields
.field private static final DEAD_LOCK_CHECK_INTERVAL:J = 0x1388L


# instance fields
.field private firstListener:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private otherListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;>;"
        }
    .end annotation
.end field

.field private ready:Z

.field private result:Ljava/lang/Object;

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private waiters:I


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->session:Lorg/apache/mina/core/session/IoSession;

    .line 70
    iput-object p0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private await0(JZ)Z
    .locals 11
    .param p1, "timeoutMillis"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, v6, p1

    .line 187
    .local v2, "endTime":J
    cmp-long v1, v2, v8

    if-gez v1, :cond_0

    .line 188
    const-wide v2, 0x7fffffffffffffffL

    .line 191
    :cond_0
    iget-object v6, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 194
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_1

    cmp-long v1, p1, v8

    if-gtz v1, :cond_2

    .line 195
    :cond_1
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    monitor-exit v6

    .line 232
    :goto_0
    return v1

    .line 199
    :cond_2
    iget v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_1
    const-wide/16 v8, 0x1388

    :try_start_1
    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 209
    .local v4, "timeOut":J
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    .end local v4    # "timeOut":J
    :cond_3
    :try_start_2
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v2, v8

    if-gez v1, :cond_7

    .line 217
    :cond_4
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    :try_start_3
    iget v7, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 231
    iget-boolean v7, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v7, :cond_5

    .line 232
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_5
    monitor-exit v6

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/InterruptedException;
    if-eqz p3, :cond_3

    .line 212
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 229
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    :try_start_5
    iget v7, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 231
    iget-boolean v7, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v7, :cond_6

    .line 232
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_6
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    :cond_7
    :try_start_6
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1
.end method

.method private checkDeadLock()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 244
    instance-of v6, p0, Lorg/apache/mina/core/future/CloseFuture;

    if-nez v6, :cond_1

    instance-of v6, p0, Lorg/apache/mina/core/future/WriteFuture;

    if-nez v6, :cond_1

    instance-of v6, p0, Lorg/apache/mina/core/future/ReadFuture;

    if-nez v6, :cond_1

    instance-of v6, p0, Lorg/apache/mina/core/future/ConnectFuture;

    if-nez v6, :cond_1

    .line 282
    :cond_0
    return-void

    .line 254
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 257
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v7, v4

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v3, v4, v6

    .line 258
    .local v3, "stackElement":Ljava/lang/StackTraceElement;
    const-class v8, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 259
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "t"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 261
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DEAD LOCK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lorg/apache/mina/core/future/IoFuture;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".await() was invoked from an I/O processor thread.  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Please use "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lorg/apache/mina/core/future/IoFutureListener;

    .line 263
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or configure a proper thread model alternatively."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 257
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 268
    .end local v3    # "stackElement":Ljava/lang/StackTraceElement;
    :cond_3
    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v2, v4, v5

    .line 270
    .local v2, "s":Ljava/lang/StackTraceElement;
    :try_start_0
    const-class v7, Lorg/apache/mina/core/future/DefaultIoFuture;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 272
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 273
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DEAD LOCK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lorg/apache/mina/core/future/IoFuture;

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".await() was invoked from an I/O processor thread.  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Please use "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lorg/apache/mina/core/future/IoFutureListener;

    .line 275
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or configure a proper thread model alternatively."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v7

    .line 268
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/mina/core/future/IoFutureListener;

    .prologue
    .line 411
    :try_start_0
    invoke-interface {p1, p0}, Lorg/apache/mina/core/future/IoFutureListener;->operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 394
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    invoke-direct {p0, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    .line 396
    iput-object v3, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    .line 398
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFutureListener;

    .line 400
    .local v0, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    invoke-direct {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    goto :goto_0

    .line 403
    .end local v0    # "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    :cond_0
    iput-object v3, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    .line 406
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/IoFuture;"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    if-nez p1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-eqz v0, :cond_1

    .line 345
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    .line 357
    :goto_0
    monitor-exit v1

    .line 359
    return-object p0

    .line 347
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-nez v0, :cond_2

    .line 348
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 350
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-nez v0, :cond_3

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    .line 354
    :cond_3
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public await()Lorg/apache/mina/core/future/IoFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v0, :cond_2

    .line 102
    iget v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    :try_start_2
    iget v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 112
    iget-boolean v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 110
    :catchall_1
    move-exception v0

    :try_start_3
    iget v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    .line 112
    iget-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v2, :cond_1

    .line 113
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_1
    throw v0

    .line 117
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    return-object p0
.end method

.method public await(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 3

    .prologue
    .line 141
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-object p0

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 165
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method protected getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->result:Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    monitor-exit v1

    return v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public join()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    .line 86
    return-void
.end method

.method public join(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly(J)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener",
            "<*>;)",
            "Lorg/apache/mina/core/future/IoFuture;"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<*>;"
    if-nez p1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-ne p1, v0, :cond_3

    .line 373
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 374
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFutureListener;

    iput-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    .line 382
    :cond_1
    :goto_0
    monitor-exit v1

    .line 384
    return-object p0

    .line 376
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 378
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 301
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-eqz v2, :cond_0

    .line 304
    const/4 v0, 0x0

    monitor-exit v1

    .line 319
    :goto_0
    return v0

    .line 307
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->result:Ljava/lang/Object;

    .line 308
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    .line 311
    iget v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    if-lez v2, :cond_1

    .line 312
    iget-object v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 314
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListeners()V

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
