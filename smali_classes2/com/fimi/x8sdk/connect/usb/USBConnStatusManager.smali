.class public Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;
.super Ljava/lang/Object;
.source "USBConnStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager$UsbStatus;
    }
.end annotation


# static fields
.field private static statusManager:Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;


# instance fields
.field status:Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager$UsbStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;

    invoke-direct {v0}, Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;-><init>()V

    sput-object v0, Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;->statusManager:Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager$UsbStatus;->UnConnect:Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager$UsbStatus;

    iput-object v0, p0, Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;->status:Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager$UsbStatus;

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;->statusManager:Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;

    return-object v0
.end method


# virtual methods
.method public getUsbStatus()Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager$UsbStatus;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;->status:Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager$UsbStatus;

    return-object v0
.end method

.method public setStatus(Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager$UsbStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager$UsbStatus;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager;->status:Lcom/fimi/x8sdk/connect/usb/USBConnStatusManager$UsbStatus;

    .line 32
    return-void
.end method
