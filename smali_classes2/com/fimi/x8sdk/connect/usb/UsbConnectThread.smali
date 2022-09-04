.class public Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;
.super Ljava/lang/Thread;
.source "UsbConnectThread.java"

# interfaces
.implements Lcom/fimi/x8sdk/connect/IConnectHandler;


# instance fields
.field accessory:Landroid/hardware/usb/UsbAccessory;

.field aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

.field dataChanel:Lcom/fimi/x8sdk/connect/DataChanel;

.field mContext:Landroid/content/Context;

.field private mIAoaConnectListener:Lcom/fimi/kernel/connect/usb/IUSBStatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/UsbAccessory;Lcom/fimi/kernel/connect/usb/IUSBStatusListener;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p3, "mIAoaConnectListener"    # Lcom/fimi/kernel/connect/usb/IUSBStatusListener;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->accessory:Landroid/hardware/usb/UsbAccessory;

    .line 29
    iput-object p3, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->mIAoaConnectListener:Lcom/fimi/kernel/connect/usb/IUSBStatusListener;

    .line 30
    new-instance v0, Lcom/fimi/x8sdk/connect/DataChanel;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/DataChanel;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->dataChanel:Lcom/fimi/x8sdk/connect/DataChanel;

    .line 31
    invoke-virtual {p0}, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->start()V

    .line 32
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->interrupt()V

    .line 55
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->closeSession()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    .line 61
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 36
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 37
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/fimi/kernel/connect/usb/AOAConnect;

    iget-object v1, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->accessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v3, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->dataChanel:Lcom/fimi/x8sdk/connect/DataChanel;

    iget-object v4, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->mIAoaConnectListener:Lcom/fimi/kernel/connect/usb/IUSBStatusListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/kernel/connect/usb/AOAConnect;-><init>(Landroid/content/Context;Landroid/hardware/usb/UsbAccessory;Lcom/fimi/kernel/connect/ResultListener;Lcom/fimi/kernel/connect/usb/IUSBStatusListener;)V

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    .line 40
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->isAoaDeviceConecect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->startSession()V

    .line 42
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->getInstance()Lcom/fimi/kernel/connect/session/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/connect/session/SessionManager;->addSession(Lcom/fimi/kernel/connect/BaseConnect;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/usb/UsbConnectThread;->aoaConnect:Lcom/fimi/kernel/connect/usb/AOAConnect;

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/usb/AOAConnect;->closeUsbAccessory()V

    goto :goto_0
.end method
