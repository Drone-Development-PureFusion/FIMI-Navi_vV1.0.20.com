.class public Lcom/fimi/x8sdk/connect/udp/UdpConnectThread;
.super Ljava/lang/Thread;
.source "UdpConnectThread.java"

# interfaces
.implements Lcom/fimi/x8sdk/connect/IConnectHandler;


# instance fields
.field isExit:Z

.field mContext:Landroid/content/Context;

.field option:Lcom/fimi/kernel/connect/SocketOption;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/udp/UdpConnectThread;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/fimi/kernel/connect/SocketOption;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/SocketOption;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/udp/UdpConnectThread;->option:Lcom/fimi/kernel/connect/SocketOption;

    .line 30
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/udp/UdpConnectThread;->option:Lcom/fimi/kernel/connect/SocketOption;

    const-string v1, "192.168.40.2"

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/SocketOption;->setHost(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/udp/UdpConnectThread;->option:Lcom/fimi/kernel/connect/SocketOption;

    const/16 v1, 0x1ec6

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/SocketOption;->setPort(I)V

    .line 32
    invoke-virtual {p0}, Lcom/fimi/x8sdk/connect/udp/UdpConnectThread;->start()V

    .line 35
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/connect/udp/UdpConnectThread;->isExit:Z

    .line 40
    invoke-virtual {p0}, Lcom/fimi/x8sdk/connect/udp/UdpConnectThread;->interrupt()V

    .line 42
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 46
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 47
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/fimi/x8sdk/connect/udp/UdpConnectThread;->isExit:Z

    if-nez v4, :cond_1

    .line 49
    :try_start_0
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/kernel/connect/session/SessionManager;->hasSession()Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    .line 51
    .local v1, "datagramSocket":Ljava/net/DatagramSocket;
    new-instance v0, Lcom/fimi/x8sdk/connect/DataChanel;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/DataChanel;-><init>()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .local v0, "dataChanel":Lcom/fimi/x8sdk/connect/DataChanel;
    :try_start_1
    new-instance v3, Lcom/fimi/kernel/connect/udp/UdpConnect;

    iget-object v4, p0, Lcom/fimi/x8sdk/connect/udp/UdpConnectThread;->option:Lcom/fimi/kernel/connect/SocketOption;

    invoke-direct {v3, v1, v4, v0}, Lcom/fimi/kernel/connect/udp/UdpConnect;-><init>(Ljava/net/DatagramSocket;Lcom/fimi/kernel/connect/SocketOption;Lcom/fimi/kernel/connect/ResultListener;)V

    .line 54
    .local v3, "udpConnect":Lcom/fimi/kernel/connect/udp/UdpConnect;
    invoke-virtual {v3}, Lcom/fimi/kernel/connect/udp/UdpConnect;->startSession()V

    .line 55
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/fimi/kernel/connect/session/SessionManager;->addSession(Lcom/fimi/kernel/connect/BaseConnect;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 56
    .end local v3    # "udpConnect":Lcom/fimi/kernel/connect/udp/UdpConnect;
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/net/UnknownHostException;
    :try_start_2
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 61
    .end local v0    # "dataChanel":Lcom/fimi/x8sdk/connect/DataChanel;
    .end local v1    # "datagramSocket":Ljava/net/DatagramSocket;
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 62
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v2    # "e":Ljava/net/SocketException;
    :cond_1
    return-void
.end method
