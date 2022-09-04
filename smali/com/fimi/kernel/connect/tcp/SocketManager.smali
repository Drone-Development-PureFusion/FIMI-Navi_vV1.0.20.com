.class public Lcom/fimi/kernel/connect/tcp/SocketManager;
.super Ljava/lang/Object;
.source "SocketManager.java"


# static fields
.field private static socketNetworkManager:Lcom/fimi/kernel/connect/tcp/SocketManager;


# instance fields
.field private inFromServer:Ljava/io/DataInputStream;

.field private isServerPortException:Z

.field private outToServer:Ljava/io/DataOutputStream;

.field private socket:Ljava/net/Socket;

.field private socketOption:Lcom/fimi/kernel/connect/tcp/SocketOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketNetworkManager:Lcom/fimi/kernel/connect/tcp/SocketManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socket:Ljava/net/Socket;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->isServerPortException:Z

    .line 32
    new-instance v0, Lcom/fimi/kernel/connect/tcp/SocketOption;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/tcp/SocketOption;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketOption:Lcom/fimi/kernel/connect/tcp/SocketOption;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/connect/tcp/SocketManager;)Lcom/fimi/kernel/connect/tcp/SocketOption;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/tcp/SocketManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketOption:Lcom/fimi/kernel/connect/tcp/SocketOption;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/kernel/connect/tcp/SocketManager;)Ljava/io/DataInputStream;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/tcp/SocketManager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->inFromServer:Ljava/io/DataInputStream;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fimi/kernel/connect/tcp/SocketManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/kernel/connect/tcp/SocketManager;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->isServerPortException:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/fimi/kernel/connect/tcp/SocketManager;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/fimi/kernel/connect/tcp/SocketManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketNetworkManager:Lcom/fimi/kernel/connect/tcp/SocketManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/fimi/kernel/connect/tcp/SocketManager;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/tcp/SocketManager;-><init>()V

    sput-object v0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketNetworkManager:Lcom/fimi/kernel/connect/tcp/SocketManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketNetworkManager:Lcom/fimi/kernel/connect/tcp/SocketManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public connect()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketOption:Lcom/fimi/kernel/connect/tcp/SocketOption;

    invoke-virtual {v4}, Lcom/fimi/kernel/connect/tcp/SocketOption;->getHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketOption:Lcom/fimi/kernel/connect/tcp/SocketOption;

    invoke-virtual {v5}, Lcom/fimi/kernel/connect/tcp/SocketOption;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socket:Ljava/net/Socket;

    .line 69
    iget-object v3, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 70
    new-instance v3, Ljava/io/DataOutputStream;

    iget-object v4, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->outToServer:Ljava/io/DataOutputStream;

    .line 71
    new-instance v3, Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->inFromServer:Ljava/io/DataInputStream;

    .line 73
    new-instance v3, Lcom/fimi/kernel/connect/tcp/SocketManager$1;

    invoke-direct {v3, p0}, Lcom/fimi/kernel/connect/tcp/SocketManager$1;-><init>(Lcom/fimi/kernel/connect/tcp/SocketManager;)V

    invoke-static {v3}, Lcom/fimi/kernel/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->isServerPortException:Z

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->outToServer:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->outToServer:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 156
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->inFromServer:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->inFromServer:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->isServerPortException:Z

    .line 167
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_2

    .line 158
    :catch_1
    move-exception v0

    goto :goto_1

    .line 152
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public getSocketOption()Lcom/fimi/kernel/connect/tcp/SocketOption;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketOption:Lcom/fimi/kernel/connect/tcp/SocketOption;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->isServerPortException:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pingWiFiIp(Ljava/lang/String;)Z
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "success":Z
    const/4 v1, 0x0

    .line 185
    .local v1, "p":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 -W 1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 187
    .local v2, "status":I
    if-nez v2, :cond_1

    .line 188
    const/4 v3, 0x1

    .line 195
    :goto_0
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 200
    .end local v2    # "status":I
    :cond_0
    :goto_1
    return v3

    .line 190
    .restart local v2    # "status":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 192
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 195
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 198
    :cond_2
    throw v4
.end method

.method protected reConnect()Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/tcp/SocketManager;->disconnect()V

    .line 176
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/tcp/SocketManager;->connect()Z

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/connect/tcp/SocketManager;->send([B)V

    .line 108
    return-void
.end method

.method public send([B)V
    .locals 2
    .param p1, "content"    # [B

    .prologue
    .line 112
    :try_start_0
    iget-boolean v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->isServerPortException:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketOption:Lcom/fimi/kernel/connect/tcp/SocketOption;

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/tcp/SocketOption;->isAutoReconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/tcp/SocketManager;->reConnect()Z

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->outToServer:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->outToServer:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 117
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->outToServer:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->isServerPortException:Z

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public send([BII)V
    .locals 2
    .param p1, "content"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 134
    :try_start_0
    iget-boolean v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->isServerPortException:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->socketOption:Lcom/fimi/kernel/connect/tcp/SocketOption;

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/tcp/SocketOption;->isAutoReconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/tcp/SocketManager;->reConnect()Z

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->outToServer:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 138
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->outToServer:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/tcp/SocketManager;->isServerPortException:Z

    goto :goto_0
.end method
