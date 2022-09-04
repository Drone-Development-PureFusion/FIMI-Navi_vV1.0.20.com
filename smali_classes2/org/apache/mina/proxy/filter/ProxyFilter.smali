.class public Lorg/apache/mina/proxy/filter/ProxyFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "ProxyFilter.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 65
    return-void
.end method

.method private getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .prologue
    .line 121
    sget-object v1, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    .line 123
    .local v0, "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    if-nez v0, :cond_0

    .line 124
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 128
    :cond_0
    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not managed by this filter."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_1
    return-object v0
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    sget-object v1, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 110
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setAuthenticationFailed(Z)V

    .line 111
    invoke-super {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;->exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 112
    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V

    .line 193
    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/proxy/ProxyAuthException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/filter/ProxyFilter;->getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v2

    .line 148
    .local v2, "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    monitor-enter v2

    .line 149
    :try_start_0
    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    move-object v1, v0

    .line 151
    .local v1, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {v2}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 179
    :cond_0
    :goto_0
    monitor-exit v2

    .line 180
    :goto_1
    return-void

    .line 156
    :cond_1
    sget-object v4, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, " Data Read: {} ({})"

    invoke-interface {v4, v5, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 161
    sget-object v4, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, " Pre-handshake - passing to handler"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    .line 164
    .local v3, "pos":I
    invoke-interface {v2, p1, v1}, Lorg/apache/mina/proxy/ProxyLogicHandler;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V

    .line 167
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4

    if-eq v4, v3, :cond_3

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isClosing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    :cond_3
    monitor-exit v2

    goto :goto_1

    .line 179
    .end local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "pos":I
    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 173
    .restart local v1    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    sget-object v4, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, " Passing remaining data to next filter"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 176
    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "chain"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .prologue
    .line 79
    const-class v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A filter chain cannot contain more than one ProxyFilter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method public onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "chain"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .prologue
    .line 94
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 95
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    sget-object v1, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 337
    sget-object v1, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 338
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v3, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v2, p1, p2, v3}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 340
    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 266
    sget-object v4, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session created: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 267
    sget-object v4, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 268
    .local v1, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    sget-object v4, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  get proxyIoSession: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1, p0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setProxyFilter(Lorg/apache/mina/proxy/filter/ProxyFilter;)V

    .line 272
    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    .line 276
    .local v0, "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    if-nez v0, :cond_0

    .line 277
    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v3

    .line 279
    .local v3, "request":Lorg/apache/mina/proxy/handlers/ProxyRequest;
    instance-of v4, v3, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 280
    check-cast v2, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    .line 281
    .local v2, "req":Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    invoke-virtual {v2}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 282
    new-instance v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;

    .end local v0    # "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .line 290
    .end local v2    # "req":Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .restart local v0    # "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setHandler(Lorg/apache/mina/proxy/ProxyLogicHandler;)V

    .line 291
    invoke-interface {v0, p1}, Lorg/apache/mina/proxy/ProxyLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 294
    .end local v3    # "request":Lorg/apache/mina/proxy/handlers/ProxyRequest;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v4

    new-instance v5, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v6, Lorg/apache/mina/proxy/event/IoSessionEventType;->CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v5, p1, p2, v6}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v4, v5}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 296
    return-void

    .line 284
    .restart local v2    # "req":Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    .restart local v3    # "request":Lorg/apache/mina/proxy/handlers/ProxyRequest;
    :cond_1
    new-instance v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    .end local v0    # "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .restart local v0    # "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    goto :goto_0

    .line 287
    .end local v2    # "req":Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;
    :cond_2
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;

    .end local v0    # "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    .restart local v0    # "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    goto :goto_0
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "status"    # Lorg/apache/mina/core/session/IdleStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 323
    sget-object v1, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 324
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/event/IoSessionEvent;

    invoke-direct {v2, p1, p2, p3}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 325
    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    sget-object v1, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    .line 309
    .local v0, "proxyIoSession":Lorg/apache/mina/proxy/session/ProxyIoSession;
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v1

    new-instance v2, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v3, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v2, p1, p2, v3}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    .line 311
    return-void
.end method

.method public writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p4, "isHandshakeData"    # Z

    .prologue
    .line 206
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/filter/ProxyFilter;->getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    .line 208
    .local v0, "handler":Lorg/apache/mina/proxy/ProxyLogicHandler;
    monitor-enter v0

    .line 209
    :try_start_0
    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 228
    :goto_0
    monitor-exit v0

    .line 229
    return-void

    .line 212
    :cond_0
    if-eqz p4, :cond_1

    .line 213
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "   handshake data: {}"

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 219
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Write request on closed session. Request ignored."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Handshaking is not complete yet. Buffering write request."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 225
    invoke-interface {v0, p1, p3}, Lorg/apache/mina/proxy/ProxyLogicHandler;->enqueueWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
