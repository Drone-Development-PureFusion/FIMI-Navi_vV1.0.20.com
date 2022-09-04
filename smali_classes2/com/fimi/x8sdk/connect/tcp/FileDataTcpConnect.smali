.class public Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;
.super Ljava/lang/Object;
.source "FileDataTcpConnect.java"

# interfaces
.implements Lcom/fimi/kernel/connect/tcp/IDataChannel;


# instance fields
.field private fileSocketManager:Lcom/fimi/kernel/connect/tcp/SocketManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v1, Lcom/fimi/kernel/connect/tcp/SocketManager;

    invoke-direct {v1}, Lcom/fimi/kernel/connect/tcp/SocketManager;-><init>()V

    iput-object v1, p0, Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;->fileSocketManager:Lcom/fimi/kernel/connect/tcp/SocketManager;

    .line 20
    iget-object v1, p0, Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;->fileSocketManager:Lcom/fimi/kernel/connect/tcp/SocketManager;

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/tcp/SocketManager;->getSocketOption()Lcom/fimi/kernel/connect/tcp/SocketOption;

    move-result-object v0

    .line 21
    .local v0, "fileOption":Lcom/fimi/kernel/connect/tcp/SocketOption;
    const-string v1, "192.168.42.1"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/tcp/SocketOption;->setHost(Ljava/lang/String;)V

    .line 22
    const/16 v1, 0x271b

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/tcp/SocketOption;->setPort(I)V

    .line 23
    const/16 v1, 0x2800

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/tcp/SocketOption;->setReceiveBufferSize(I)V

    .line 24
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/tcp/SocketOption;->setAutoReconnect(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public getFileSocketManager()Lcom/fimi/kernel/connect/tcp/SocketManager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;->fileSocketManager:Lcom/fimi/kernel/connect/tcp/SocketManager;

    return-object v0
.end method

.method public declared-synchronized sendFileData([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;->fileSocketManager:Lcom/fimi/kernel/connect/tcp/SocketManager;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/tcp/SocketManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;->fileSocketManager:Lcom/fimi/kernel/connect/tcp/SocketManager;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/tcp/SocketManager;->connect()Z

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/FileDataTcpConnect;->fileSocketManager:Lcom/fimi/kernel/connect/tcp/SocketManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/kernel/connect/tcp/SocketManager;->send([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
