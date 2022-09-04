.class public abstract Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
.super Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.source "AbstractSocketSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/SocketSessionConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;-><init>()V

    return-void
.end method


# virtual methods
.method protected isKeepAliveChanged()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method protected isOobInlineChanged()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method protected isReceiveBufferSizeChanged()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method protected isReuseAddressChanged()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected isSendBufferSizeChanged()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method protected isSoLingerChanged()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method protected isTcpNoDelayChanged()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method protected isTrafficClassChanged()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/mina/core/session/IoSessionConfig;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 38
    instance-of v1, p1, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    instance-of v1, p1, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;

    if-eqz v1, :cond_9

    move-object v0, p1

    .line 44
    check-cast v0, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;

    .line 45
    .local v0, "cfg":Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isKeepAliveChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isKeepAlive()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setKeepAlive(Z)V

    .line 48
    :cond_2
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isOobInlineChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isOobInline()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setOobInline(Z)V

    .line 51
    :cond_3
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isReceiveBufferSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getReceiveBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setReceiveBufferSize(I)V

    .line 54
    :cond_4
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isReuseAddressChanged()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isReuseAddress()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setReuseAddress(Z)V

    .line 57
    :cond_5
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isSendBufferSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 58
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getSendBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setSendBufferSize(I)V

    .line 60
    :cond_6
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isSoLingerChanged()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 61
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getSoLinger()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setSoLinger(I)V

    .line 63
    :cond_7
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isTcpNoDelayChanged()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 64
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isTcpNoDelay()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setTcpNoDelay(Z)V

    .line 66
    :cond_8
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isTrafficClassChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getTrafficClass()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 67
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setTrafficClass(I)V

    goto :goto_0

    .end local v0    # "cfg":Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
    :cond_9
    move-object v0, p1

    .line 70
    check-cast v0, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    .line 71
    .local v0, "cfg":Lorg/apache/mina/transport/socket/SocketSessionConfig;
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isKeepAlive()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setKeepAlive(Z)V

    .line 72
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isOobInline()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setOobInline(Z)V

    .line 73
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getReceiveBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setReceiveBufferSize(I)V

    .line 74
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isReuseAddress()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setReuseAddress(Z)V

    .line 75
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getSendBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setSendBufferSize(I)V

    .line 76
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getSoLinger()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setSoLinger(I)V

    .line 77
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isTcpNoDelay()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setTcpNoDelay(Z)V

    .line 78
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getTrafficClass()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 79
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->setTrafficClass(I)V

    goto/16 :goto_0
.end method
