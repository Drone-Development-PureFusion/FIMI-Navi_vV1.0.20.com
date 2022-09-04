.class public Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoRelayHeartPlayback.java"


# instance fields
.field channel:I

.field status:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->channel:I

    return v0
.end method

.method public getImageTranmission()I
    .locals 1

    .prologue
    .line 43
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->status:S

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public getImageTranmissionTwo()I
    .locals 1

    .prologue
    .line 47
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->status:S

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getStatus()S
    .locals 1

    .prologue
    .line 71
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->status:S

    return v0
.end method

.method public getTxPower()I
    .locals 1

    .prologue
    .line 39
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->status:S

    shr-int/lit8 v0, v0, 0xb

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getX8FpvSignalState()Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->getImageTranmissionTwo()I

    move-result v0

    .line 53
    .local v0, "imageTranmission":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 54
    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->MIDDLE:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    .line 58
    :goto_0
    return-object v1

    .line 55
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 56
    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->STRONG:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    goto :goto_0

    .line 58
    :cond_1
    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->LOW:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    goto :goto_0
.end method

.method public setStatus(S)V
    .locals 0
    .param p1, "status"    # S

    .prologue
    .line 75
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->status:S

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRelayHeartPlayback{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->status:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 1
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 31
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/flightplayback/AutoRelayHeartPlayback;->status:S

    .line 32
    return-void
.end method
