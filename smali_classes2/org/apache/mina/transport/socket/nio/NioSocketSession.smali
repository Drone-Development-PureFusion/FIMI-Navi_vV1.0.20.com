.class Lorg/apache/mina/transport/socket/nio/NioSocketSession;
.super Lorg/apache/mina/transport/socket/nio/NioSession;
.source "NioSocketSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;
    }
.end annotation


# static fields
.field static final METADATA:Lorg/apache/mina/core/service/TransportMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lorg/apache/mina/core/service/DefaultTransportMetadata;

    const-string v1, "nio"

    const-string v2, "socket"

    const-class v5, Ljava/net/InetSocketAddress;

    const-class v6, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Lorg/apache/mina/core/buffer/IoBuffer;

    aput-object v8, v7, v3

    const-class v8, Lorg/apache/mina/core/file/FileRegion;

    aput-object v8, v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/core/service/DefaultTransportMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)V
    .locals 2
    .param p1, "service"    # Lorg/apache/mina/core/service/IoService;
    .param p3, "channel"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoService;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;-><init>(Lorg/apache/mina/core/service/IoProcessor;Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/Channel;)V

    .line 63
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;-><init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;Lorg/apache/mina/transport/socket/nio/NioSocketSession$1;)V

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    .line 64
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    invoke-interface {p1}, Lorg/apache/mina/core/service/IoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 65
    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method private getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected destroy(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/transport/socket/nio/NioSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    .line 133
    .local v0, "ch":Ljava/nio/channels/ByteChannel;
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 134
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 137
    :cond_0
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    .line 138
    return-void
.end method

.method bridge synthetic getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v1

    .line 122
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 124
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->channel:Ljava/nio/channels/Channel;

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v1

    .line 104
    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 106
    .local v0, "socket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    goto :goto_0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lorg/apache/mina/transport/socket/nio/NioSession;->getServiceAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getServiceAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getServiceAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public final isSecured()Z
    .locals 3

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    .line 359
    .local v0, "chain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    const-class v2, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v0, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->get(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    .line 361
    .local v1, "sslFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    if-eqz v1, :cond_0

    .line 363
    check-cast v1, Lorg/apache/mina/filter/ssl/SslFilter;

    .end local v1    # "sslFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    invoke-virtual {v1, p0}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    .line 365
    :goto_0
    return v2

    .restart local v1    # "sslFilter":Lorg/apache/mina/core/filterchain/IoFilter;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
