.class public Lcom/fimi/kernel/connect/usb/AOAConnect;
.super Lcom/fimi/kernel/connect/BaseConnect;
.source "AOAConnect.java"

# interfaces
.implements Lcom/fimi/kernel/connect/interfaces/IDataTransfer;
.implements Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;
.implements Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;
.implements Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;
.implements Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;,
        Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;
    }
.end annotation


# instance fields
.field dataQue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field inputStream:Ljava/io/FileInputStream;

.field private isAoaDeviceConecect:Z

.field private isConnect:Z

.field isWait:Z

.field mAccessory:Landroid/hardware/usb/UsbAccessory;

.field mContext:Landroid/content/Context;

.field private mIAoaConnectListener:Lcom/fimi/kernel/connect/usb/IUSBStatusListener;

.field mPermissionIntent:Landroid/app/PendingIntent;

.field private mPermissionRequestPending:Z

.field private mX8JsonCmdDeque:Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

.field outputStream:Ljava/io/FileOutputStream;

.field parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field readThread:Ljava/lang/Thread;

.field resultListener:Lcom/fimi/kernel/connect/ResultListener;

.field private retransmissionJsonThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

.field private retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

.field private retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

.field private timerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

.field usbManager:Landroid/hardware/usb/UsbManager;

.field writeThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/UsbAccessory;Lcom/fimi/kernel/connect/ResultListener;Lcom/fimi/kernel/connect/usb/IUSBStatusListener;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "usbAccessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "resultListener"    # Lcom/fimi/kernel/connect/ResultListener;
    .param p4, "mIAoaConnectListener"    # Lcom/fimi/kernel/connect/usb/IUSBStatusListener;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/fimi/kernel/connect/BaseConnect;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 53
    iput-boolean v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mPermissionRequestPending:Z

    .line 55
    iput-boolean v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isConnect:Z

    .line 63
    iput-boolean v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isAoaDeviceConecect:Z

    .line 250
    iput-boolean v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isWait:Z

    .line 66
    iput-object p1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mContext:Landroid/content/Context;

    .line 67
    iput-object p3, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->resultListener:Lcom/fimi/kernel/connect/ResultListener;

    .line 68
    const-string/jumbo v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 69
    iput-object p2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 70
    iput-object p4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mIAoaConnectListener:Lcom/fimi/kernel/connect/usb/IUSBStatusListener;

    .line 71
    new-instance v0, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;-><init>(Lcom/fimi/kernel/connect/usb/AOAConnect;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mX8JsonCmdDeque:Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

    .line 72
    iput-boolean v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isAoaDeviceConecect:Z

    .line 73
    if-eqz p2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {p0, v0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->openUsbAccessory(Landroid/hardware/usb/UsbAccessory;)V

    .line 76
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/kernel/connect/usb/AOAConnect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/usb/AOAConnect;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isConnect:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/usb/AOAConnect;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mX8JsonCmdDeque:Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/usb/IUSBStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/usb/AOAConnect;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mIAoaConnectListener:Lcom/fimi/kernel/connect/usb/IUSBStatusListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/usb/AOAConnect;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/usb/AOAConnect;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionJsonThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fimi/kernel/connect/usb/AOAConnect;)Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/kernel/connect/usb/AOAConnect;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fimi/kernel/connect/usb/AOAConnect;Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/kernel/connect/usb/AOAConnect;
    .param p1, "x1"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/fimi/kernel/connect/usb/AOAConnect;->sendData(Lcom/fimi/kernel/connect/BaseCommand;)V

    return-void
.end method

.method private openUsbAccessory(Landroid/hardware/usb/UsbAccessory;)V
    .locals 5
    .param p1, "usbAccessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, p1}, Landroid/hardware/usb/UsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 83
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 85
    .local v1, "fd":Ljava/io/FileDescriptor;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->inputStream:Ljava/io/FileInputStream;

    .line 86
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->outputStream:Ljava/io/FileOutputStream;

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->outputStream:Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isAoaDeviceConecect:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    iput-boolean v4, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isAoaDeviceConecect:Z

    goto :goto_0
.end method

.method private sendData(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 5
    .param p1, "command"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 235
    :try_start_0
    iget-boolean v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isConnect:Z

    if-eqz v1, :cond_0

    .line 236
    invoke-static {}, Lcom/fimi/host/CmdLogBack;->getInstance()Lcom/fimi/host/CmdLogBack;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/fimi/host/CmdLogBack;->writeLog([BZ)V

    .line 237
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->outputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getCmdData()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public closeSession()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isConnect:Z

    .line 329
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->readThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->readThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 331
    iput-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->readThread:Ljava/lang/Thread;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 335
    iput-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->writeThread:Ljava/lang/Thread;

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->exit()V

    .line 339
    iput-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->timerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->timerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->exit()V

    .line 343
    iput-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->timerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionJsonThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionJsonThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->exit()V

    .line 347
    iput-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionJsonThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

    .line 350
    :cond_4
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    if-eqz v0, :cond_5

    .line 351
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->exit()V

    .line 352
    iput-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    .line 354
    :cond_5
    iput-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mX8JsonCmdDeque:Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

    .line 355
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->closeUsbAccessory()V

    .line 356
    return-void
.end method

.method public closeUsbAccessory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 304
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    iput-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->inputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 308
    iget-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->inputStream:Ljava/io/FileInputStream;

    monitor-enter v1

    .line 309
    :try_start_1
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->inputStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 310
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 311
    iput-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->inputStream:Ljava/io/FileInputStream;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    .line 315
    iget-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->outputStream:Ljava/io/FileOutputStream;

    monitor-enter v1

    .line 316
    :try_start_2
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->outputStream:Ljava/io/FileOutputStream;

    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 317
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 318
    iput-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->outputStream:Ljava/io/FileOutputStream;

    .line 321
    :cond_2
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isAoaDeviceConecect:Z

    if-eqz v0, :cond_3

    .line 322
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/session/SessionManager;->removeSession()V

    .line 324
    :cond_3
    return-void

    .line 304
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 310
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 317
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public isAoaDeviceConecect()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isAoaDeviceConecect:Z

    return v0
.end method

.method public isDeviceConnected()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V
    .locals 2
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 106
    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/fimi/kernel/connect/session/NoticeManager;->onSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {p3}, Lcom/fimi/kernel/connect/BaseCommand;->getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/fimi/kernel/connect/session/NoticeManager;->onPersonalSendTimeOut(IILcom/fimi/kernel/connect/BaseCommand;Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V

    goto :goto_0
.end method

.method public putInQueue(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->sendSignal()V

    .line 388
    return-void
.end method

.method public removeFormListByOffset(I)Z
    .locals 1
    .param p1, "fileOffset"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->removeFromListByOffset(I)Z

    move-result v0

    goto :goto_0
.end method

.method public removeFromListByCmdID(ILjava/lang/String;)Lcom/fimi/kernel/connect/BaseCommand;
    .locals 1
    .param p1, "cmdId"    # I
    .param p2, "camKey"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionJsonThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionJsonThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->removeFromListByCmdID(ILjava/lang/String;)Lcom/fimi/kernel/connect/BaseCommand;

    move-result-object v0

    goto :goto_0
.end method

.method public removeFromListByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "seq"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

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
    .line 121
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->removeFromListByCmdIDLinkPacket4(IIILcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeFromListByUsbCmdKey(I)Z
    .locals 1
    .param p1, "cmdKey"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->removeFromListByUsbCmdKey(I)Z

    move-result v0

    goto :goto_0
.end method

.method public removeFromTimerSendQueueByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "cmdId"    # I
    .param p3, "seq"    # I
    .param p4, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->timerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->timerSendQueueThread:Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fimi/kernel/connect/retransmission/TimerSendQueueThread;->removeFromListByCmdID(IIILcom/fimi/kernel/dataparser/milink/LinkPacket;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 2
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 361
    sget-object v0, Lcom/fimi/kernel/connect/usb/AOAConnect$1;->$SwitchMap$com$fimi$kernel$connect$usb$LinkMsgType:[I

    invoke-virtual {p1}, Lcom/fimi/kernel/connect/BaseCommand;->getLinkMsgType()Lcom/fimi/kernel/connect/usb/LinkMsgType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/connect/usb/LinkMsgType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 375
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->sendSignal()V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 363
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {p0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->sendSignal()V

    goto :goto_0

    .line 367
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mX8JsonCmdDeque:Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mX8JsonCmdDeque:Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->addJsonCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 372
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/fimi/kernel/connect/usb/AOAConnect;->sendData(Lcom/fimi/kernel/connect/BaseCommand;)V

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendJsonCmd(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mX8JsonCmdDeque:Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->mX8JsonCmdDeque:Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/connect/retransmission/X8JsonCmdDeque;->addJsonCmd(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 395
    :cond_0
    return-void
.end method

.method public sendRestransmissionData(Lcom/fimi/kernel/connect/BaseCommand;)V
    .locals 0
    .param p1, "bcd"    # Lcom/fimi/kernel/connect/BaseCommand;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/fimi/kernel/connect/usb/AOAConnect;->sendData(Lcom/fimi/kernel/connect/BaseCommand;)V

    .line 102
    return-void
.end method

.method public sendSignal()V
    .locals 3

    .prologue
    .line 253
    iget-object v2, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v2

    .line 254
    :try_start_0
    iget-boolean v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isWait:Z

    if-eqz v1, :cond_0

    .line 255
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isWait:Z

    .line 256
    iget-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 266
    :goto_0
    monitor-exit v2

    .line 267
    return-void

    .line 258
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isWait:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :try_start_1
    iget-object v1, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->dataQue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startSession()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->isConnect:Z

    .line 276
    new-instance v0, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/usb/AOAConnect$ReadThread;-><init>(Lcom/fimi/kernel/connect/usb/AOAConnect;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->readThread:Ljava/lang/Thread;

    .line 277
    new-instance v0, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/usb/AOAConnect$WriteThread;-><init>(Lcom/fimi/kernel/connect/usb/AOAConnect;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->writeThread:Ljava/lang/Thread;

    .line 278
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->readThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 279
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 282
    new-instance v0, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;-><init>(Lcom/fimi/kernel/connect/interfaces/IDataTransfer;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    .line 283
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->resultListener:Lcom/fimi/kernel/connect/ResultListener;

    invoke-interface {v0, p0}, Lcom/fimi/kernel/connect/ResultListener;->setRetransmissionHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionHandle;)V

    .line 284
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->resultListener:Lcom/fimi/kernel/connect/ResultListener;

    invoke-interface {v0, p0}, Lcom/fimi/kernel/connect/ResultListener;->setTimerSendQueueHandle(Lcom/fimi/kernel/connect/interfaces/ITimerSendQueueHandle;)V

    .line 285
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->resultListener:Lcom/fimi/kernel/connect/ResultListener;

    invoke-interface {v0, p0}, Lcom/fimi/kernel/connect/ResultListener;->setRetransmissionJsonHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionJsonHandle;)V

    .line 286
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->resultListener:Lcom/fimi/kernel/connect/ResultListener;

    invoke-interface {v0, p0}, Lcom/fimi/kernel/connect/ResultListener;->setRetransmissionUsbHandle(Lcom/fimi/kernel/connect/interfaces/IRetransmissionUsbHandle;)V

    .line 288
    new-instance v0, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

    invoke-direct {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionJsonThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

    .line 289
    new-instance v0, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;-><init>(Lcom/fimi/kernel/connect/interfaces/IDataTransfer;)V

    iput-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    .line 291
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionThread;->start()V

    .line 293
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionJsonThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionJsonThread;->start()V

    .line 294
    iget-object v0, p0, Lcom/fimi/kernel/connect/usb/AOAConnect;->retransmissionUsbThread:Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/retransmission/RetransmissionUsbThread;->start()V

    .line 297
    return-void
.end method
