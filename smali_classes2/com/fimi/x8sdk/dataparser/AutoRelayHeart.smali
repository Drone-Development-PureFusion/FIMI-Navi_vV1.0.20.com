.class public Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AutoRelayHeart.java"


# instance fields
.field channel:I

.field status:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->channel:I

    return v0
.end method

.method public getImageTranmission()I
    .locals 1

    .prologue
    .line 73
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->status:S

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method public getImageTranmissionTwo()I
    .locals 1

    .prologue
    .line 77
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->status:S

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getStatus()S
    .locals 1

    .prologue
    .line 101
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->status:S

    return v0
.end method

.method public getTxPower()I
    .locals 1

    .prologue
    .line 69
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->status:S

    shr-int/lit8 v0, v0, 0xb

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getX8FpvSignalState()Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->getImageTranmissionTwo()I

    move-result v0

    .line 83
    .local v0, "imageTranmission":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 84
    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->MIDDLE:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    .line 88
    :goto_0
    return-object v1

    .line 85
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 86
    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->STRONG:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    goto :goto_0

    .line 88
    :cond_1
    sget-object v1, Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;->LOW:Lcom/fimi/x8sdk/cmdsenum/X8FpvSignalState;

    goto :goto_0
.end method

.method public setStatus(S)V
    .locals 0
    .param p1, "status"    # S

    .prologue
    .line 105
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->status:S

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRelayHeart{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->status:S

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
    .locals 6
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 35
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->status:S

    .line 36
    const/4 v0, 0x0

    .line 55
    .local v0, "distance":F
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSportState()Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    move-result-object v1

    if-nez v1, :cond_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-static {}, Lcom/fimi/x8sdk/X8FcLogManager;->getInstance()Lcom/fimi/x8sdk/X8FcLogManager;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/fimi/x8sdk/dataparser/AutoRelayHeart;->getPayloadData(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)[B

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/fimi/x8sdk/X8FcLogManager;->cmLogWrite([BJF)V

    .line 62
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getFcSportState()Lcom/fimi/x8sdk/dataparser/AutoFcSportState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoFcSportState;->getHomeDistance()F

    move-result v0

    goto :goto_0
.end method
