.class public Lcom/fimi/kernel/dataparser/milink/LinkPacket;
.super Ljava/lang/Object;
.source "LinkPacket.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private MsgId:I

.field private mHeader:Lcom/fimi/kernel/dataparser/milink/Header;

.field msg:[B

.field private msgGroupId:I

.field public payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

.field private personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    .line 63
    new-instance v0, Lcom/fimi/kernel/dataparser/milink/Header;

    invoke-direct {v0}, Lcom/fimi/kernel/dataparser/milink/Header;-><init>()V

    iput-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->mHeader:Lcom/fimi/kernel/dataparser/milink/Header;

    .line 65
    return-void
.end method


# virtual methods
.method public encodePacket()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x14

    .line 72
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->mHeader:Lcom/fimi/kernel/dataparser/milink/Header;

    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {v2}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/dataparser/milink/Header;->setPayloadLen(I)V

    .line 73
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->msg:[B

    .line 74
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->mHeader:Lcom/fimi/kernel/dataparser/milink/Header;

    iget-object v2, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    iget-object v3, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->msg:[B

    invoke-virtual {v2, v3, v4}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->getIntCRC([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/dataparser/milink/Header;->setCrcFrame(I)V

    .line 75
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->mHeader:Lcom/fimi/kernel/dataparser/milink/Header;

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/milink/Header;->onPaket()[B

    move-result-object v0

    .line 76
    .local v0, "headBytes":[B
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->msg:[B

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->msg:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->setMsgGroupId(I)V

    .line 80
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->msg:[B

    const/16 v2, 0x15

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->setMsgId(I)V

    .line 82
    iget-object v1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->msg:[B

    return-object v1
.end method

.method public getHeader()Lcom/fimi/kernel/dataparser/milink/Header;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->mHeader:Lcom/fimi/kernel/dataparser/milink/Header;

    return-object v0
.end method

.method public getMsgGroupId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->msgGroupId:I

    return v0
.end method

.method public getMsgId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->MsgId:I

    return v0
.end method

.method public getPersonalDataCallBack()Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    return-object v0
.end method

.method public getSeq()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->mHeader:Lcom/fimi/kernel/dataparser/milink/Header;

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/milink/Header;->getSeq()I

    move-result v0

    return v0
.end method

.method public setMsgGroupId(I)V
    .locals 0
    .param p1, "msgGroupId"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->msgGroupId:I

    .line 49
    return-void
.end method

.method public setMsgId(I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->MsgId:I

    .line 59
    return-void
.end method

.method public setPersonalDataCallBack(Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;)V
    .locals 0
    .param p1, "personalDataCallBack"    # Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->personalDataCallBack:Lcom/fimi/kernel/connect/interfaces/IPersonalDataCallBack;

    .line 42
    return-void
.end method

.method public setSeq(I)V
    .locals 1
    .param p1, "seq"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->mHeader:Lcom/fimi/kernel/dataparser/milink/Header;

    invoke-virtual {v0, p1}, Lcom/fimi/kernel/dataparser/milink/Header;->setSeq(I)V

    .line 90
    return-void
.end method
