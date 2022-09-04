.class public Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckAiScrewPrameter.java"


# instance fields
.field private RTHTostart:I

.field private ciclePeriod:I

.field private distance:I

.field private pev2:I

.field private rev1:I

.field private rev3:I

.field private vertSpeed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getCiclePeriod()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->ciclePeriod:I

    return v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->distance:I

    return v0
.end method

.method public getPev2()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->pev2:I

    return v0
.end method

.method public getRTHTostart()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->RTHTostart:I

    return v0
.end method

.method public getRev1()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->rev1:I

    return v0
.end method

.method public getRev3()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->rev3:I

    return v0
.end method

.method public getVertSpeed()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->vertSpeed:I

    return v0
.end method

.method public setCiclePeriod(I)V
    .locals 0
    .param p1, "ciclePeriod"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->ciclePeriod:I

    .line 82
    return-void
.end method

.method public setDistance(I)V
    .locals 0
    .param p1, "distance"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->distance:I

    .line 34
    return-void
.end method

.method public setPev2(I)V
    .locals 0
    .param p1, "pev2"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->pev2:I

    .line 66
    return-void
.end method

.method public setRTHTostart(I)V
    .locals 0
    .param p1, "RTHTostart"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->RTHTostart:I

    .line 50
    return-void
.end method

.method public setRev1(I)V
    .locals 0
    .param p1, "rev1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->rev1:I

    .line 58
    return-void
.end method

.method public setRev3(I)V
    .locals 0
    .param p1, "rev3"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->rev3:I

    .line 74
    return-void
.end method

.method public setVertSpeed(I)V
    .locals 0
    .param p1, "vertSpeed"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->vertSpeed:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckAiScrewPrameter{distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ciclePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->ciclePeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vertSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->vertSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RTHTostart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->RTHTostart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rev1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->rev1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pev2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->pev2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rev3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->rev3:I

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
    .line 19
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 20
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->distance:I

    .line 21
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->ciclePeriod:I

    .line 22
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->RTHTostart:I

    .line 23
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->rev1:I

    .line 24
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->pev2:I

    .line 25
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;->rev3:I

    .line 27
    return-void
.end method
