.class public Lorg/apache/mina/handler/demux/DemuxingIoHandler;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "DemuxingIoHandler.java"


# instance fields
.field private final exceptionHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final exceptionHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final receivedMessageHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final receivedMessageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final sentMessageHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final sentMessageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    .line 94
    return-void
.end method

.method private findExceptionHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/ExceptionHandler;

    return-object v0
.end method

.method private findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    .locals 7
    .param p2, "handlerCache"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;*>;",
            "Ljava/util/Map;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "handlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v4, 0x0

    .line 324
    if-eqz p4, :cond_1

    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 385
    :cond_0
    :goto_0
    return-object v1

    .line 331
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 333
    .local v1, "handler":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 340
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 342
    if-nez v1, :cond_3

    .line 347
    if-nez p4, :cond_2

    .line 348
    new-instance p4, Lorg/apache/mina/util/IdentityHashSet;

    .end local p4    # "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p4}, Lorg/apache/mina/util/IdentityHashSet;-><init>()V

    .line 351
    .restart local p4    # "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_2
    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 355
    .local v2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v0, v2, v5

    .line 356
    .local v0, "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, v0, p4}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v1

    .line 358
    if-eqz v1, :cond_5

    .line 364
    .end local v0    # "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    if-nez v1, :cond_4

    .line 369
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 371
    .local v3, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_4

    .line 372
    invoke-direct {p0, p1, p2, v3, v4}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v1

    .line 381
    .end local v3    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    if-eqz v1, :cond_0

    .line 382
    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    .restart local v0    # "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private findReceivedMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method

.method private findSentMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method


# virtual methods
.method public addExceptionHandler(Ljava/lang/Class;Lorg/apache/mina/handler/demux/ExceptionHandler;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<-TE;>;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "handler":Lorg/apache/mina/handler/demux/ExceptionHandler;, "Lorg/apache/mina/handler/demux/ExceptionHandler<-TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/ExceptionHandler;

    return-object v0
.end method

.method public addReceivedMessageHandler(Ljava/lang/Class;Lorg/apache/mina/handler/demux/MessageHandler;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "handler":Lorg/apache/mina/handler/demux/MessageHandler;, "Lorg/apache/mina/handler/demux/MessageHandler<-TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 110
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method

.method public addSentMessageHandler(Ljava/lang/Class;Lorg/apache/mina/handler/demux/MessageHandler;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "handler":Lorg/apache/mina/handler/demux/MessageHandler;, "Lorg/apache/mina/handler/demux/MessageHandler<-TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method

.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findExceptionHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/ExceptionHandler;

    move-result-object v0

    .line 286
    .local v0, "handler":Lorg/apache/mina/handler/demux/ExceptionHandler;, "Lorg/apache/mina/handler/demux/ExceptionHandler<Ljava/lang/Throwable;>;"
    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/handler/demux/ExceptionHandler;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 292
    return-void

    .line 289
    :cond_0
    new-instance v1, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No handler found for exception type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected findExceptionHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findExceptionHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/ExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method protected findReceivedMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findReceivedMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object v0

    return-object v0
.end method

.method protected findSentMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findSentMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method

.method public getReceivedMessageHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSentMessageHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findReceivedMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object v0

    .line 242
    .local v0, "handler":Lorg/apache/mina/handler/demux/MessageHandler;, "Lorg/apache/mina/handler/demux/MessageHandler<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/handler/demux/MessageHandler;->handleMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 248
    return-void

    .line 245
    :cond_0
    new-instance v1, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No message handler found for message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findSentMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object v0

    .line 263
    .local v0, "handler":Lorg/apache/mina/handler/demux/MessageHandler;, "Lorg/apache/mina/handler/demux/MessageHandler<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0, p1, p2}, Lorg/apache/mina/handler/demux/MessageHandler;->handleMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 269
    return-void

    .line 266
    :cond_0
    new-instance v1, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No handler found for message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeExceptionHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 190
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/ExceptionHandler;

    return-object v0
.end method

.method public removeReceivedMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 125
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method

.method public removeSentMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 157
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object v0
.end method
