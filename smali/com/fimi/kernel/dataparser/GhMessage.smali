.class public Lcom/fimi/kernel/dataparser/GhMessage;
.super Lcom/fimi/kernel/dataparser/milink/LinkMessage;
.source "GhMessage.java"


# instance fields
.field private cmdId:B

.field private commanType:B

.field private rpt:B

.field private version:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/kernel/dataparser/milink/LinkMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public fillPayload(Lcom/fimi/kernel/dataparser/milink/LinkPacket;)V
    .locals 0
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 49
    return-void
.end method

.method public fillPayloadCommon(Lcom/fimi/kernel/dataparser/milink/LinkPacket;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 61
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/GhMessage;->getMsgGroudId()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putByte(B)V

    .line 62
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/GhMessage;->getMsgId()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putByte(B)V

    .line 63
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/GhMessage;->getRpt()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putByte(B)V

    .line 64
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/GhMessage;->getVersion()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putByte(B)V

    .line 65
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/GhMessage;->getCmdId()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putByte(B)V

    .line 66
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {p0}, Lcom/fimi/kernel/dataparser/GhMessage;->getCommanType()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putByte(B)V

    .line 67
    return-void
.end method

.method public getCmdId()B
    .locals 1

    .prologue
    .line 33
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/GhMessage;->cmdId:B

    return v0
.end method

.method public getCommanType()B
    .locals 1

    .prologue
    .line 41
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/GhMessage;->commanType:B

    return v0
.end method

.method public getRpt()B
    .locals 1

    .prologue
    .line 17
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/GhMessage;->rpt:B

    return v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 25
    iget-byte v0, p0, Lcom/fimi/kernel/dataparser/GhMessage;->version:B

    return v0
.end method

.method public setCmdId(B)V
    .locals 0
    .param p1, "cmdId"    # B

    .prologue
    .line 37
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/GhMessage;->cmdId:B

    .line 38
    return-void
.end method

.method public setCommanType(B)V
    .locals 0
    .param p1, "commanType"    # B

    .prologue
    .line 45
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/GhMessage;->commanType:B

    .line 46
    return-void
.end method

.method public setRpt(B)V
    .locals 0
    .param p1, "rpt"    # B

    .prologue
    .line 21
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/GhMessage;->rpt:B

    .line 22
    return-void
.end method

.method public setVersion(B)V
    .locals 0
    .param p1, "version"    # B

    .prologue
    .line 29
    iput-byte p1, p0, Lcom/fimi/kernel/dataparser/GhMessage;->version:B

    .line 30
    return-void
.end method

.method public unpack(Lcom/fimi/kernel/dataparser/milink/LinkPayload;)V
    .locals 0
    .param p1, "payload"    # Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    .prologue
    .line 54
    return-void
.end method

.method public unpackCommon(Lcom/fimi/kernel/dataparser/milink/LinkPayload;)V
    .locals 1
    .param p1, "payload"    # Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->resetIndex()V

    .line 75
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/GhMessage;->setMsgGroudId(I)V

    .line 76
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/GhMessage;->setMsgId(I)V

    .line 77
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/GhMessage;->setRpt(B)V

    .line 78
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/GhMessage;->setVersion(B)V

    .line 79
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/GhMessage;->setCmdId(B)V

    .line 80
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getByte()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fimi/kernel/dataparser/GhMessage;->setCommanType(B)V

    .line 81
    return-void
.end method
