.class public Lcom/fimi/kernel/connect/model/GhBleStateMessage;
.super Lcom/fimi/kernel/dataparser/GhMessage;
.source "GhBleStateMessage.java"


# instance fields
.field private bleState:B

.field private systemState:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/kernel/dataparser/GhMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public fillPayload(Lcom/fimi/kernel/dataparser/milink/LinkPacket;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/milink/LinkPacket;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/fimi/kernel/dataparser/GhMessage;->fillPayload(Lcom/fimi/kernel/dataparser/milink/LinkPacket;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/connect/model/GhBleStateMessage;->fillPayloadCommon(Lcom/fimi/kernel/dataparser/milink/LinkPacket;)V

    .line 38
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {p0}, Lcom/fimi/kernel/connect/model/GhBleStateMessage;->getSystemState()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putByte(B)V

    .line 39
    iget-object v0, p1, Lcom/fimi/kernel/dataparser/milink/LinkPacket;->payload:Lcom/fimi/kernel/dataparser/milink/LinkPayload;

    invoke-virtual {p0}, Lcom/fimi/kernel/connect/model/GhBleStateMessage;->getBleState()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/kernel/dataparser/milink/LinkPayload;->putByte(B)V

    .line 40
    return-void
.end method

.method public getBleState()B
    .locals 1

    .prologue
    .line 27
    iget-byte v0, p0, Lcom/fimi/kernel/connect/model/GhBleStateMessage;->bleState:B

    return v0
.end method

.method public getSystemState()B
    .locals 1

    .prologue
    .line 19
    iget-byte v0, p0, Lcom/fimi/kernel/connect/model/GhBleStateMessage;->systemState:B

    return v0
.end method

.method public setBleState(B)V
    .locals 0
    .param p1, "bleState"    # B

    .prologue
    .line 31
    iput-byte p1, p0, Lcom/fimi/kernel/connect/model/GhBleStateMessage;->bleState:B

    .line 32
    return-void
.end method

.method public setSystemState(B)V
    .locals 0
    .param p1, "systemState"    # B

    .prologue
    .line 23
    iput-byte p1, p0, Lcom/fimi/kernel/connect/model/GhBleStateMessage;->systemState:B

    .line 24
    return-void
.end method
