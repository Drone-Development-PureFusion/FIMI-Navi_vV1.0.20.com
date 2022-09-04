.class public Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetAircrftCalistate.java"


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
    .line 56
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliErrorCode:I

    return v0
.end method

.method public getCaliStep()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliStep:I

    return v0
.end method

.method public getCaliType()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliType:I

    return v0
.end method

.method public getFifthPointPercent()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->fifthPointPercent:I

    return v0
.end method

.method public getFirstPointPercent()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->firstPointPercent:I

    return v0
.end method

.method public getFourthPointPercent()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->fourthPointPercent:I

    return v0
.end method

.method public getSecondPointPercent()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->secondPointPercent:I

    return v0
.end method

.method public getSensorType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->sensorType:I

    return v0
.end method

.method public getSixthPointPercent()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->sixthPointPercent:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->status:I

    return v0
.end method

.method public getThridPointPercent()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->thridPointPercent:I

    return v0
.end method

.method public setCaliErrorCode(I)V
    .locals 0
    .param p1, "caliErrorCode"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliErrorCode:I

    .line 61
    return-void
.end method

.method public setCaliStep(I)V
    .locals 0
    .param p1, "caliStep"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliStep:I

    .line 45
    return-void
.end method

.method public setCaliType(I)V
    .locals 0
    .param p1, "caliType"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliType:I

    .line 37
    return-void
.end method

.method public setFifthPointPercent(I)V
    .locals 0
    .param p1, "fifthPointPercent"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->fifthPointPercent:I

    .line 101
    return-void
.end method

.method public setFirstPointPercent(I)V
    .locals 0
    .param p1, "firstPointPercent"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->firstPointPercent:I

    .line 69
    return-void
.end method

.method public setFourthPointPercent(I)V
    .locals 0
    .param p1, "fourthPointPercent"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->fourthPointPercent:I

    .line 93
    return-void
.end method

.method public setSecondPointPercent(I)V
    .locals 0
    .param p1, "secondPointPercent"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->secondPointPercent:I

    .line 77
    return-void
.end method

.method public setSensorType(I)V
    .locals 0
    .param p1, "sensorType"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->sensorType:I

    .line 29
    return-void
.end method

.method public setSixthPointPercent(I)V
    .locals 0
    .param p1, "sixthPointPercent"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->sixthPointPercent:I

    .line 109
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->status:I

    .line 53
    return-void
.end method

.method public setThridPointPercent(I)V
    .locals 0
    .param p1, "thridPointPercent"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->thridPointPercent:I

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckGetAircrftCalistate{sensorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->sensorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caliType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caliStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliStep:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", caliErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->firstPointPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->secondPointPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thridPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->thridPointPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fourthPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->fourthPointPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fifthPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->fifthPointPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sixthPointPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->sixthPointPercent:I

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
    .line 130
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->sensorType:I

    .line 131
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliType:I

    .line 132
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliStep:I

    .line 133
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->status:I

    .line 134
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getInt()I

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->caliErrorCode:I

    .line 136
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->firstPointPercent:I

    .line 137
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->secondPointPercent:I

    .line 138
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->thridPointPercent:I

    .line 139
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->fourthPointPercent:I

    .line 140
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->fifthPointPercent:I

    .line 141
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    iput v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetAircrftCalistate;->sixthPointPercent:I

    .line 142
    return-void
.end method
