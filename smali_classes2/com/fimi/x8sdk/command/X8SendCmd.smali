.class public Lcom/fimi/x8sdk/command/X8SendCmd;
.super Lcom/fimi/kernel/connect/BaseCommand;
.source "X8SendCmd.java"


# instance fields
.field linkPacket4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fimi/kernel/connect/BaseCommand;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 0
    .param p1, "packet4"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fimi/kernel/connect/BaseCommand;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/fimi/x8sdk/command/X8SendCmd;->linkPacket4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .line 24
    return-void
.end method

.method private addUSBHeader([B)[B
    .locals 2
    .param p1, "cmdData"    # [B

    .prologue
    .line 50
    new-instance v0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;-><init>(I)V

    .line 51
    .local v0, "packet":Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->getUsbPayLoad()Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;->putBytes([B)V

    .line 52
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->packCmd()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addUSBHeader([BI)[B
    .locals 2
    .param p1, "cmdData"    # [B
    .param p2, "type"    # I

    .prologue
    .line 79
    new-instance v0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;

    invoke-direct {v0, p2}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;-><init>(I)V

    .line 80
    .local v0, "packet":Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->getUsbPayLoad()Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;->putBytes([B)V

    .line 81
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->packCmd()[B

    move-result-object v1

    return-object v1
.end method

.method public packSendCmd()V
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/fimi/x8sdk/command/X8SendCmd;->linkPacket4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->packCmd()[B

    move-result-object v0

    .line 40
    .local v0, "cmdData":[B
    sget-object v1, Lcom/fimi/kernel/connect/usb/LinkMsgType;->FmLink4:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    invoke-virtual {p0, v1}, Lcom/fimi/x8sdk/command/X8SendCmd;->setLinkMsgType(Lcom/fimi/kernel/connect/usb/LinkMsgType;)V

    .line 41
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->isAOAConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->addUSBHeader([B)[B

    move-result-object v0

    .line 44
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setCmdData([B)V

    .line 45
    return-void
.end method

.method public packSendCmd(ILcom/fimi/kernel/connect/usb/LinkMsgType;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "linkMsgType"    # Lcom/fimi/kernel/connect/usb/LinkMsgType;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/fimi/x8sdk/command/X8SendCmd;->linkPacket4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->packCmd()[B

    move-result-object v0

    .line 64
    .local v0, "cmdData":[B
    invoke-virtual {p0, p2}, Lcom/fimi/x8sdk/command/X8SendCmd;->setLinkMsgType(Lcom/fimi/kernel/connect/usb/LinkMsgType;)V

    .line 65
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->isAOAConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/fimi/x8sdk/command/X8SendCmd;->addUSBHeader([BI)[B

    move-result-object v0

    .line 68
    :cond_0
    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setCmdData([B)V

    .line 69
    return-void
.end method

.method public setPayLoad([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 32
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setMsgGroudId(I)V

    .line 33
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setMsgId(I)V

    .line 34
    iget-object v0, p0, Lcom/fimi/x8sdk/command/X8SendCmd;->linkPacket4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSeq()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/command/X8SendCmd;->setMsgSeq(I)V

    .line 35
    iget-object v0, p0, Lcom/fimi/x8sdk/command/X8SendCmd;->linkPacket4:Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->putBytes([B)V

    .line 36
    return-void
.end method

.method public unpack(Lcom/fimi/kernel/dataparser/milink/LinkPayload;)V
    .locals 0
    .param p1, "payload"    # Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    .prologue
    .line 87
    return-void
.end method
