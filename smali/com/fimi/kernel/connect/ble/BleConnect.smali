.class public Lcom/fimi/kernel/connect/ble/BleConnect;
.super Lcom/fimi/kernel/connect/BaseConnect;
.source "BleConnect.java"

# interfaces
.implements Lcom/fimi/kernel/connect/interfaces/IDataTransfer;
.implements Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;
.implements Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;,
        Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;,
        Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;
    }
.end annotation


# instance fields
.field private final SEND_LEN:I

.field bleStateCommand:Lcom/fimi/kernel/connect/BaseCommand;

.field private characterWrite:Landroid/bluetooth/BluetoothGattCharacteristic;

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

.field public cmdQuene2:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<[B>;"
        }
    .end annotation
.end field

.field public cmds:[I

.field private context:Landroid/content/Context;

.field private device:Landroid/bluetooth/BluetoothDevice;

.field private gh2ResultListener:Lcom/fimi/kernel/connect/ResultListener;

.field isWait:Z

.field private lastTime:J

.field logger:Lorg/slf4j/Logger;

.field private mBleSendDataHandle:Lcom/fimi/kernel/connect/interfaces/ble/IBleSendData;

.field private mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;

.field private mDeviceConnectState:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

.field private mReadThread:Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;

.field private mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

.field private mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

.field private mWriteThread:Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;

.field private p:Lcom/fimi/kernel/dataparser/milink/Parser;


# direct methods
.method public constructor <init>(Lcom/fimi/kernel/connect/interfaces/ble/IBleSendData;Lcom/fimi/kernel/connect/ResultListener;)V
    .locals 1
    .param p1, "mIBleSendData"    # Lcom/fimi/kernel/connect/interfaces/ble/IBleSendData;
    .param p2, "listener"    # Lcom/fimi/kernel/connect/ResultListener;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/fimi/kernel/connect/BaseConnect;-><init>()V

    .line 33
    const-string v0, "gh2_communication_log"

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->logger:Lorg/slf4j/Logger;

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->SEND_LEN:I

    .line 38
    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Parser;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/milink/Parser;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->p:Lcom/fimi/kernel/dataparser/milink/Parser;

    .line 40
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 41
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene2:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 50
    sget-object v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->IDEL:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mDeviceConnectState:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    .line 165
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->cmds:[I

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->isWait:Z

    .line 53
    iput-object p1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mBleSendDataHandle:Lcom/fimi/kernel/connect/interfaces/ble/IBleSendData;

    .line 54
    iput-object p2, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->gh2ResultListener:Lcom/fimi/kernel/connect/ResultListener;

    .line 56
    return-void

    .line 165
    :array_0
    .array-data 4
        0xc1
        0xc9
        0xca
        0xcb
        0xcc
    .end array-data
.end method

.method static synthetic access$000(Lcom/fimi/kernel/connect/ble/BleConnect;)Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/ble/BleConnect;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/kernel/connect/ble/BleConnect;)Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/ble/BleConnect;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/kernel/connect/ble/BleConnect;II[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/kernel/connect/ble/BleConnect;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [B
    .param p4, "x4"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fimi/kernel/connect/ble/BleConnect;->sendDividedData(II[BI)V

    return-void
.end method

.method static synthetic access$300(Lcom/fimi/kernel/connect/ble/BleConnect;)Lcom/fimi/kernel/connect/ResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/ble/BleConnect;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->gh2ResultListener:Lcom/fimi/kernel/connect/ResultListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/kernel/connect/ble/BleConnect;)J
    .locals 2
    .param p0, "x0"    # Lcom/fimi/kernel/connect/ble/BleConnect;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->lastTime:J

    return-wide v0
.end method

.method private isUpdateCmd(II)Z
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "ret":Z
    const/16 v2, 0x9

    if-ne p1, v2, :cond_0

    .line 169
    iget-object v3, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->cmds:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 170
    .local v0, "c":I
    if-ne p2, v0, :cond_1

    .line 171
    const/4 v1, 0x1

    .line 176
    .end local v0    # "c":I
    :cond_0
    return v1

    .line 169
    .restart local v0    # "c":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private sendDividedData(II[BI)V
    .locals 11
    .param p1, "groupId"    # I
    .param p2, "msgId"    # I
    .param p3, "bytes"    # [B
    .param p4, "len"    # I

    .prologue
    .line 180
    div-int/lit8 v2, p4, 0x14

    .line 181
    .local v2, "divided":I
    rem-int/lit8 v5, p4, 0x14

    .line 182
    .local v5, "remainder":I
    const/4 v7, 0x0

    .line 183
    .local v7, "slices":I
    if-nez v5, :cond_1

    .line 184
    move v7, v2

    .line 190
    :goto_0
    const/16 v8, 0x16

    aget-byte v8, p3, v8

    and-int/lit16 v1, v8, 0xff

    .line 191
    .local v1, "deviceModle":I
    const/16 v6, 0xa

    .line 192
    .local v6, "sleepTime":I
    const/16 v8, 0x9

    if-ne p1, v8, :cond_2

    const/16 v8, 0xc9

    if-ne p2, v8, :cond_2

    const/16 v8, 0x8

    if-ne v1, v8, :cond_2

    .line 193
    const/16 v6, 0xf

    .line 197
    :cond_0
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_4

    .line 199
    add-int/lit8 v8, v7, -0x1

    if-ne v4, v8, :cond_3

    if-eqz v5, :cond_3

    .line 200
    new-array v0, v5, [B

    .line 201
    .local v0, "buff":[B
    mul-int/lit8 v8, v4, 0x14

    const/4 v9, 0x0

    invoke-static {p3, v8, v0, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object v8, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mBleSendDataHandle:Lcom/fimi/kernel/connect/interfaces/ble/IBleSendData;

    invoke-interface {v8, p1, p2, v0, v6}, Lcom/fimi/kernel/connect/interfaces/ble/IBleSendData;->sendMessage(II[BI)V

    .line 197
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 186
    .end local v0    # "buff":[B
    .end local v1    # "deviceModle":I
    .end local v4    # "i":I
    .end local v6    # "sleepTime":I
    :cond_1
    add-int/lit8 v7, v2, 0x1

    goto :goto_0

    .line 194
    .restart local v1    # "deviceModle":I
    .restart local v6    # "sleepTime":I
    :cond_2
    const/16 v8, 0x9

    if-ne p1, v8, :cond_0

    const/16 v8, 0xc9

    if-ne p2, v8, :cond_0

    const/4 v8, 0x3

    if-ne v1, v8, :cond_0

    .line 195
    const/16 v6, 0xf

    goto :goto_1

    .line 204
    .restart local v4    # "i":I
    :cond_3
    const/16 v8, 0x14

    new-array v0, v8, [B

    .line 205
    .restart local v0    # "buff":[B
    mul-int/lit8 v8, v4, 0x14

    const/4 v9, 0x0

    const/16 v10, 0x14

    invoke-static {p3, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iget-object v8, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mBleSendDataHandle:Lcom/fimi/kernel/connect/interfaces/ble/IBleSendData;

    invoke-interface {v8, p1, p2, v0, v6}, Lcom/fimi/kernel/connect/interfaces/ble/IBleSendData;->sendMessage(II[BI)V

    goto :goto_3

    .line 209
    .end local v0    # "buff":[B
    :cond_4
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/ble/BleConnect;->updateTime()V

    .line 210
    invoke-static {p3}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "hex":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/fimi/kernel/connect/ble/BleConnect;->sendLog(Ljava/lang/String;)V

    .line 212
    return-void
.end method


# virtual methods
.method public closeSession()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    const-string v0, "closeSession"

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/connect/ble/BleConnect;->receiveLog(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mWriteThread:Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mWriteThread:Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->releaseConnection()V

    .line 133
    iput-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mWriteThread:Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mReadThread:Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mReadThread:Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->releaseConnection()V

    .line 137
    iput-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mReadThread:Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->exit()V

    .line 141
    iput-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->exit()V

    .line 145
    iput-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->exit()V

    .line 149
    iput-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    .line 151
    :cond_4
    sget-object v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->DISCONNECT:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mDeviceConnectState:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    .line 152
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/SessionManager;->onDeviveState(I)V

    .line 153
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/session/SessionManager;->removeSession()V

    .line 155
    return-void
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public isDeviceConnected()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mDeviceConnectState:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    sget-object v1, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->CONNECTED:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBleData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 399
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene2:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method public onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 239
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/kernel/connect/session/NoticeManager;->onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    .line 240
    return-void
.end method

.method public receiveLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "                App ==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public removeFromListByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "seq"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

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
    .line 222
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
    .line 227
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->removeFromListByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/ble/BleConnect;->sendSignal()V

    .line 75
    return-void
.end method

.method public sendJsonCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 80
    return-void
.end method

.method public sendLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->logger:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "             send   ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public sendRestransmissionData(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 4
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u91cd\u53d1\u6570\u636e seq ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgSeq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/connect/ble/BleConnect;->sendLog(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgGroudId()I

    move-result v0

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v1

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fimi/kernel/connect/ble/BleConnect;->sendDividedData(II[BI)V

    .line 235
    return-void
.end method

.method public sendSignal()V
    .locals 3

    .prologue
    .line 299
    iget-object v2, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v2

    .line 300
    :try_start_0
    iget-boolean v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->isWait:Z

    if-eqz v1, :cond_0

    .line 301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->isWait:Z

    .line 302
    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 311
    :goto_0
    monitor-exit v2

    .line 312
    return-void

    .line 304
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->isWait:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :try_start_1
    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->cmdQuene:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendTimeCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 4
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgGroudId()I

    move-result v0

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getMsgId()I

    move-result v1

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fimi/kernel/connect/ble/BleConnect;->sendDividedData(II[BI)V

    .line 85
    return-void
.end method

.method public setBleState(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "bleStateCommand"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->bleStateCommand:Lcom/fimi/kernel/connect/BaseCommand;

    .line 60
    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->device:Landroid/bluetooth/BluetoothDevice;

    .line 67
    return-void
.end method

.method public startRetransmissionThread()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u84dd\u7259\u901a\u9014\u6536\u53d1\u542f\u52a8................."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/connect/ble/BleConnect;->receiveLog(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f00\u542f\u8fde\u63a5\u68c0\u6d4b\u7ebf\u7a0b................."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/connect/ble/BleConnect;->receiveLog(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;->CONNECTED:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mDeviceConnectState:Lcom/fimi/kernel/connect/BaseConnect$DeviceConnectState;

    .line 119
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/SessionManager;->onDeviveState(I)V

    .line 120
    new-instance v0, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;-><init>(Lcom/fimi/kernel/connect/ble/BleConnect;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;

    .line 121
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/ble/BleConnect;->updateTime()V

    .line 122
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mCheckDeviceConnectThread:Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/ble/BleConnect$CheckDeviceConnectThread;->start()V

    .line 124
    :cond_0
    return-void
.end method

.method public startSession()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/connect/ble/BleConnect;->setClientAddress(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/connect/ble/BleConnect;->setClientName(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/fimi/kernel/connect/session/SessionManager;->addSession(Lcom/fimi/kernel/connect/BaseConnect;Ljava/lang/String;)V

    .line 92
    const-string v0, "startSession"

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/connect/ble/BleConnect;->receiveLog(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;-><init>(Lcom/fimi/kernel/connect/ble/BleConnect;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mWriteThread:Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;

    .line 95
    new-instance v0, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;-><init>(Lcom/fimi/kernel/connect/ble/BleConnect;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mReadThread:Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;

    .line 96
    new-instance v0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;-><init>(Lcom/fimi/kernel/connect/interfaces/IDataTransfer;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    .line 97
    new-instance v0, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    .line 98
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->gh2ResultListener:Lcom/fimi/kernel/connect/ResultListener;

    invoke-interface {v0, p0}, Lcom/fimi/kernel/connect/ResultListener;->setRetransmissionHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;)V

    .line 99
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->gh2ResultListener:Lcom/fimi/kernel/connect/ResultListener;

    invoke-interface {v0, p0}, Lcom/fimi/kernel/connect/ResultListener;->setTimerSendQueueHandle(Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;)V

    .line 100
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mWriteThread:Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mWriteThread:Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/ble/BleConnect$WriteThread;->start()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mReadThread:Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mReadThread:Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/ble/BleConnect$ReadThread;->start()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mRetransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->start()V

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->mTimerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->start()V

    .line 112
    :cond_3
    return-void
.end method

.method public updateTime()V
    .locals 2

    .prologue
    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/kernel/connect/ble/BleConnect;->lastTime:J

    .line 361
    return-void
.end method
