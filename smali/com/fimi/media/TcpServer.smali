.class public Lcom/fimi/media/TcpServer;
.super Ljava/lang/Thread;
.source "TcpServer.java"


# instance fields
.field private in:Ljava/io/InputStream;

.field isLoop:Z


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 2
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fimi/media/TcpServer;->in:Ljava/io/InputStream;

    .line 14
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/media/TcpServer;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 17
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 18
    const-string v1, "client-stop"

    invoke-static {v1}, Lcom/fimi/media/TcpServer;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lcom/fimi/media/TcpServerLaunch;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 69
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    const v3, 0xd431

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    .line 53
    .local v2, "ss":Ljava/net/ServerSocket;
    const-string v3, "server-start"

    invoke-static {v3}, Lcom/fimi/media/TcpServer;->log(Ljava/lang/String;)V

    .line 55
    :goto_0
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 56
    .local v1, "s":Ljava/net/Socket;
    const-string v3, "client-connect"

    invoke-static {v3}, Lcom/fimi/media/TcpServer;->log(Ljava/lang/String;)V

    .line 57
    new-instance v3, Lcom/fimi/media/TcpServer;

    invoke-direct {v3, v1}, Lcom/fimi/media/TcpServer;-><init>(Ljava/net/Socket;)V

    invoke-virtual {v3}, Lcom/fimi/media/TcpServer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v1    # "s":Ljava/net/Socket;
    .end local v2    # "ss":Ljava/net/ServerSocket;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 64
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 26
    iget-object v5, p0, Lcom/fimi/media/TcpServer;->in:Ljava/io/InputStream;

    if-nez v5, :cond_1

    .line 48
    :cond_0
    return-void

    .line 28
    :cond_1
    const/16 v5, 0x2800

    new-array v0, v5, [B

    .line 29
    .local v0, "data":[B
    const/4 v3, 0x0

    .line 30
    .local v3, "len":I
    :cond_2
    :goto_0
    iget-boolean v5, p0, Lcom/fimi/media/TcpServer;->isLoop:Z

    if-nez v5, :cond_0

    .line 32
    :try_start_0
    iget-object v5, p0, Lcom/fimi/media/TcpServer;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 33
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 34
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rev: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fimi/media/TcpServer;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 38
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/fimi/media/TcpServer;->isLoop:Z

    .line 39
    iget-object v5, p0, Lcom/fimi/media/TcpServer;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_2

    .line 41
    :try_start_1
    iget-object v5, p0, Lcom/fimi/media/TcpServer;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 42
    :catch_1
    move-exception v2

    .line 44
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
