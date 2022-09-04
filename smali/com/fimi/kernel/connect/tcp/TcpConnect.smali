.class public Lcom/fimi/kernel/connect/tcp/TcpConnect;
.super Lcom/fimi/kernel/connect/BaseConnect;
.source "TcpConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;,
        Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;
    }
.end annotation


# instance fields
.field autoConnect:Z

.field private cmdSession:Lcom/fimi/kernel/dataparser/CmdSession;

.field private dataQue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private exitTcp:Z

.field private readThread:Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;

.field socket:Ljava/net/Socket;

.field socketOption:Lcom/fimi/kernel/connect/SocketOption;

.field private writeThread:Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;

.field private x9ResultListener:Lcom/fimi/kernel/connect/ResultListener;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/SocketOption;Lcom/fimi/kernel/connect/ResultListener;)V
    .locals 2
    .param p1, "option"    # Lcom/fimi/kernel/connect/SocketOption;
    .param p2, "listener"    # Lcom/fimi/kernel/connect/ResultListener;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/fimi/kernel/connect/BaseConnect;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->autoConnect:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 28
    iput-boolean v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->exitTcp:Z

    .line 40
    iput-object p1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->socketOption:Lcom/fimi/kernel/connect/SocketOption;

    .line 41
    invoke-virtual {p1}, Lcom/fimi/kernel/connect/SocketOption;->isAutoReconnect()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->autoConnect:Z

    .line 42
    iput-object p2, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->x9ResultListener:Lcom/fimi/kernel/connect/ResultListener;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/connect/tcp/TcpConnect;)Lcom/fimi/kernel/connect/ResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/tcp/TcpConnect;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->x9ResultListener:Lcom/fimi/kernel/connect/ResultListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/kernel/connect/tcp/TcpConnect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/tcp/TcpConnect;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->exitTcp:Z

    return v0
.end method

.method static synthetic access$200(Lcom/fimi/kernel/connect/tcp/TcpConnect;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/tcp/TcpConnect;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method private connectSocket(Lcom/fimi/kernel/connect/SocketOption;)V
    .locals 4
    .param p1, "option"    # Lcom/fimi/kernel/connect/SocketOption;

    .prologue
    .line 57
    :try_start_0
    const-string v1, "moweiru"

    const-string v2, "cmd tcp connect success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Ljava/net/Socket;

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/SocketOption;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/SocketOption;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->socket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "moweiru"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to connect tcp ,exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendHeartBit()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method


# virtual methods
.method public closeSession()V
    .locals 2

    .prologue
    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->exitTcp:Z

    .line 78
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->readThread:Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->readThread:Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;->interrupt()V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->writeThread:Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->writeThread:Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->interrupt()V

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_2
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isDeviceConnected()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public sendJsonCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 186
    return-void
.end method

.method public startSession()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->socketOption:Lcom/fimi/kernel/connect/SocketOption;

    invoke-direct {p0, v0}, Lcom/fimi/kernel/connect/tcp/TcpConnect;->connectSocket(Lcom/fimi/kernel/connect/SocketOption;)V

    .line 69
    new-instance v0, Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;-><init>(Lcom/fimi/kernel/connect/tcp/TcpConnect;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->readThread:Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;

    .line 70
    new-instance v0, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;-><init>(Lcom/fimi/kernel/connect/tcp/TcpConnect;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->writeThread:Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;

    .line 71
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->readThread:Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/tcp/TcpConnect$ReadThread;->start()V

    .line 72
    iget-object v0, p0, Lcom/fimi/kernel/connect/tcp/TcpConnect;->writeThread:Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/tcp/TcpConnect$WriteThread;->start()V

    .line 73
    return-void
.end method
