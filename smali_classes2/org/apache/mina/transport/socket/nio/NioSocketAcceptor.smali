.class public final Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;
.super Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.source "NioSocketAcceptor.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/SocketAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor",
        "<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        "Ljava/nio/channels/ServerSocketChannel;",
        ">;",
        "Lorg/apache/mina/transport/socket/SocketAcceptor;"
    }
.end annotation


# instance fields
.field private volatile selector:Ljava/nio/channels/Selector;

.field private volatile selectorProvider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 62
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "processorCount"    # I

    .prologue
    .line 73
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 74
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "processorCount"    # I
    .param p2, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
    .line 110
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 111
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 112
    iput-object p2, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 97
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 85
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected bridge synthetic accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    check-cast p2, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/ServerSocketChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object v0

    return-object v0
.end method

.method protected accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/ServerSocketChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 4
    .param p2, "handle"    # Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/ServerSocketChannel;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    const/4 v2, 0x0

    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, "key":Ljava/nio/channels/SelectionKey;
    if-eqz p2, :cond_0

    .line 186
    iget-object v3, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2, v3}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 189
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 200
    :cond_1
    :goto_0
    return-object v2

    .line 194
    :cond_2
    invoke-virtual {p2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 196
    .local v0, "ch":Ljava/nio/channels/SocketChannel;
    if-eqz v0, :cond_1

    .line 200
    new-instance v2, Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-direct {v2, p0, p1, v0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;-><init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)V

    goto :goto_0
.end method

.method protected bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    return-void
.end method

.method protected close(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 2
    .param p1, "handle"    # Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v1}, Ljava/nio/channels/ServerSocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 299
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 303
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 304
    return-void
.end method

.method protected destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 145
    :cond_0
    return-void
.end method

.method public getDefaultLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method protected init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    .line 121
    return-void
.end method

.method protected init(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 130
    if-nez p1, :cond_0

    .line 131
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    goto :goto_0
.end method

.method protected bridge synthetic localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->localAddress(Ljava/nio/channels/ServerSocketChannel;)Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress(Ljava/nio/channels/ServerSocketChannel;)Ljava/net/SocketAddress;
    .locals 1
    .param p1, "handle"    # Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method protected open(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;
    .locals 8
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "channel":Ljava/nio/channels/ServerSocketChannel;
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-eqz v6, :cond_1

    .line 213
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v6}, Ljava/nio/channels/spi/SelectorProvider;->openServerSocketChannel()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    .line 218
    :goto_0
    const/4 v5, 0x0

    .line 222
    .local v5, "success":Z
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v6}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 225
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v4

    .line 228
    .local v4, "socket":Ljava/net/ServerSocket;
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->isReuseAddress()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getBacklog()I

    move-result v6

    invoke-virtual {v4, p1, v6}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    iget-object v6, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    const/16 v7, 0x10

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    const/4 v5, 0x1

    .line 251
    if-nez v5, :cond_0

    .line 252
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    .line 255
    :cond_0
    return-object v0

    .line 215
    .end local v4    # "socket":Ljava/net/ServerSocket;
    .end local v5    # "success":Z
    :cond_1
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    goto :goto_0

    .line 233
    .restart local v4    # "socket":Ljava/net/ServerSocket;
    .restart local v5    # "success":Z
    :catch_0
    move-exception v2

    .line 236
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while binding on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "original message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 237
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "newMessage":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 242
    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    .line 244
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "newMessage":Ljava/lang/String;
    .end local v4    # "socket":Ljava/net/ServerSocket;
    :catchall_0
    move-exception v6

    if-nez v5, :cond_2

    .line 252
    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    :cond_2
    throw v6
.end method

.method protected select()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method protected selectedHandles()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/channels/ServerSocketChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;-><init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$1;)V

    return-object v0
.end method

.method public setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "localAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    .line 175
    return-void
.end method

.method protected wakeup()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 312
    return-void
.end method
