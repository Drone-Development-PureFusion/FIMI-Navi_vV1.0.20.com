.class public Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckAiGetGravitationPrameter.java"


# instance fields
.field private eccentricWheel:I

.field private ellipseInclinal:I

.field private horizontalDistance:I

.field private riseHeight:I

.field private rotateDirecetion:I

.field private rotateSpeed:I

.field private startHeight:F

.field private startLat:D

.field private startLng:D

.field private startNosePoint:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getEccentricWheel()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->eccentricWheel:I

    return v0
.end method

.method public getEllipseInclinal()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->ellipseInclinal:I

    return v0
.end method

.method public getHorizontalDistance()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->horizontalDistance:I

    return v0
.end method

.method public getRiseHeight()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->riseHeight:I

    return v0
.end method

.method public getRotateDirecetion()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->rotateDirecetion:I

    return v0
.end method

.method public getRotateSpeed()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->rotateSpeed:I

    return v0
.end method

.method public getStartHeight()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startHeight:F

    return v0
.end method

.method public getStartLat()D
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startLat:D

    return-wide v0
.end method

.method public getStartLng()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startLng:D

    return-wide v0
.end method

.method public getStartNosePoint()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startNosePoint:F

    return v0
.end method

.method public setEccentricWheel(I)V
    .locals 0
    .param p1, "eccentricWheel"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->eccentricWheel:I

    .line 83
    return-void
.end method

.method public setEllipseInclinal(I)V
    .locals 0
    .param p1, "ellipseInclinal"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->ellipseInclinal:I

    .line 75
    return-void
.end method

.method public setHorizontalDistance(I)V
    .locals 0
    .param p1, "horizontalDistance"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->horizontalDistance:I

    .line 59
    return-void
.end method

.method public setRiseHeight(I)V
    .locals 0
    .param p1, "riseHeight"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->riseHeight:I

    .line 67
    return-void
.end method

.method public setRotateDirecetion(I)V
    .locals 0
    .param p1, "rotateDirecetion"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->rotateDirecetion:I

    .line 43
    return-void
.end method

.method public setRotateSpeed(I)V
    .locals 0
    .param p1, "rotateSpeed"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->rotateSpeed:I

    .line 51
    return-void
.end method

.method public setStartHeight(S)V
    .locals 1
    .param p1, "startHeight"    # S

    .prologue
    .line 106
    int-to-float v0, p1

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startHeight:F

    .line 107
    return-void
.end method

.method public setStartLat(D)V
    .locals 1
    .param p1, "startLat"    # D

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startLat:D

    .line 99
    return-void
.end method

.method public setStartLng(D)V
    .locals 1
    .param p1, "startLng"    # D

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startLng:D

    .line 91
    return-void
.end method

.method public setStartNosePoint(S)V
    .locals 1
    .param p1, "startNosePoint"    # S

    .prologue
    .line 114
    int-to-float v0, p1

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startNosePoint:F

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckAiGetGravitationPrameter{rotateDirecetion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->rotateDirecetion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotateSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->rotateSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horizontalDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->horizontalDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", riseHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->riseHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ellipseInclinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->ellipseInclinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eccentricWheel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->eccentricWheel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startLng:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startLat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startLat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startNosePoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startNosePoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unPacket(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V
    .locals 2
    .param p1, "packet"    # Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 25
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->rotateDirecetion:I

    .line 26
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->rotateSpeed:I

    .line 27
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->horizontalDistance:I

    .line 28
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->riseHeight:I

    .line 29
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->ellipseInclinal:I

    .line 30
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->eccentricWheel:I

    .line 31
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startLng:D

    .line 32
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getDouble()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startLat:D

    .line 33
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startHeight:F

    .line 34
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiGetGravitationPrameter;->startNosePoint:F

    .line 35
    return-void
.end method
