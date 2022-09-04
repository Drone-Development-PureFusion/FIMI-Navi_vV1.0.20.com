.class public Lcom/fimi/x8sdk/controller/ConnectAOAManager;
.super Ljava/lang/Object;
.source "ConnectAOAManager.java"


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.google.android.DemoKit.action.USB_PERMISSION"


# instance fields
.field callback:Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;

.field isRequestPermission:Z

.field private volatile mConnected:Z

.field mContext:Landroid/content/Context;

.field private mPermissionIntent:Landroid/app/PendingIntent;

.field usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->isRequestPermission:Z

    .line 28
    iput-boolean v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->mConnected:Z

    .line 73
    iput-object p1, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->mContext:Landroid/content/Context;

    .line 74
    iput-object p1, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->mContext:Landroid/content/Context;

    .line 75
    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.DemoKit.action.USB_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->mPermissionIntent:Landroid/app/PendingIntent;

    .line 78
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->callback:Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->callback:Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;

    .line 79
    return-void
.end method


# virtual methods
.method public conectAOA()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 35
    iget-boolean v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->mConnected:Z

    if-nez v2, :cond_3

    .line 36
    iget-object v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->usbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 38
    .local v0, "accessories":[Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_1

    .line 39
    .local v1, "accessory":Landroid/hardware/usb/UsbAccessory;
    :goto_0
    if-eqz v1, :cond_0

    .line 40
    iget-object v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 41
    invoke-static {}, Lcom/fimi/x8sdk/connect/CommunicationManager;->getCommunicationManager()Lcom/fimi/x8sdk/connect/CommunicationManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fimi/x8sdk/connect/CommunicationManager;->setAccessory(Landroid/hardware/usb/UsbAccessory;)V

    .line 42
    invoke-static {}, Lcom/fimi/x8sdk/connect/CommunicationManager;->getCommunicationManager()Lcom/fimi/x8sdk/connect/CommunicationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/fimi/x8sdk/connect/ConnectType;->Aoa:Lcom/fimi/x8sdk/connect/ConnectType;

    invoke-virtual {v2, v3, v4}, Lcom/fimi/x8sdk/connect/CommunicationManager;->startConnectThread(Landroid/content/Context;Lcom/fimi/x8sdk/connect/ConnectType;)V

    .line 43
    iget-object v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->callback:Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;

    invoke-interface {v2}, Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;->onConnected()V

    .line 44
    iput-boolean v5, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->mConnected:Z

    .line 69
    .end local v0    # "accessories":[Landroid/hardware/usb/UsbAccessory;
    .end local v1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_0
    :goto_1
    return-void

    .line 38
    .restart local v0    # "accessories":[Landroid/hardware/usb/UsbAccessory;
    :cond_1
    aget-object v1, v0, v3

    goto :goto_0

    .line 46
    .restart local v1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_2
    iget-boolean v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->isRequestPermission:Z

    if-nez v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->mPermissionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v1, v3}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V

    .line 49
    iget-object v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->callback:Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;

    invoke-interface {v2}, Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;->onConnectionEstablished()V

    .line 50
    iput-boolean v5, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->isRequestPermission:Z

    goto :goto_1

    .line 56
    .end local v0    # "accessories":[Landroid/hardware/usb/UsbAccessory;
    .end local v1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_3
    iget-object v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->usbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 58
    .restart local v0    # "accessories":[Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_4

    .line 60
    .restart local v1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :goto_2
    if-nez v1, :cond_0

    .line 61
    iput-boolean v3, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->mConnected:Z

    .line 62
    iget-object v2, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->callback:Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;

    invoke-interface {v2}, Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;->onConnectionClosed()V

    .line 63
    invoke-static {}, Lcom/fimi/x8sdk/connect/CommunicationManager;->getCommunicationManager()Lcom/fimi/x8sdk/connect/CommunicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/connect/CommunicationManager;->stopConnectThread()V

    goto :goto_1

    .line 58
    .end local v1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_4
    aget-object v1, v0, v3

    goto :goto_2
.end method

.method public unConnectAOA()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/fimi/x8sdk/connect/CommunicationManager;->getCommunicationManager()Lcom/fimi/x8sdk/connect/CommunicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/connect/CommunicationManager;->stopConnectThread()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->mConnected:Z

    .line 85
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/ConnectAOAManager;->callback:Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;

    invoke-interface {v0}, Lcom/fimi/x8sdk/listener/ConnectStatusListener$IEngineCallback;->onConnectionClosed()V

    .line 86
    return-void
.end method
