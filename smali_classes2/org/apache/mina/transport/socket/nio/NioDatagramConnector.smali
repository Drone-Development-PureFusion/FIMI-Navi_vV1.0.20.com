.class public final Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;
.super Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.source "NioDatagramConnector.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/DatagramConnector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoConnector",
        "<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        "Ljava/nio/channels/DatagramChannel;",
        ">;",
        "Lorg/apache/mina/transport/socket/DatagramConnector;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "processorCount"    # I

    .prologue
    .line 60
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;>;"
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "processorCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "processorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;>;"
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V

    .line 85
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
    .line 69
    .local p1, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected allHandles()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic close(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->close(Ljava/nio/channels/DatagramChannel;)V

    return-void
.end method

.method protected close(Ljava/nio/channels/DatagramChannel;)V
    .locals 0
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 174
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 175
    return-void
.end method

.method protected bridge synthetic connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->connect(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Z

    move-result v0

    return v0
.end method

.method protected connect(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Z
    .locals 1
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p1, p2}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method protected bridge synthetic finishConnect(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->finishConnect(Ljava/nio/channels/DatagramChannel;)Z

    move-result v0

    return v0
.end method

.method protected finishConnect(Ljava/nio/channels/DatagramChannel;)Z
    .locals 1
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->getConnectionRequest(Ljava/nio/channels/DatagramChannel;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    move-result-object v0

    return-object v0
.end method

.method protected getConnectionRequest(Ljava/nio/channels/DatagramChannel;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
    .locals 1
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/DatagramChannel;",
            ")",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            "Ljava/nio/channels/DatagramChannel;",
            ">.ConnectionRequest;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDefaultRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->getDefaultRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->getDefaultRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method protected init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method protected bridge synthetic newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->newHandle(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    return-object v0
.end method

.method protected newHandle(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 6
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    .line 130
    .local v0, "ch":Ljava/nio/channels/DatagramChannel;
    if-eqz p1, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :cond_0
    return-object v0

    .line 134
    :catch_0
    move-exception v2

    .line 137
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while binding on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "original message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 138
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "newMessage":Ljava/lang/String;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 143
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 145
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "newMessage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 153
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V

    .line 154
    throw v1
.end method

.method protected bridge synthetic newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p2, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object v0

    return-object v0
.end method

.method protected newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 3
    .param p2, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/DatagramChannel;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<Lorg/apache/mina/transport/socket/nio/NioSession;>;"
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;-><init>(Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/service/IoProcessor;)V

    .line 167
    .local v0, "session":Lorg/apache/mina/transport/socket/nio/NioSession;
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 168
    return-object v0
.end method

.method protected bridge synthetic register(Ljava/lang/Object;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->register(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V

    return-void
.end method

.method protected register(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    .locals 1
    .param p1, "handle"    # Ljava/nio/channels/DatagramChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/DatagramChannel;",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector",
            "<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            "Ljava/nio/channels/DatagramChannel;",
            ">.ConnectionRequest;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "request":Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;, "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<Lorg/apache/mina/transport/socket/nio/NioSession;Ljava/nio/channels/DatagramChannel;>.ConnectionRequest;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected select(I)I
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method protected selectedHandles()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultRemoteAddress(Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "defaultRemoteAddress"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;->setDefaultRemoteAddress(Ljava/net/SocketAddress;)V

    .line 118
    return-void
.end method

.method protected wakeup()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
