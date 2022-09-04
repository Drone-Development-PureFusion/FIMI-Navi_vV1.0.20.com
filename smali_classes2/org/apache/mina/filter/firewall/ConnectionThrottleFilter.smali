.class public Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ConnectionThrottleFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME:J = 0x3e8L

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private allowedInterval:J

.field private final clients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 102
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;-><init>(J)V

    .line 103
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "allowedInterval"    # J

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 59
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    .line 114
    iput-wide p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    .line 115
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    .line 118
    new-instance v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;-><init>(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$1;)V

    .line 121
    .local v0, "cleanupThread":Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->setDaemon(Z)V

    .line 124
    invoke-virtual {v0}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter$ExpiredSessionThread;->start()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected isConnectionOk(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 12
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    .line 157
    .local v4, "remoteAddress":Ljava/net/SocketAddress;
    instance-of v7, v4, Ljava/net/InetSocketAddress;

    if-eqz v7, :cond_0

    move-object v0, v4

    .line 158
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 159
    .local v0, "addr":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 161
    .local v2, "now":J
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 164
    :try_start_0
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 166
    sget-object v7, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "This is not a new client"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 167
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 169
    .local v1, "lastConnTime":Ljava/lang/Long;
    iget-object v7, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v2, v8

    iget-wide v10, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 174
    sget-object v6, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v7, "Session connection interval too short"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v6, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    .end local v0    # "addr":Ljava/net/InetSocketAddress;
    .end local v1    # "lastConnTime":Ljava/lang/Long;
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return v5

    .line 183
    .restart local v0    # "addr":Ljava/net/InetSocketAddress;
    .restart local v1    # "lastConnTime":Ljava/lang/Long;
    .restart local v2    # "now":J
    :cond_1
    iget-object v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v5, v6

    goto :goto_0

    .line 181
    .end local v1    # "lastConnTime":Ljava/lang/Long;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->clients:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    iget-object v5, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v5, v6

    .line 186
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->isConnectionOk(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    sget-object v0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Connections coming in too fast; closing."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 196
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 199
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 200
    return-void
.end method

.method public setAllowedInterval(J)V
    .locals 3
    .param p1, "allowedInterval"    # J

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 139
    :try_start_0
    iput-wide p1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->allowedInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v0, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 143
    return-void

    .line 141
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/filter/firewall/ConnectionThrottleFilter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
