.class public Lcom/fimi/TcpClient;
.super Ljava/lang/Thread;
.source "TcpClient.java"


# static fields
.field private static instance:Lcom/fimi/TcpClient;

.field private static isSetUpTcpClient:Z


# instance fields
.field public cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isLoop:Z

.field isWait:Z

.field out:Ljava/io/OutputStream;

.field s:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fimi/TcpClient;->isSetUpTcpClient:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/TcpClient;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 16
    iput-object v2, p0, Lcom/fimi/TcpClient;->s:Ljava/net/Socket;

    .line 17
    iput-object v2, p0, Lcom/fimi/TcpClient;->out:Ljava/io/OutputStream;

    .line 18
    iput-boolean v1, p0, Lcom/fimi/TcpClient;->isLoop:Z

    .line 58
    iput-boolean v1, p0, Lcom/fimi/TcpClient;->isWait:Z

    return-void
.end method

.method public static createInit()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/fimi/TcpClient;

    invoke-direct {v0}, Lcom/fimi/TcpClient;-><init>()V

    sput-object v0, Lcom/fimi/TcpClient;->instance:Lcom/fimi/TcpClient;

    .line 23
    sget-boolean v0, Lcom/fimi/TcpClient;->isSetUpTcpClient:Z

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/fimi/TcpClient;->instance:Lcom/fimi/TcpClient;

    invoke-virtual {v0}, Lcom/fimi/TcpClient;->start()V

    .line 26
    :cond_0
    return-void
.end method

.method public static getIntance()Lcom/fimi/TcpClient;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/fimi/TcpClient;->instance:Lcom/fimi/TcpClient;

    return-object v0
.end method


# virtual methods
.method public exit()V
    .locals 2

    .prologue
    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/TcpClient;->isLoop:Z

    .line 86
    iget-object v1, p0, Lcom/fimi/TcpClient;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/fimi/TcpClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fimi/TcpClient;->s:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 95
    :try_start_1
    iget-object v1, p0, Lcom/fimi/TcpClient;->s:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/fimi/TcpClient;->interrupt()V

    .line 101
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public run()V
    .locals 5

    .prologue
    .line 35
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    const-string v3, "192.168.43.1"

    const v4, 0xd431

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/fimi/TcpClient;->s:Ljava/net/Socket;

    .line 36
    iget-object v2, p0, Lcom/fimi/TcpClient;->s:Ljava/net/Socket;

    if-nez v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/fimi/TcpClient;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/TcpClient;->out:Ljava/io/OutputStream;

    .line 40
    iget-object v2, p0, Lcom/fimi/TcpClient;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/fimi/TcpClient;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    const-string v3, " CLIENT SETUP"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 44
    :goto_1
    iget-boolean v2, p0, Lcom/fimi/TcpClient;->isLoop:Z

    if-nez v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/fimi/TcpClient;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/fimi/TcpClient;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/fimi/TcpClient;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 52
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/fimi/TcpClient;->sendSignal()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public sendLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v0, Lcom/fimi/TcpClient;->instance:Lcom/fimi/TcpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/TcpClient;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/fimi/TcpClient;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0}, Lcom/fimi/TcpClient;->sendSignal()V

    .line 82
    :cond_0
    return-void
.end method

.method public sendSignal()V
    .locals 3

    .prologue
    .line 61
    iget-object v2, p0, Lcom/fimi/TcpClient;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-boolean v1, p0, Lcom/fimi/TcpClient;->isWait:Z

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/TcpClient;->isWait:Z

    .line 64
    iget-object v1, p0, Lcom/fimi/TcpClient;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 73
    :goto_0
    monitor-exit v2

    .line 74
    return-void

    .line 66
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/TcpClient;->isWait:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    iget-object v1, p0, Lcom/fimi/TcpClient;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
