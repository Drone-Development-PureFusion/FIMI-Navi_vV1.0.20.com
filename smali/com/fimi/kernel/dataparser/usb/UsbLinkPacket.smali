.class public Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;
.super Ljava/lang/Object;
.source "UsbLinkPacket.java"


# instance fields
.field type:I

.field usbHeader:Lcom/fimi/kernel/dataparser/usb/UsbHeader;

.field usbPayLoad:Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/fimi/kernel/dataparser/usb/UsbHeader;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/usb/UsbHeader;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->usbHeader:Lcom/fimi/kernel/dataparser/usb/UsbHeader;

    .line 18
    new-instance v0, Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->usbPayLoad:Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;

    .line 19
    iput p1, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->type:I

    .line 20
    return-void
.end method


# virtual methods
.method public getUsbHeader()Lcom/fimi/kernel/dataparser/usb/UsbHeader;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->usbHeader:Lcom/fimi/kernel/dataparser/usb/UsbHeader;

    return-object v0
.end method

.method public getUsbPayLoad()Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->usbPayLoad:Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;

    return-object v0
.end method

.method public packCmd()[B
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 23
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->usbPayLoad:Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;->size()I

    move-result v3

    .line 24
    .local v3, "payloadLen":I
    add-int/lit8 v0, v3, 0x5

    .line 25
    .local v0, "allFrameLen":I
    new-array v2, v0, [B

    .line 26
    .local v2, "packs":[B
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->usbHeader:Lcom/fimi/kernel/dataparser/usb/UsbHeader;

    invoke-virtual {v4, v0}, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->setLen(I)V

    .line 27
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->usbHeader:Lcom/fimi/kernel/dataparser/usb/UsbHeader;

    iget v5, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->type:I

    invoke-virtual {v4, v5}, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->setType(I)V

    .line 28
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->usbHeader:Lcom/fimi/kernel/dataparser/usb/UsbHeader;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->setVer(I)V

    .line 29
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->usbHeader:Lcom/fimi/kernel/dataparser/usb/UsbHeader;

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/usb/UsbHeader;->onPacket()[B

    move-result-object v1

    .line 30
    .local v1, "headerContent":[B
    invoke-static {v1, v6, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v4, p0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->usbPayLoad:Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;

    invoke-virtual {v4}, Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;->getPayloadData()[B

    move-result-object v4

    invoke-static {v4, v6, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    return-object v2
.end method
