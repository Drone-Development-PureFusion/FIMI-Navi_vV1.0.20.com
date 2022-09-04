.class public Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;
.super Ljava/lang/Thread;
.source "TcpConnectThread.java"

# interfaces
.implements Lcom/fimi/x8sdk/connect/IConnectHandler;


# instance fields
.field filterAdapter:Lcom/fimi/x8sdk/connect/DataChanel;

.field option:Lcom/fimi/kernel/connect/SocketOption;

.field tcpConnect:Lcom/fimi/kernel/connect/tcp/TcpConnect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    new-instance v0, Lcom/fimi/x8sdk/connect/DataChanel;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/DataChanel;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->filterAdapter:Lcom/fimi/x8sdk/connect/DataChanel;

    .line 24
    new-instance v0, Lcom/fimi/kernel/connect/SocketOption;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/SocketOption;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->option:Lcom/fimi/kernel/connect/SocketOption;

    .line 25
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->option:Lcom/fimi/kernel/connect/SocketOption;

    const-string v1, "192.168.42.1"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/SocketOption;->setHost(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->option:Lcom/fimi/kernel/connect/SocketOption;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/SocketOption;->setPort(I)V

    .line 27
    invoke-virtual {p0}, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->start()V

    .line 28
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->interrupt()V

    .line 42
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->tcpConnect:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/tcp/TcpConnect;->closeSession()V

    .line 43
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 33
    new-instance v0, Lcom/fimi/kernel/connect/tcp/TcpConnect;

    iget-object v1, p0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->option:Lcom/fimi/kernel/connect/SocketOption;

    iget-object v2, p0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->filterAdapter:Lcom/fimi/x8sdk/connect/DataChanel;

    invoke-direct {v0, v1, v2}, Lcom/fimi/kernel/connect/tcp/TcpConnect;-><init>(Lcom/fimi/kernel/connect/SocketOption;Lcom/fimi/kernel/connect/ResultListener;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->tcpConnect:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    .line 34
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->tcpConnect:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/tcp/TcpConnect;->startSession()V

    .line 35
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;->tcpConnect:Lcom/fimi/kernel/connect/tcp/TcpConnect;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/SessionManager;->addSession(Lcom/fimi/kernel/connect/BaseConnect;)V

    .line 36
    return-void
.end method
