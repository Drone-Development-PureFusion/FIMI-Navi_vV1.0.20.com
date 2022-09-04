.class public Lcom/fimi/x8sdk/command/X8MediaCmd;
.super Lcom/fimi/kernel/connect/BaseCommand;
.source "X8MediaCmd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/fimi/kernel/connect/BaseCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public addUSBHeader([B)[B
    .locals 2
    .param p1, "cmdData"    # [B

    .prologue
    .line 21
    sget-object v1, Lcom/fimi/kernel/connect/usb/LinkMsgType;->MediaDownData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/command/X8MediaCmd;->setLinkMsgType(Lcom/fimi/kernel/connect/usb/LinkMsgType;)V

    .line 22
    new-instance v0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;-><init>(I)V

    .line 23
    .local v0, "packet":Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->getUsbPayLoad()Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;->putBytes([B)V

    .line 24
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->packCmd()[B

    move-result-object v1

    return-object v1
.end method

.method public packCmd([B)V
    .locals 0
    .param p1, "cmdData"    # [B

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/command/X8MediaCmd;->addUSBHeader([B)[B

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/command/X8MediaCmd;->setCmdData([B)V

    .line 18
    return-void
.end method

.method public unpack(Lcom/fimi/kernel/dataparser/milink/LinkPayload;)V
    .locals 0
    .param p1, "payload"    # Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    .prologue
    .line 30
    return-void
.end method
