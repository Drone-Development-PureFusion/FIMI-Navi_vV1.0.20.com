.class public Lcom/fimi/x8sdk/connect/CommunicationManager;
.super Ljava/lang/Object;
.source "CommunicationManager.java"

# interfaces
.implements Lcom/fimi/kernel/connect/usb/IUSBStatusListener;


# static fields
.field public static communicationManager:Lcom/fimi/x8sdk/connect/CommunicationManager;


# instance fields
.field accessory:Landroid/hardware/usb/UsbAccessory;

.field connectThread:Lcom/fimi/x8sdk/connect/IConnectHandler;

.field private isExiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/fimi/x8sdk/connect/CommunicationManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/CommunicationManager;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/connect/CommunicationManager;->communicationManager:Lcom/fimi/x8sdk/connect/CommunicationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommunicationManager()Lcom/fimi/x8sdk/connect/CommunicationManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/fimi/x8sdk/connect/CommunicationManager;->communicationManager:Lcom/fimi/x8sdk/connect/CommunicationManager;

    return-object v0
.end method


# virtual methods
.method public onAoaIoError(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/fimi/x8sdk/connect/CommunicationManager;->stopConnectThread()V

    .line 69
    return-void
.end method

.method public setAccessory(Landroid/hardware/usb/UsbAccessory;)V
    .locals 0
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->accessory:Landroid/hardware/usb/UsbAccessory;

    .line 24
    return-void
.end method

.method public startConnectThread(Landroid/content/Context;Lcom/fimi/x8sdk/connect/ConnectType;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/fimi/x8sdk/connect/ConnectType;

    .prologue
    .line 31
    sget-object v0, Lcom/fimi/x8sdk/connect/CommunicationManager$1;->$SwitchMap$com$fimi$x8sdk$connect$ConnectType:[I

    invoke-virtual {p2}, Lcom/fimi/x8sdk/connect/ConnectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->connectThread:Lcom/fimi/x8sdk/connect/IConnectHandler;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;

    invoke-direct {v0, p1}, Lcom/fimi/x8sdk/connect/tcp/TcpConnectThread;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->connectThread:Lcom/fimi/x8sdk/connect/IConnectHandler;

    goto :goto_0

    .line 38
    :pswitch_1
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->connectThread:Lcom/fimi/x8sdk/connect/IConnectHandler;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;

    iget-object v1, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->accessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v0, p1, v1, p0}, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbAccessory;Lcom/fimi/kernel/connect/usb/IUSBStatusListener;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->connectThread:Lcom/fimi/x8sdk/connect/IConnectHandler;

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopConnectThread()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->connectThread:Lcom/fimi/x8sdk/connect/IConnectHandler;

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->connectThread:Lcom/fimi/x8sdk/connect/IConnectHandler;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->isExiting:Z

    if-eqz v0, :cond_1

    .line 53
    monitor-exit v1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->isExiting:Z

    .line 56
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->connectThread:Lcom/fimi/x8sdk/connect/IConnectHandler;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->connectThread:Lcom/fimi/x8sdk/connect/IConnectHandler;

    invoke-interface {v0}, Lcom/fimi/x8sdk/connect/IConnectHandler;->exit()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->connectThread:Lcom/fimi/x8sdk/connect/IConnectHandler;

    .line 60
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/connect/CommunicationManager;->isExiting:Z

    .line 61
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
