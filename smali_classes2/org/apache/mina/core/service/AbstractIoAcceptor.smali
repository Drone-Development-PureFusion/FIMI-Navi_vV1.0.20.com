.class public abstract Lorg/apache/mina/core/service/AbstractIoAcceptor;
.super Lorg/apache/mina/core/service/AbstractIoService;
.source "AbstractIoAcceptor.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/service/AbstractIoAcceptor$AcceptorOperationFuture;
    }
.end annotation


# instance fields
.field protected final bindLock:Ljava/lang/Object;

.field private final boundAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultLocalAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private disconnectOnUnbind:Z

.field private final unmodifiableDefaultLocalAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "sessionConfig"    # Lorg/apache/mina/core/session/IoSessionConfig;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoService;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unmodifiableDefaultLocalAddresses:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->disconnectOnUnbind:Z

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private checkAddressType(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "a"    # Ljava/net/SocketAddress;

    .prologue
    .line 459
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localAddress type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 461
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddresses()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 220
    return-void
.end method

.method public final bind(Ljava/lang/Iterable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->isDisposing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 285
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "The Accpetor disposed is being disposed."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 288
    :cond_0
    if-nez p1, :cond_1

    .line 289
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "localAddresses"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 292
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v4, "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 295
    .local v0, "a":Ljava/net/SocketAddress;
    invoke-direct {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->checkAddressType(Ljava/net/SocketAddress;)V

    .line 296
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    .end local v0    # "a":Ljava/net/SocketAddress;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 300
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "localAddresses is empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 303
    :cond_3
    const/4 v1, 0x0

    .line 304
    .local v1, "activate":Z
    iget-object v6, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v6

    .line 305
    :try_start_0
    iget-object v7, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    iget-object v5, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 307
    const/4 v1, 0x1

    .line 309
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v5

    if-nez v5, :cond_5

    .line 312
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v7, "handler is not set."

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 328
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 309
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    :cond_5
    :try_start_5
    invoke-virtual {p0, v4}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindInternal(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 318
    .local v2, "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    iget-object v7, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 319
    :try_start_6
    iget-object v5, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 320
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 328
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 330
    if-eqz v1, :cond_6

    .line 331
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceActivated()V

    .line 333
    :cond_6
    return-void

    .line 320
    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 321
    .end local v2    # "addresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    :catch_0
    move-exception v3

    .line 322
    .local v3, "e":Ljava/io/IOException;
    :try_start_a
    throw v3

    .line 323
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 324
    .local v3, "e":Ljava/lang/RuntimeException;
    throw v3

    .line 325
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v3

    .line 326
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/mina/core/RuntimeIoException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to bind to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v3}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public final bind(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "localAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .local v0, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 234
    return-void
.end method

.method public final varargs bind(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "firstLocalAddress"    # Ljava/net/SocketAddress;
    .param p2, "addresses"    # [Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 264
    :cond_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-nez v2, :cond_2

    .line 265
    :cond_1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 277
    :goto_0
    return-void

    .line 269
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .local v1, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    array-length v3, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, p2, v2

    .line 273
    .local v0, "address":Ljava/net/SocketAddress;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "address":Ljava/net/SocketAddress;
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public final varargs bind([Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "addresses"    # [Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 242
    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    .line 253
    :goto_0
    return-void

    .line 246
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v1, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, p1, v2

    .line 249
    .local v0, "address":Ljava/net/SocketAddress;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "address":Ljava/net/SocketAddress;
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bind(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method protected abstract bindInternal(Ljava/util/List;)Ljava/util/Set;
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
.end method

.method public getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    goto :goto_0
.end method

.method public final getDefaultLocalAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unmodifiableDefaultLocalAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v0

    .line 86
    .local v0, "localAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    goto :goto_0
.end method

.method public final getLocalAddresses()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v0, "localAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 102
    monitor-exit v2

    .line 104
    return-object v0

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isCloseOnDeactivation()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->disconnectOnUnbind:Z

    return v0
.end method

.method public final setCloseOnDeactivation(Z)V
    .locals 0
    .param p1, "disconnectClientsOnUnbind"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->disconnectOnUnbind:Z

    .line 212
    return-void
.end method

.method public final setDefaultLocalAddress(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 123
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/SocketAddress;

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddresses(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V

    .line 124
    return-void
.end method

.method public final setDefaultLocalAddresses(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    if-nez p1, :cond_0

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "localAddresses"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_0
    iget-object v3, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v3

    .line 156
    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "localAddress can\'t be set while the acceptor is bound."

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 175
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 161
    :cond_1
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "newLocalAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 164
    .local v0, "a":Ljava/net/SocketAddress;
    invoke-direct {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->checkAddressType(Ljava/net/SocketAddress;)V

    .line 165
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    .end local v0    # "a":Ljava/net/SocketAddress;
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "empty localAddresses"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_3
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 173
    iget-object v2, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->defaultLocalAddresses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    return-void
.end method

.method public final varargs setDefaultLocalAddresses(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "firstLocalAddress"    # Ljava/net/SocketAddress;
    .param p2, "otherLocalAddresses"    # [Ljava/net/SocketAddress;

    .prologue
    const/4 v2, 0x0

    .line 184
    if-nez p2, :cond_0

    .line 185
    new-array p2, v2, [Ljava/net/SocketAddress;

    .line 188
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v1, "newLocalAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/SocketAddress;>;"
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p2, v2

    .line 192
    .local v0, "a":Ljava/net/SocketAddress;
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "a":Ljava/net/SocketAddress;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddresses(Ljava/lang/Iterable;)V

    .line 196
    return-void
.end method

.method public final setDefaultLocalAddresses(Ljava/util/List;)V
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

    .prologue
    .line 140
    .local p1, "localAddresses":Ljava/util/List;, "Ljava/util/List<+Ljava/net/SocketAddress;>;"
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localAddresses"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddresses(Ljava/lang/Iterable;)V

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 448
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    .line 449
    .local v0, "m":Lorg/apache/mina/core/service/TransportMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 452
    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " acceptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 454
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localAddress(es): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", managedSessionCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 455
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getManagedSessionCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "not bound"

    goto :goto_0
.end method

.method public final unbind()V
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind(Ljava/lang/Iterable;)V

    .line 341
    return-void
.end method

.method public final unbind(Ljava/lang/Iterable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "localAddresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/net/SocketAddress;>;"
    if-nez p1, :cond_0

    .line 381
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "localAddresses"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 384
    :cond_0
    const/4 v1, 0x0

    .line 385
    .local v1, "deactivate":Z
    iget-object v6, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->bindLock:Ljava/lang/Object;

    monitor-enter v6

    .line 386
    :try_start_0
    iget-object v7, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 387
    :try_start_1
    iget-object v5, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 388
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 391
    :cond_2
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v3, "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    const/4 v4, 0x0

    .line 394
    .local v4, "specifiedAddressCount":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 395
    .local v0, "a":Ljava/net/SocketAddress;
    add-int/lit8 v4, v4, 0x1

    .line 397
    if-eqz v0, :cond_3

    iget-object v8, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 398
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 421
    .end local v0    # "a":Ljava/net/SocketAddress;
    .end local v3    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .end local v4    # "specifiedAddressCount":I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 422
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 402
    .restart local v3    # "localAddressesCopy":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    .restart local v4    # "specifiedAddressCount":I
    :cond_4
    if-nez v4, :cond_5

    .line 403
    :try_start_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v8, "localAddresses is empty."

    invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 406
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    if-nez v5, :cond_6

    .line 408
    :try_start_6
    invoke-virtual {p0, v3}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind0(Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 415
    :try_start_7
    iget-object v5, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 417
    iget-object v5, p0, Lorg/apache/mina/core/service/AbstractIoAcceptor;->boundAddresses:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 418
    const/4 v1, 0x1

    .line 421
    :cond_6
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 422
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 424
    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireServiceDeactivated()V

    goto :goto_0

    .line 409
    :catch_0
    move-exception v2

    .line 410
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_9
    throw v2

    .line 411
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/mina/core/RuntimeIoException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to unbind from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddresses()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v2}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public final unbind(Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "localAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v0, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind(Ljava/lang/Iterable;)V

    .line 355
    return-void
.end method

.method public final varargs unbind(Ljava/net/SocketAddress;[Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "firstLocalAddress"    # Ljava/net/SocketAddress;
    .param p2, "otherLocalAddresses"    # [Ljava/net/SocketAddress;

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 363
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "firstLocalAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_0
    if-nez p2, :cond_1

    .line 366
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "otherLocalAddresses"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "localAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->unbind(Ljava/lang/Iterable;)V

    .line 373
    return-void
.end method

.method protected abstract unbind0(Ljava/util/List;)V
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
.end method
