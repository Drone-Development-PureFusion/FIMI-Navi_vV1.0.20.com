.class public Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckRcPlaybackState.java"


# instance fields
.field private buttonState:I

.field private rc0:S

.field private rc1:S

.field private rc2:S

.field private rc3:S

.field private rc4:S

.field private rc5:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonState()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->buttonState:I

    return v0
.end method

.method public getRc0()S
    .locals 1

    .prologue
    .line 18
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc0:S

    return v0
.end method

.method public getRc1()S
    .locals 1

    .prologue
    .line 22
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc1:S

    return v0
.end method

.method public getRc2()S
    .locals 1

    .prologue
    .line 26
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc2:S

    return v0
.end method

.method public getRc3()S
    .locals 1

    .prologue
    .line 30
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc3:S

    return v0
.end method

.method public getRc4()S
    .locals 1

    .prologue
    .line 34
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc4:S

    return v0
.end method

.method public getRc5()S
    .locals 1

    .prologue
    .line 38
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc5:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckRcCilbrationState{, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->buttonState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc0:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc1:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc2:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc3:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc4:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rc5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc5:S

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
    .line 43
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 44
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc0:S

    .line 45
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc1:S

    .line 46
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc2:S

    .line 47
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc3:S

    .line 48
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc4:S

    .line 49
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->rc5:S

    .line 50
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckRcPlaybackState;->buttonState:I

    .line 51
    return-void
.end method
