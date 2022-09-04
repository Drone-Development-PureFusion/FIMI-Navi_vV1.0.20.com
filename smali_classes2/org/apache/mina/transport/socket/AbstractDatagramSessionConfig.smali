.class public abstract Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
.super Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.source "AbstractDatagramSessionConfig.java"

# interfaces
.implements Lorg/apache/mina/transport/socket/DatagramSessionConfig;


# instance fields
.field private closeOnPortUnreachable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    return-void
.end method


# virtual methods
.method protected isBroadcastChanged()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public isCloseOnPortUnreachable()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    return v0
.end method

.method protected isReceiveBufferSizeChanged()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method protected isReuseAddressChanged()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method protected isSendBufferSizeChanged()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected isTrafficClassChanged()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 3
    .param p1, "config"    # Lorg/apache/mina/core/session/IoSessionConfig;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    .line 41
    instance-of v1, p1, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    instance-of v1, p1, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    if-eqz v1, :cond_6

    move-object v0, p1

    .line 47
    check-cast v0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    .line 49
    .local v0, "cfg":Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isBroadcastChanged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isBroadcast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setBroadcast(Z)V

    .line 53
    :cond_2
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReceiveBufferSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getReceiveBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReceiveBufferSize(I)V

    .line 57
    :cond_3
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReuseAddressChanged()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReuseAddress()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReuseAddress(Z)V

    .line 61
    :cond_4
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isSendBufferSizeChanged()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getSendBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setSendBufferSize(I)V

    .line 65
    :cond_5
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isTrafficClassChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 66
    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setTrafficClass(I)V

    goto :goto_0

    .end local v0    # "cfg":Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
    :cond_6
    move-object v0, p1

    .line 69
    check-cast v0, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    .line 70
    .local v0, "cfg":Lorg/apache/mina/transport/socket/DatagramSessionConfig;
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->isBroadcast()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setBroadcast(Z)V

    .line 71
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getReceiveBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReceiveBufferSize(I)V

    .line 72
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->isReuseAddress()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setReuseAddress(Z)V

    .line 73
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getSendBufferSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setSendBufferSize(I)V

    .line 75
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 76
    invoke-interface {v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->setTrafficClass(I)V

    goto/16 :goto_0
.end method

.method public setCloseOnPortUnreachable(Z)V
    .locals 0
    .param p1, "closeOnPortUnreachable"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    .line 148
    return-void
.end method
