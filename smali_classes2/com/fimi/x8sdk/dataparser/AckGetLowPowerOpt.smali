.class public Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetLowPowerOpt.java"


# instance fields
.field lowPowerOpt:I

.field lowPowerValue:I

.field seriousLowPowerOpt:I

.field seriousLowPowerValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getLowPowerOpt()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->lowPowerOpt:I

    return v0
.end method

.method public getLowPowerValue()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->lowPowerValue:I

    return v0
.end method

.method public getSeriousLowPowerOpt()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->seriousLowPowerOpt:I

    return v0
.end method

.method public getSeriousLowPowerValue()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->seriousLowPowerValue:I

    return v0
.end method

.method public setLowPowerOpt(I)V
    .locals 0
    .param p1, "lowPowerOpt"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->lowPowerOpt:I

    .line 46
    return-void
.end method

.method public setLowPowerValue(I)V
    .locals 0
    .param p1, "lowPowerValue"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->lowPowerValue:I

    .line 30
    return-void
.end method

.method public setSeriousLowPowerOpt(I)V
    .locals 0
    .param p1, "seriousLowPowerOpt"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->seriousLowPowerOpt:I

    .line 54
    return-void
.end method

.method public setSeriousLowPowerValue(I)V
    .locals 0
    .param p1, "seriousLowPowerValue"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->seriousLowPowerValue:I

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckGetLowPowerOpt{lowPowerValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->lowPowerValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seriousLowPowerValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->seriousLowPowerValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowPowerOpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->lowPowerOpt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seriousLowPowerOpt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->seriousLowPowerOpt:I

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
    .line 17
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 18
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->lowPowerValue:I

    .line 19
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->seriousLowPowerValue:I

    .line 20
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->lowPowerOpt:I

    .line 21
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetLowPowerOpt;->seriousLowPowerOpt:I

    .line 22
    return-void
.end method
