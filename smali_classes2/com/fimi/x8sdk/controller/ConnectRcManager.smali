.class public Lcom/fimi/x8sdk/controller/ConnectRcManager;
.super Ljava/lang/Object;
.source "ConnectRcManager.java"


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.google.android.DemoKit.action.USB_PERMISSION"

.field private static instance:Lcom/fimi/x8sdk/controller/ConnectRcManager;


# instance fields
.field isRequestPermission:Z

.field isTryConnect:Z

.field private mPermissionIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/fimi/x8sdk/controller/ConnectRcManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/controller/ConnectRcManager;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/controller/ConnectRcManager;->instance:Lcom/fimi/x8sdk/controller/ConnectRcManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/controller/ConnectRcManager;->isRequestPermission:Z

    .line 31
    invoke-direct {p0}, Lcom/fimi/x8sdk/controller/ConnectRcManager;->initSessionAndNotice()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/fimi/x8sdk/controller/ConnectRcManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/fimi/x8sdk/controller/ConnectRcManager;->instance:Lcom/fimi/x8sdk/controller/ConnectRcManager;

    return-object v0
.end method

.method private initSessionAndNotice()V
    .locals 0

    .prologue
    .line 35
    invoke-static {}, Lcom/fimi/kernel/connect/session/SessionManager;->initInstance()V

    .line 36
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->initInstance()V

    .line 38
    return-void
.end method


# virtual methods
.method public declared-synchronized connectRC(Landroid/content/Context;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/fimi/x8sdk/controller/ConnectRcManager;->isTryConnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 70
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/fimi/x8sdk/controller/ConnectRcManager;->isTryConnect:Z

    .line 48
    const-string v3, "usb"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    .line 49
    .local v2, "usbManager":Landroid/hardware/usb/UsbManager;
    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.DemoKit.action.USB_PERMISSION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/fimi/x8sdk/controller/ConnectRcManager;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 52
    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 54
    .local v0, "accessories":[Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 55
    .local v1, "accessory":Landroid/hardware/usb/UsbAccessory;
    :goto_1
    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    invoke-static {}, Lcom/fimi/x8sdk/connect/CommunicationManager;->getCommunicationManager()Lcom/fimi/x8sdk/connect/CommunicationManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/fimi/x8sdk/connect/CommunicationManager;->setAccessory(Landroid/hardware/usb/UsbAccessory;)V

    .line 58
    invoke-static {}, Lcom/fimi/x8sdk/connect/CommunicationManager;->getCommunicationManager()Lcom/fimi/x8sdk/connect/CommunicationManager;

    move-result-object v3

    sget-object v4, Lcom/fimi/x8sdk/connect/ConnectType;->Aoa:Lcom/fimi/x8sdk/connect/ConnectType;

    invoke-virtual {v3, p1, v4}, Lcom/fimi/x8sdk/connect/CommunicationManager;->startConnectThread(Landroid/content/Context;Lcom/fimi/x8sdk/connect/ConnectType;)V

    .line 69
    .end local v0    # "accessories":[Landroid/hardware/usb/UsbAccessory;
    .end local v1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_1
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/fimi/x8sdk/controller/ConnectRcManager;->isTryConnect:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    .end local v2    # "usbManager":Landroid/hardware/usb/UsbManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 54
    .restart local v0    # "accessories":[Landroid/hardware/usb/UsbAccessory;
    .restart local v2    # "usbManager":Landroid/hardware/usb/UsbManager;
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    aget-object v1, v0, v3

    goto :goto_1

    .line 60
    .restart local v1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_3
    iget-boolean v3, p0, Lcom/fimi/x8sdk/controller/ConnectRcManager;->isRequestPermission:Z

    if-nez v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/fimi/x8sdk/controller/ConnectRcManager;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v1, v3}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V

    .line 64
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fimi/x8sdk/controller/ConnectRcManager;->isRequestPermission:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public unConnectRC()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/fimi/x8sdk/connect/CommunicationManager;->getCommunicationManager()Lcom/fimi/x8sdk/connect/CommunicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/connect/CommunicationManager;->stopConnectThread()V

    .line 78
    return-void
.end method
