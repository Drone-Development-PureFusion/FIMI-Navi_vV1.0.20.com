.class public Lorg/apache/mina/core/service/IoServiceListenerSupport;
.super Ljava/lang/Object;
.source "IoServiceListenerSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;
    }
.end annotation


# instance fields
.field private final activated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile activationTime:J

.field private cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile largestManagedSessionCount:I

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/mina/core/service/IoServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final managedSessions:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final readOnlyManagedSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lorg/apache/mina/core/service/IoService;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/service/IoService;)V
    .locals 4
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    .line 54
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->readOnlyManagedSessions:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    .line 78
    return-void
.end method

.method private disconnectSessions()V
    .locals 6

    .prologue
    .line 278
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    instance-of v3, v3, Lorg/apache/mina/core/service/IoAcceptor;

    if-nez v3, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    check-cast v3, Lorg/apache/mina/core/service/IoAcceptor;

    invoke-interface {v3}, Lorg/apache/mina/core/service/IoAcceptor;->isCloseOnDeactivation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 288
    .local v1, "lock":Ljava/lang/Object;
    new-instance v0, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;

    invoke-direct {v0, v1}, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;-><init>(Ljava/lang/Object;)V

    .line 290
    .local v0, "listener":Lorg/apache/mina/core/future/IoFutureListener;, "Lorg/apache/mina/core/future/IoFutureListener<Lorg/apache/mina/core/future/IoFuture;>;"
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/session/IoSession;

    .line 291
    .local v2, "s":Lorg/apache/mina/core/session/IoSession;
    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/apache/mina/core/future/CloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    goto :goto_1

    .line 295
    .end local v2    # "s":Lorg/apache/mina/core/session/IoSession;
    :cond_2
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_2
    :try_start_1
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 297
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 299
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 300
    :catch_0
    move-exception v3

    goto :goto_0

    .line 299
    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/mina/core/service/IoServiceListener;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public fireServiceActivated()V
    .locals 5

    .prologue
    .line 145
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activationTime:J

    .line 153
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoServiceListener;

    .line 155
    .local v1, "listener":Lorg/apache/mina/core/service/IoServiceListener;
    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    invoke-interface {v1, v3}, Lorg/apache/mina/core/service/IoServiceListener;->serviceActivated(Lorg/apache/mina/core/service/IoService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireServiceDeactivated()V
    .locals 5

    .prologue
    .line 167
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    :goto_0
    return-void

    .line 174
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .local v1, "listener":Lorg/apache/mina/core/service/IoServiceListener;
    :try_start_1
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->service:Lorg/apache/mina/core/service/IoService;

    invoke-interface {v1, v3}, Lorg/apache/mina/core/service/IoServiceListener;->serviceDeactivated(Lorg/apache/mina/core/service/IoService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "listener":Lorg/apache/mina/core/service/IoServiceListener;
    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->disconnectSessions()V

    throw v2

    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->disconnectSessions()V

    goto :goto_0
.end method

.method public fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    .locals 8
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 192
    const/4 v2, 0x0

    .line 194
    .local v2, "firstSession":Z
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v5

    instance-of v5, v5, Lorg/apache/mina/core/service/IoConnector;

    if-eqz v5, :cond_0

    .line 195
    iget-object v6, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v6

    .line 196
    :try_start_0
    iget-object v5, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    .line 197
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_0
    iget-object v5, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 231
    :cond_1
    return-void

    .line 197
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 206
    :cond_2
    if-eqz v2, :cond_3

    .line 207
    invoke-virtual {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    .line 211
    :cond_3
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 212
    .local v1, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionCreated()V

    .line 213
    invoke-interface {v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionOpened()V

    .line 215
    iget-object v5, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    .line 217
    .local v4, "managedSessionCount":I
    iget v5, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    if-le v4, v5, :cond_4

    .line 218
    iput v4, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    .line 221
    :cond_4
    iget-object v5, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 224
    iget-object v5, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/mina/core/service/IoServiceListener;

    .line 226
    .local v3, "l":Lorg/apache/mina/core/service/IoServiceListener;
    :try_start_2
    invoke-interface {v3, p1}, Lorg/apache/mina/core/service/IoServiceListener;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 240
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireSessionClosed()V

    .line 249
    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/IoServiceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .local v1, "l":Lorg/apache/mina/core/service/IoServiceListener;
    :try_start_1
    invoke-interface {v1, p1}, Lorg/apache/mina/core/service/IoServiceListener;->sessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "l":Lorg/apache/mina/core/service/IoServiceListener;
    :catchall_0
    move-exception v3

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v4

    instance-of v4, v4, Lorg/apache/mina/core/service/IoConnector;

    if-eqz v4, :cond_2

    .line 259
    const/4 v2, 0x0

    .line 261
    .local v2, "lastSession":Z
    iget-object v4, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v4

    .line 262
    :try_start_3
    iget-object v5, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    .line 263
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 265
    if-eqz v2, :cond_2

    .line 266
    invoke-virtual {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceDeactivated()V

    .line 268
    .end local v2    # "lastSession":Z
    :cond_2
    throw v3

    .line 258
    :cond_3
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v3

    instance-of v3, v3, Lorg/apache/mina/core/service/IoConnector;

    if-eqz v3, :cond_0

    .line 259
    const/4 v2, 0x0

    .line 261
    .restart local v2    # "lastSession":Z
    iget-object v4, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v4

    .line 262
    :try_start_4
    iget-object v3, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v2

    .line 263
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 265
    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceDeactivated()V

    goto :goto_0

    .line 263
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3
.end method

.method public getActivationTime()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activationTime:J

    return-wide v0
.end method

.method public getCumulativeManagedSessionCount()J
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->cumulativeManagedSessionCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestManagedSessionCount()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->largestManagedSessionCount:I

    return v0
.end method

.method public getManagedSessionCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->managedSessions:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public getManagedSessions()Ljava/util/Map;
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
    .line 110
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->readOnlyManagedSessions:Ljava/util/Map;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->activated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/mina/core/service/IoServiceListener;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    return-void
.end method
