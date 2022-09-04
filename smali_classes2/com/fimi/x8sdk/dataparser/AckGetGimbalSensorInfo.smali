.class public Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;
.super Lcom/fimi/x8sdk/dataparser/X8BaseMessage;
.source "AckGetGimbalSensorInfo.java"


# instance fields
.field private accelMagnitude:S

.field private accelerationX:S

.field private accelerationY:S

.field private accelerationZ:S

.field private gyroVarianceX:S

.field private gyroVarianceY:S

.field private gyroVarianceZ:S

.field private gyroX:S

.field private gyroY:S

.field private gyroZ:S

.field private motor1HallX:S

.field private motor1HallY:S

.field private motor1IU:S

.field private motor1IV:S

.field private motor2HallX:S

.field private motor2HallY:S

.field private motor2IU:S

.field private motor2IV:S

.field private motor3HallX:S

.field private motor3HallY:S

.field private motor3IU:S

.field private motor3IV:S

.field private temp:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccelMagnitude()S
    .locals 1

    .prologue
    .line 249
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelMagnitude:S

    return v0
.end method

.method public getAccelerationX()S
    .locals 1

    .prologue
    .line 97
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationX:S

    return v0
.end method

.method public getAccelerationY()S
    .locals 1

    .prologue
    .line 105
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationY:S

    return v0
.end method

.method public getAccelerationZ()S
    .locals 1

    .prologue
    .line 113
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationZ:S

    return v0
.end method

.method public getGyroVarianceX()S
    .locals 1

    .prologue
    .line 121
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceX:S

    return v0
.end method

.method public getGyroVarianceY()S
    .locals 1

    .prologue
    .line 129
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceY:S

    return v0
.end method

.method public getGyroVarianceZ()S
    .locals 1

    .prologue
    .line 137
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceZ:S

    return v0
.end method

.method public getGyroX()S
    .locals 1

    .prologue
    .line 73
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroX:S

    return v0
.end method

.method public getGyroY()S
    .locals 1

    .prologue
    .line 81
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroY:S

    return v0
.end method

.method public getGyroZ()S
    .locals 1

    .prologue
    .line 89
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroZ:S

    return v0
.end method

.method public getMotor1HallX()S
    .locals 1

    .prologue
    .line 193
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1HallX:S

    return v0
.end method

.method public getMotor1HallY()S
    .locals 1

    .prologue
    .line 201
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1HallY:S

    return v0
.end method

.method public getMotor1IU()S
    .locals 1

    .prologue
    .line 145
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1IU:S

    return v0
.end method

.method public getMotor1IV()S
    .locals 1

    .prologue
    .line 153
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1IV:S

    return v0
.end method

.method public getMotor2HallX()S
    .locals 1

    .prologue
    .line 209
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2HallX:S

    return v0
.end method

.method public getMotor2HallY()S
    .locals 1

    .prologue
    .line 217
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2HallY:S

    return v0
.end method

.method public getMotor2IU()S
    .locals 1

    .prologue
    .line 161
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2IU:S

    return v0
.end method

.method public getMotor2IV()S
    .locals 1

    .prologue
    .line 169
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2IV:S

    return v0
.end method

.method public getMotor3HallX()S
    .locals 1

    .prologue
    .line 225
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3HallX:S

    return v0
.end method

.method public getMotor3HallY()S
    .locals 1

    .prologue
    .line 233
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3HallY:S

    return v0
.end method

.method public getMotor3IU()S
    .locals 1

    .prologue
    .line 177
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3IU:S

    return v0
.end method

.method public getMotor3IV()S
    .locals 1

    .prologue
    .line 185
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3IV:S

    return v0
.end method

.method public getTemp()S
    .locals 1

    .prologue
    .line 241
    iget-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->temp:S

    return v0
.end method

.method public setAccelMagnitude(S)V
    .locals 0
    .param p1, "accelMagnitude"    # S

    .prologue
    .line 253
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelMagnitude:S

    .line 254
    return-void
.end method

.method public setAccelerationX(S)V
    .locals 0
    .param p1, "accelerationX"    # S

    .prologue
    .line 101
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationX:S

    .line 102
    return-void
.end method

.method public setAccelerationY(S)V
    .locals 0
    .param p1, "accelerationY"    # S

    .prologue
    .line 109
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationY:S

    .line 110
    return-void
.end method

.method public setAccelerationZ(S)V
    .locals 0
    .param p1, "accelerationZ"    # S

    .prologue
    .line 117
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationZ:S

    .line 118
    return-void
.end method

.method public setGyroVarianceX(S)V
    .locals 0
    .param p1, "gyroVarianceX"    # S

    .prologue
    .line 125
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceX:S

    .line 126
    return-void
.end method

.method public setGyroVarianceY(S)V
    .locals 0
    .param p1, "gyroVarianceY"    # S

    .prologue
    .line 133
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceY:S

    .line 134
    return-void
.end method

.method public setGyroVarianceZ(S)V
    .locals 0
    .param p1, "gyroVarianceZ"    # S

    .prologue
    .line 141
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceZ:S

    .line 142
    return-void
.end method

.method public setGyroX(S)V
    .locals 0
    .param p1, "gyroX"    # S

    .prologue
    .line 77
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroX:S

    .line 78
    return-void
.end method

.method public setGyroY(S)V
    .locals 0
    .param p1, "gyroY"    # S

    .prologue
    .line 85
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroY:S

    .line 86
    return-void
.end method

.method public setGyroZ(S)V
    .locals 0
    .param p1, "gyroZ"    # S

    .prologue
    .line 93
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroZ:S

    .line 94
    return-void
.end method

.method public setMotor1HallX(S)V
    .locals 0
    .param p1, "motor1HallX"    # S

    .prologue
    .line 197
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1HallX:S

    .line 198
    return-void
.end method

.method public setMotor1HallY(S)V
    .locals 0
    .param p1, "motor1HallY"    # S

    .prologue
    .line 205
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1HallY:S

    .line 206
    return-void
.end method

.method public setMotor1IU(S)V
    .locals 0
    .param p1, "motor1IU"    # S

    .prologue
    .line 149
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1IU:S

    .line 150
    return-void
.end method

.method public setMotor1IV(S)V
    .locals 0
    .param p1, "motor1IV"    # S

    .prologue
    .line 157
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1IV:S

    .line 158
    return-void
.end method

.method public setMotor2HallX(S)V
    .locals 0
    .param p1, "motor2HallX"    # S

    .prologue
    .line 213
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2HallX:S

    .line 214
    return-void
.end method

.method public setMotor2HallY(S)V
    .locals 0
    .param p1, "motor2HallY"    # S

    .prologue
    .line 221
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2HallY:S

    .line 222
    return-void
.end method

.method public setMotor2IU(S)V
    .locals 0
    .param p1, "motor2IU"    # S

    .prologue
    .line 165
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2IU:S

    .line 166
    return-void
.end method

.method public setMotor2IV(S)V
    .locals 0
    .param p1, "motor2IV"    # S

    .prologue
    .line 173
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2IV:S

    .line 174
    return-void
.end method

.method public setMotor3HallX(S)V
    .locals 0
    .param p1, "motor3HallX"    # S

    .prologue
    .line 229
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3HallX:S

    .line 230
    return-void
.end method

.method public setMotor3HallY(S)V
    .locals 0
    .param p1, "motor3HallY"    # S

    .prologue
    .line 237
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3HallY:S

    .line 238
    return-void
.end method

.method public setMotor3IU(S)V
    .locals 0
    .param p1, "motor3IU"    # S

    .prologue
    .line 181
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3IU:S

    .line 182
    return-void
.end method

.method public setMotor3IV(S)V
    .locals 0
    .param p1, "motor3IV"    # S

    .prologue
    .line 189
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3IV:S

    .line 190
    return-void
.end method

.method public setTemp(S)V
    .locals 0
    .param p1, "temp"    # S

    .prologue
    .line 245
    iput-short p1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->temp:S

    .line 246
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AckGetGimbalSensorInfo{gyroX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroZ:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accelerationX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accelerationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accelerationZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationZ:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroVarianceX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroVarianceY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gyroVarianceZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceZ:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor1IU="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1IU:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor1IV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1IV:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor2IU="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2IU:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor2IV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2IV:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor3IU="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3IU:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor3IV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3IV:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor1HallX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1HallX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor1HallY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1HallY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor2HallX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2HallX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor2HallY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2HallY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor3HallX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3HallX:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motor3HallY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3HallY:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", temp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->temp:S

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
    .line 40
    invoke-super {p0, p1}, Lcom/fimi/x8sdk/dataparser/X8BaseMessage;->decrypt(Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;)V

    .line 41
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroX:S

    .line 42
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroY:S

    .line 43
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroZ:S

    .line 45
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceX:S

    .line 46
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceY:S

    .line 47
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->gyroVarianceZ:S

    .line 49
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationX:S

    .line 50
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationY:S

    .line 51
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelerationZ:S

    .line 53
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1IU:S

    .line 54
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1IV:S

    .line 55
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2IU:S

    .line 56
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2IV:S

    .line 57
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3IU:S

    .line 58
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3IV:S

    .line 60
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1HallX:S

    .line 61
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor1HallY:S

    .line 62
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2HallX:S

    .line 63
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor2HallY:S

    .line 64
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3HallX:S

    .line 65
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->motor3HallY:S

    .line 67
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->temp:S

    .line 68
    invoke-virtual {p1}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPacket4;->getPayLoad4()Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/dataparser/fmlink4/LinkPayLoad4;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/fimi/x8sdk/dataparser/AckGetGimbalSensorInfo;->accelMagnitude:S

    .line 70
    return-void
.end method
