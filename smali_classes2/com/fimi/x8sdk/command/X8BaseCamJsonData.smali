.class public Lcom/fimi/x8sdk/command/X8BaseCamJsonData;
.super Lcom/fimi/kernel/connect/BaseCommand;
.source "X8BaseCamJsonData.java"


# static fields
.field public static final GROUP_JSON:I = 0xee


# instance fields
.field payLoad:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/fimi/kernel/connect/BaseCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public addUSBHeader([B)[B
    .locals 2
    .param p1, "cmdData"    # [B

    .prologue
    .line 40
    new-instance v0, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;-><init>(I)V

    .line 41
    .local v0, "packet":Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->getUsbPayLoad()Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/fimi/kernel/dataparser/usb/UsbPayLoad;->putBytes([B)V

    .line 42
    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/usb/UsbLinkPacket;->packCmd()[B

    move-result-object v1

    return-object v1
.end method

.method public packCmd()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->payLoad:[B

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->isAOAConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->payLoad:[B

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->addUSBHeader([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->payLoad:[B

    .line 34
    :cond_0
    sget-object v0, Lcom/fimi/kernel/connect/usb/LinkMsgType;->JsonData:Lcom/fimi/kernel/connect/usb/LinkMsgType;

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setLinkMsgType(Lcom/fimi/kernel/connect/usb/LinkMsgType;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setReSendNum(I)V

    .line 36
    const/16 v0, 0xee

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setMsgGroudId(I)V

    .line 37
    iget-object v0, p0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->payLoad:[B

    invoke-virtual {p0, v0}, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->setCmdData([B)V

    .line 38
    return-void
.end method

.method public setPayLoad([B)V
    .locals 0
    .param p1, "payLoad"    # [B

    .prologue
    .line 24
    iput-object p1, p0, Lcom/fimi/x8sdk/command/X8BaseCamJsonData;->payLoad:[B

    .line 26
    return-void
.end method

.method public unpack(Lcom/fimi/kernel/dataparser/milink/LinkPayload;)V
    .locals 0
    .param p1, "payload"    # Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    .prologue
    .line 47
    return-void
.end method
