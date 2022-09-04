.class public Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;
.super Ljava/lang/Object;
.source "DemuxingProtocolEncoder.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/ProtocolEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;,
        Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    }
.end annotation


# static fields
.field private static final EMPTY_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final STATE:Lorg/apache/mina/core/session/AttributeKey;

.field private final type2encoderFactory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "state"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    .line 52
    new-instance v0, Lorg/apache/mina/util/CopyOnWriteMap;

    invoke-direct {v0}, Lorg/apache/mina/util/CopyOnWriteMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    .line 59
    return-void
.end method

.method static synthetic access$500(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    return-object v0
.end method

.method private findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .locals 8
    .param p1, "state"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v1, 0x0

    .line 150
    .local v1, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    const/4 v6, 0x0

    move-object v2, v1

    .line 217
    .end local v1    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .local v2, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    :goto_0
    return-object v6

    .line 157
    .end local v2    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .restart local v1    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    :cond_0
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    check-cast v1, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    .line 159
    .restart local v1    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    if-eqz v1, :cond_1

    move-object v2, v1

    .end local v1    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .restart local v2    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    move-object v6, v1

    .line 160
    goto :goto_0

    .line 166
    .end local v2    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .restart local v1    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    :cond_1
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$300(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    check-cast v1, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    .line 168
    .restart local v1    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    if-nez v1, :cond_3

    .line 173
    if-nez p3, :cond_2

    .line 174
    new-instance p3, Lorg/apache/mina/util/IdentityHashSet;

    .end local p3    # "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p3}, Lorg/apache/mina/util/IdentityHashSet;-><init>()V

    .line 177
    .restart local p3    # "triedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_2
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 181
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v0, v3, v6

    .line 182
    .local v0, "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v0, p3}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_6

    .line 190
    .end local v0    # "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    if-nez v1, :cond_4

    .line 196
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 198
    .local v4, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_4

    .line 199
    invoke-virtual {p0, p1, v4}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v1

    .line 208
    .end local v4    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    if-eqz v1, :cond_5

    .line 209
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;->access$200(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    .line 212
    .local v5, "tmpEncoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<Ljava/lang/Object;>;"
    if-eqz v5, :cond_5

    .line 213
    move-object v1, v5

    .end local v5    # "tmpEncoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<Ljava/lang/Object;>;"
    :cond_5
    move-object v2, v1

    .end local v1    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .restart local v2    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    move-object v6, v1

    .line 217
    goto :goto_0

    .line 181
    .end local v2    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .restart local v0    # "element":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .restart local v3    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v2, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    .line 229
    .local v1, "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    if-nez v1, :cond_0

    .line 230
    new-instance v1, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    .end local v1    # "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;-><init>(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V

    .line 231
    .restart local v1    # "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    iget-object v2, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    .line 232
    .local v0, "oldState":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    if-eqz v0, :cond_0

    .line 233
    move-object v1, v0

    .line 236
    .end local v0    # "oldState":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "encoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageEncoder;>;"
    if-nez p2, :cond_0

    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "encoderClass"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_0
    :try_start_0
    sget-object v2, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "registered":Z
    const-class v2, Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    new-instance v2, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$DefaultConstructorMessageEncoderFactory;-><init>(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V

    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    .line 76
    const/4 v1, 0x1

    .line 79
    :cond_1
    if-nez v1, :cond_2

    .line 80
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregisterable type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    .end local v1    # "registered":Z
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The specified class doesn\'t have a public default constructor."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v1    # "registered":Z
    :cond_2
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<-TT;>;"
    new-instance v0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$SingletonMessageEncoderFactory;-><init>(Lorg/apache/mina/filter/codec/demux/MessageEncoder;Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$1;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    .line 87
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "factory":Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;, "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<-TT;>;"
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messageType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    if-nez p2, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    iget-object v1, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The specified message type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is registered already."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->type2encoderFactory:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<*>;>;"
    .local p2, "encoderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/filter/codec/demux/MessageEncoder;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 111
    .local v0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 113
    .end local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<+TT;>;>;"
    .local p2, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<-TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 117
    .local v0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, v0, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoder;)V

    goto :goto_0

    .line 119
    .end local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :cond_0
    return-void
.end method

.method public addMessageEncoder(Ljava/lang/Iterable;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Class",
            "<+TT;>;>;",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "messageTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Class<+TT;>;>;"
    .local p2, "factory":Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;, "Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory<-TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 124
    .local v0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, v0, p2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->addMessageEncoder(Ljava/lang/Class;Lorg/apache/mina/filter/codec/demux/MessageEncoderFactory;)V

    goto :goto_0

    .line 126
    .end local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :cond_0
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->STATE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "out"    # Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->getState(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;

    move-result-object v1

    .line 133
    .local v1, "state":Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v0

    .line 134
    .local v0, "encoder":Lorg/apache/mina/filter/codec/demux/MessageEncoder;, "Lorg/apache/mina/filter/codec/demux/MessageEncoder<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/demux/MessageEncoder;->encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V

    .line 139
    return-void

    .line 137
    :cond_0
    new-instance v2, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No message encoder found for message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;
    .locals 1
    .param p1, "state"    # Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/mina/filter/codec/demux/MessageEncoder",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder;->findEncoder(Lorg/apache/mina/filter/codec/demux/DemuxingProtocolEncoder$State;Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/filter/codec/demux/MessageEncoder;

    move-result-object v0

    return-object v0
.end method
