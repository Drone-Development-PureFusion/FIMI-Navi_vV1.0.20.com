.class public Lcom/fimi/x8sdk/dataparser/AckGetCaliState;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetCaliState.java"


# instance fields
.field private caliErrorCode:I

.field private caliStep:I

.field private caliType:I

.field private fifthPointPercent:I

.field private firstPointPercent:I

.field private fourthPointPercent:I

.field private secondPointPercent:I

.field private sensorType:I

.field private sixthPointPercent:I

.field private status:I

.field private thridPointPercent:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaliErrorCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliErrorCode:I

    return v0
.end method

.method public getCaliStep()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliStep:I

    return v0
.end method

.method public getCaliType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliType:I

    return v0
.end method

.method public getFifthPointPercent()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->fifthPointPercent:I

    return v0
.end method

.method public getFirstPointPercent()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->firstPointPercent:I

    return v0
.end method

.method public getFourthPointPercent()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->fourthPointPercent:I

    return v0
.end method

.method public getSecondPointPercent()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->secondPointPercent:I

    return v0
.end method

.method public getSensorType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->sensorType:I

    return v0
.end method

.method public getSixthPointPercent()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->sixthPointPercent:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->status:I

    return v0
.end method

.method public getThridPointPercent()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->thridPointPercent:I

    return v0
.end method

.method public setCaliErrorCode(I)V
    .locals 0
    .param p1, "caliErrorCode"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliErrorCode:I

    .line 30
    return-void
.end method

.method public setCaliStep(I)V
    .locals 0
    .param p1, "caliStep"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliStep:I

    .line 54
    return-void
.end method

.method public setCaliType(I)V
    .locals 0
    .param p1, "caliType"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliType:I

    .line 46
    return-void
.end method

.method public setFifthPointPercent(I)V
    .locals 0
    .param p1, "fifthPointPercent"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->fifthPointPercent:I

    .line 103
    return-void
.end method

.method public setFirstPointPercent(I)V
    .locals 0
    .param p1, "firstPointPercent"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->firstPointPercent:I

    .line 71
    return-void
.end method

.method public setFourthPointPercent(I)V
    .locals 0
    .param p1, "fourthPointPercent"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->fourthPointPercent:I

    .line 95
    return-void
.end method

.method public setSecondPointPercent(I)V
    .locals 0
    .param p1, "secondPointPercent"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->secondPointPercent:I

    .line 79
    return-void
.end method

.method public setSensorType(I)V
    .locals 0
    .param p1, "sensorType"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->sensorType:I

    .line 38
    return-void
.end method

.method public setSixthPointPercent(I)V
    .locals 0
    .param p1, "sixthPointPercent"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->sixthPointPercent:I

    .line 111
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->status:I

    .line 62
    return-void
.end method

.method public setThridPointPercent(I)V
    .locals 0
    .param p1, "thridPointPercent"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->thridPointPercent:I

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckGetAircrftCalistate{sensorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->sensorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caliType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caliStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caliErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->firstPointPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->secondPointPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thridPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->thridPointPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fourthPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->fourthPointPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fifthPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->fifthPointPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sixthPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->sixthPointPercent:I

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
    .line 132
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 133
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->sensorType:I

    .line 134
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliType:I

    .line 135
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliStep:I

    .line 136
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->status:I

    .line 137
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->caliErrorCode:I

    .line 140
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->firstPointPercent:I

    .line 141
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->secondPointPercent:I

    .line 142
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->thridPointPercent:I

    .line 143
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->fourthPointPercent:I

    .line 144
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->fifthPointPercent:I

    .line 145
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetCaliState;->sixthPointPercent:I

    .line 146
    return-void
.end method
