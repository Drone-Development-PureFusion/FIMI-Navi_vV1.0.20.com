.class public Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckAiSetGravitationPrameter.java"


# instance fields
.field private autoVideo:I

.field private eccentricWheel:I

.field private ellipseInclinal:I

.field private horizontalDistance:I

.field private riseHeight:I

.field private rotateDirecetion:I

.field private rotateSpeed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getAutoVideo()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->autoVideo:I

    return v0
.end method

.method public getEccentricWheel()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->eccentricWheel:I

    return v0
.end method

.method public getEllipseInclinal()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->ellipseInclinal:I

    return v0
.end method

.method public getHorizontalDistance()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->horizontalDistance:I

    return v0
.end method

.method public getRiseHeight()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->riseHeight:I

    return v0
.end method

.method public getRotateDirecetion()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->rotateDirecetion:I

    return v0
.end method

.method public getRotateSpeed()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->rotateSpeed:I

    return v0
.end method

.method public setAutoVideo(I)V
    .locals 0
    .param p1, "autoVideo"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->autoVideo:I

    .line 88
    return-void
.end method

.method public setEccentricWheel(I)V
    .locals 0
    .param p1, "eccentricWheel"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->eccentricWheel:I

    .line 80
    return-void
.end method

.method public setEllipseInclinal(I)V
    .locals 0
    .param p1, "ellipseInclinal"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->ellipseInclinal:I

    .line 72
    return-void
.end method

.method public setHorizontalDistance(I)V
    .locals 0
    .param p1, "horizontalDistance"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->horizontalDistance:I

    .line 56
    return-void
.end method

.method public setRiseHeight(I)V
    .locals 0
    .param p1, "riseHeight"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->riseHeight:I

    .line 64
    return-void
.end method

.method public setRotateDirecetion(I)V
    .locals 0
    .param p1, "rotateDirecetion"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->rotateDirecetion:I

    .line 40
    return-void
.end method

.method public setRotateSpeed(I)V
    .locals 0
    .param p1, "rotateSpeed"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->rotateSpeed:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckAiSetGravitationPrameter{rotateDirecetion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->rotateDirecetion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotateSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->rotateSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", horizontalDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->horizontalDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", riseHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->riseHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ellipseInclinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->ellipseInclinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eccentricWheel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->eccentricWheel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->autoVideo:I

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
    .line 21
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 22
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->rotateDirecetion:I

    .line 23
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->rotateSpeed:I

    .line 24
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->horizontalDistance:I

    .line 25
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->riseHeight:I

    .line 26
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->ellipseInclinal:I

    .line 27
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->eccentricWheel:I

    .line 28
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;->autoVideo:I

    .line 29
    return-void
.end method
