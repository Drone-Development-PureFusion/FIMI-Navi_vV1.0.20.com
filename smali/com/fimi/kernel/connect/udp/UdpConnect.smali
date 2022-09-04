.class public Lcom/fimi/kernel/connect/udp/UdpConnect;
.super Lcom/fimi/kernel/connect/BaseConnect;
.source "UdpConnect.java"

# interfaces
.implements Lcom/fimi/kernel/connect/interfaces/IDataTransfer;
.implements Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;
.implements Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;,
        Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;,
        Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;
    }
.end annotation


# static fields
.field private static packetRcv:Ljava/net/DatagramPacket;

.field private static packetSend:Ljava/net/DatagramPacket;

.field private static socket:Ljava/net/DatagramSocket;


# instance fields
.field public cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field hostAddress:Ljava/net/InetAddress;

.field isWait:Z

.field private lastTime:J

.field private mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;

.field private mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

.field private mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

.field private msgRcv:[B

.field private readThread:Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;

.field private sendThread:Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;

.field private socketOption:Lcom/fimi/kernel/connect/SocketOption;

.field private udpLife:Z

.field private x9Listener:Lcom/fimi/kernel/connect/ResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/fimi/kernel/connect/udp/UdpConnect;->socket:Ljava/net/DatagramSocket;

    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramSocket;Lcom/fimi/kernel/connect/SocketOption;Lcom/fimi/kernel/connect/ResultListener;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "option"    # Lcom/fimi/kernel/connect/SocketOption;
    .param p3, "listener"    # Lcom/fimi/kernel/connect/ResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/fimi/kernel/connect/BaseConnect;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->udpLife:Z

    .line 38
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->msgRcv:[B

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->hostAddress:Ljava/net/InetAddress;

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->isWait:Z

    .line 51
    iput-object p2, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->socketOption:Lcom/fimi/kernel/connect/SocketOption;

    .line 52
    iput-object p3, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->x9Listener:Lcom/fimi/kernel/connect/ResultListener;

    .line 53
    sput-object p1, Lcom/fimi/kernel/connect/udp/UdpConnect;->socket:Ljava/net/DatagramSocket;

    .line 54
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->msgRcv:[B

    iget-object v2, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->msgRcv:[B

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    sput-object v0, Lcom/fimi/kernel/connect/udp/UdpConnect;->packetRcv:Ljava/net/DatagramPacket;

    .line 56
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->socketOption:Lcom/fimi/kernel/connect/SocketOption;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/SocketOption;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->hostAddress:Ljava/net/InetAddress;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/connect/udp/UdpConnect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/udp/UdpConnect;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->udpLife:Z

    return v0
.end method

.method static synthetic access$100()Ljava/net/DatagramPacket;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/fimi/kernel/connect/udp/UdpConnect;->packetRcv:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method static synthetic access$200()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/fimi/kernel/connect/udp/UdpConnect;->socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/kernel/connect/udp/UdpConnect;)Lcom/fimi/kernel/connect/ResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/udp/UdpConnect;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->x9Listener:Lcom/fimi/kernel/connect/ResultListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/kernel/connect/udp/UdpConnect;)Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/udp/UdpConnect;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/kernel/connect/udp/UdpConnect;)Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/udp/UdpConnect;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fimi/kernel/connect/udp/UdpConnect;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/kernel/connect/udp/UdpConnect;

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->lastTime:J

    return-wide v0
.end method

.method private writeCmd([B)V
    .locals 5
    .param p1, "cmd"    # [B

    .prologue
    .line 213
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p1

    iget-object v3, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->hostAddress:Ljava/net/InetAddress;

    iget-object v4, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->socketOption:Lcom/fimi/kernel/connect/SocketOption;

    invoke-virtual {v4}, Lcom/fimi/kernel/connect/SocketOption;->getPort()I

    move-result v4

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    sput-object v1, Lcom/fimi/kernel/connect/udp/UdpConnect;->packetSend:Ljava/net/DatagramPacket;

    .line 214
    sget-object v1, Lcom/fimi/kernel/connect/udp/UdpConnect;->socket:Ljava/net/DatagramSocket;

    sget-object v2, Lcom/fimi/kernel/connect/udp/UdpConnect;->packetSend:Ljava/net/DatagramPacket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public closeSession()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->udpLife:Z

    .line 245
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->readThread:Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->readThread:Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;->interrupt()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->sendThread:Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->sendThread:Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;->interrupt()V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->exit()V

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;->exit()V

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->exit()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    .line 261
    :cond_4
    sget-object v0, Lcom/fimi/kernel/connect/udp/UdpConnect;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_5

    .line 262
    sget-object v0, Lcom/fimi/kernel/connect/udp/UdpConnect;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 265
    :cond_5
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/session/SessionManager;->removeSession()V

    .line 266
    return-void
.end method

.method public isDeviceConnected()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->udpLife:Z

    return v0
.end method

.method public onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 2
    .param p1, "group_id"    # I
    .param p2, "cmdId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 75
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/kernel/connect/session/NoticeManager;->onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fimi/kernel/connect/session/NoticeManager;->onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    goto :goto_0
.end method

.method public removeFromListByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "seq"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->removeFromListByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeFromListByCmdIDLinkPacket4(IIILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)Z
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "seq"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public removeFromTimerSendQueueByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "seq"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->removeFromListByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 5
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getOutTime()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    .line 273
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/udp/UdpConnect;->sendSignal()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendDatas(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 5
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    const/16 v4, 0x400

    .line 122
    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v3

    array-length v3, v3

    if-lt v3, v4, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v3

    invoke-static {v3, v4}, Lcom/fimi/kernel/utils/ByteUtil;->splitAry([BI)[Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "newCmd":[Ljava/lang/Object;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 125
    .local v2, "object":Ljava/lang/Object;
    check-cast v2, [B

    .end local v2    # "object":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    .line 126
    .local v0, "aryItem":[B
    invoke-direct {p0, v0}, Lcom/fimi/kernel/connect/udp/UdpConnect;->writeCmd([B)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "aryItem":[B
    .end local v1    # "newCmd":[Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/fimi/kernel/connect/udp/UdpConnect;->writeCmd([B)V

    .line 140
    :cond_1
    return-void
.end method

.method public sendJsonCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 320
    return-void
.end method

.method public sendRestransmissionData(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/connect/udp/UdpConnect;->sendDatas(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 71
    return-void
.end method

.method public sendSignal()V
    .locals 3

    .prologue
    .line 145
    iget-object v2, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-boolean v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->isWait:Z

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->isWait:Z

    .line 148
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 157
    :goto_0
    monitor-exit v2

    .line 158
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->isWait:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;-><init>(Lcom/fimi/kernel/connect/udp/UdpConnect;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->readThread:Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;

    .line 225
    new-instance v0, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;-><init>(Lcom/fimi/kernel/connect/udp/UdpConnect;Lcom/fimi/kernel/connect/udp/UdpConnect$1;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->sendThread:Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;

    .line 226
    new-instance v0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;-><init>(Lcom/fimi/kernel/connect/interfaces/IDataTransfer;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    .line 227
    new-instance v0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    .line 228
    new-instance v0, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;-><init>(Lcom/fimi/kernel/connect/udp/UdpConnect;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;

    .line 230
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->readThread:Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/udp/UdpConnect$ReadThread;->start()V

    .line 231
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->sendThread:Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/udp/UdpConnect$SendThread;->start()V

    .line 232
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->x9Listener:Lcom/fimi/kernel/connect/ResultListener;

    invoke-interface {v0, p0}, Lcom/fimi/kernel/connect/ResultListener;->setRetransmissionHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;)V

    .line 233
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->x9Listener:Lcom/fimi/kernel/connect/ResultListener;

    invoke-interface {v0, p0}, Lcom/fimi/kernel/connect/ResultListener;->setTimerSendQueueHandle(Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;)V

    .line 234
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->start()V

    .line 235
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->start()V

    .line 237
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/udp/UdpConnect;->updateTime()V

    .line 238
    iget-object v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/udp/UdpConnect$CheckDeviceConnectThread;->start()V

    .line 240
    return-void
.end method

.method public updateTime()V
    .locals 2

    .prologue
    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/kernel/connect/udp/UdpConnect;->lastTime:J

    .line 289
    return-void
.end method
