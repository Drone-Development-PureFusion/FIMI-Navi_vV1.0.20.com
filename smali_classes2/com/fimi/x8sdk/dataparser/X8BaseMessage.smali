.class public abstract Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.super Lcom/fimi/kernel/dataparser/ILinkMessage;
.source "X8BaseMessage.java"


# instance fields
.field private desId:I

.field private groupID:I

.field private msgId:I

.field private msgRpt:I

.field private srcId:I

.field private uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fimi/kernel/dataparser/ILinkMessage;-><init>()V

    return-void
.end method


# virtual methods
.method protected decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getSrcId()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->srcId:I

    .line 31
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getHeader4()Lcom/fimi/kernel/dataparser/fmlink4/Header4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/Header4;->getDestId()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->desId:I

    .line 32
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getVer()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->version:I

    .line 33
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getGroupId()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->groupID:I

    .line 34
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getMsgId()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->msgId:I

    .line 35
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getMsgRpt()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->msgRpt:I

    .line 36
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->setIndex(I)V

    .line 38
    return-void
.end method

.method public getDesId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->desId:I

    return v0
.end method

.method public getGroupID()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->groupID:I

    return v0
.end method

.method public getMsgId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->msgId:I

    return v0
.end method

.method public getMsgRpt()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->msgRpt:I

    return v0
.end method

.method protected getPayloadData(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)[B
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getPayloadData()[B

    move-result-object v0

    return-object v0
.end method

.method public getSrcId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->srcId:I

    return v0
.end method

.method public getUiCallBack()Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->version:I

    return v0
.end method

.method public setDesId(I)V
    .locals 0
    .param p1, "desId"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->desId:I

    .line 62
    return-void
.end method

.method public setGroupID(I)V
    .locals 0
    .param p1, "groupID"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->groupID:I

    .line 79
    return-void
.end method

.method public setMsgId(I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->msgId:I

    .line 87
    return-void
.end method

.method public setMsgRpt(I)V
    .locals 0
    .param p1, "msgRpt"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->msgRpt:I

    .line 46
    return-void
.end method

.method public setSrcId(I)V
    .locals 0
    .param p1, "srcId"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->srcId:I

    .line 54
    return-void
.end method

.method public setUiCallBack(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 0
    .param p1, "uiCallBack"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->uiCallBack:Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .line 105
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->version:I

    .line 70
    return-void
.end method

.method protected showHexData(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 5
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getPayloadData()[B

    move-result-object v0

    .line 112
    .local v0, "byts":[B
    invoke-static {v0}, Lcom/fimi/kernel/dataparser/milink/ByteHexHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "hex":Ljava/lang/String;
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestCmd hex=:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X8BaseMessage{srcId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->srcId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->desId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->groupID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->msgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgRpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->msgRpt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
.end method
