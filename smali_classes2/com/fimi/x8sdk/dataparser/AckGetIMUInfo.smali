.class public Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetIMUInfo.java"


# instance fields
.field private accelX:S

.field private accelY:S

.field private accelZ:S

.field private gyroX:S

.field private gyroY:S

.field private gyroZ:S

.field private iMUTempe:S

.field private imuType:S

.field private magX:S

.field private magY:S

.field private magZ:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccelX()S
    .locals 1

    .prologue
    .line 63
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelX:S

    return v0
.end method

.method public getAccelY()S
    .locals 1

    .prologue
    .line 71
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelY:S

    return v0
.end method

.method public getAccelZ()S
    .locals 1

    .prologue
    .line 79
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelZ:S

    return v0
.end method

.method public getGyroX()S
    .locals 1

    .prologue
    .line 39
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroX:S

    return v0
.end method

.method public getGyroY()S
    .locals 1

    .prologue
    .line 47
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroY:S

    return v0
.end method

.method public getGyroZ()S
    .locals 1

    .prologue
    .line 55
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroZ:S

    return v0
.end method

.method public getImuType()S
    .locals 1

    .prologue
    .line 23
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->imuType:S

    return v0
.end method

.method public getMagX()S
    .locals 1

    .prologue
    .line 87
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magX:S

    return v0
.end method

.method public getMagY()S
    .locals 1

    .prologue
    .line 95
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magY:S

    return v0
.end method

.method public getMagZ()S
    .locals 1

    .prologue
    .line 103
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magZ:S

    return v0
.end method

.method public getiMUTempe()S
    .locals 1

    .prologue
    .line 31
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->iMUTempe:S

    return v0
.end method

.method public setAccelX(S)V
    .locals 0
    .param p1, "accelX"    # S

    .prologue
    .line 67
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelX:S

    .line 68
    return-void
.end method

.method public setAccelY(S)V
    .locals 0
    .param p1, "accelY"    # S

    .prologue
    .line 75
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelY:S

    .line 76
    return-void
.end method

.method public setAccelZ(S)V
    .locals 0
    .param p1, "accelZ"    # S

    .prologue
    .line 83
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelZ:S

    .line 84
    return-void
.end method

.method public setGyroX(S)V
    .locals 0
    .param p1, "gyroX"    # S

    .prologue
    .line 43
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroX:S

    .line 44
    return-void
.end method

.method public setGyroY(S)V
    .locals 0
    .param p1, "gyroY"    # S

    .prologue
    .line 51
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroY:S

    .line 52
    return-void
.end method

.method public setGyroZ(S)V
    .locals 0
    .param p1, "gyroZ"    # S

    .prologue
    .line 59
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroZ:S

    .line 60
    return-void
.end method

.method public setImuType(S)V
    .locals 0
    .param p1, "imuType"    # S

    .prologue
    .line 27
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->imuType:S

    .line 28
    return-void
.end method

.method public setMagX(S)V
    .locals 0
    .param p1, "magX"    # S

    .prologue
    .line 91
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magX:S

    .line 92
    return-void
.end method

.method public setMagY(S)V
    .locals 0
    .param p1, "magY"    # S

    .prologue
    .line 99
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magY:S

    .line 100
    return-void
.end method

.method public setMagZ(S)V
    .locals 0
    .param p1, "magZ"    # S

    .prologue
    .line 107
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magZ:S

    .line 108
    return-void
.end method

.method public setiMUTempe(S)V
    .locals 0
    .param p1, "iMUTempe"    # S

    .prologue
    .line 35
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->iMUTempe:S

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckGetIMUInfo{imuType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->imuType:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iMUTempe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->iMUTempe:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroZ:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accelX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accelY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accelZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelZ:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", magX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", magY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", magZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magZ:S

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
    .line 112
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 113
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->imuType:S

    .line 114
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getByte()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->iMUTempe:S

    .line 115
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroX:S

    .line 116
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroY:S

    .line 117
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->gyroZ:S

    .line 118
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelX:S

    .line 119
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelY:S

    .line 120
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->accelZ:S

    .line 121
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magX:S

    .line 122
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magY:S

    .line 123
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetIMUInfo;->magZ:S

    .line 124
    return-void
.end method
